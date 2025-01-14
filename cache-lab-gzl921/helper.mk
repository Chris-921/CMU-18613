# Message that students must acknowledge upon 'make submit'
define SUBMIT_MESSAGE
    I affirm that I have complied with the academic
    integrity policy of this course, as defined at
    https://www.cs.cmu.edu/~213/academicintegrity.html [y/N]:
endef
SUBMIT_MESSAGE := $(strip $(SUBMIT_MESSAGE))

# Perl not-quite-one-liner: Read a single character from the terminal,
# not waiting for a Return afterward. Exit successfully if and only if
# that character was 'y' or 'Y'.  Note: raw mode is used so that ^C won't
# kill the program (which would leave the tty in an abnormal mode).
define SUBMIT_ACKNOWLEDGE
    use Term::ReadKey;
    $$_ = "n";
    ReadMode "raw";
    eval { sysread(STDIN,$$_,1) };
    ReadMode "restore";
    print "\n";
    exit (/^[yY]$$/ ? 0 : 1);
endef
SUBMIT_ACKNOWLEDGE := $(strip $(SUBMIT_ACKNOWLEDGE))

# Set course/lab variables
include .labname.mk

#####################################################################
# Validate variables
#####################################################################

ifndef COURSECODE
  $(error COURSECODE is not set)
endif
ifndef HANDIN_FILES
  $(error HANDIN_FILES is not set)
endif
ifndef FORMAT_FILES
  $(error FORMAT_FILES is not set)
endif

ifndef LAB
  $(error LAB is not set)
endif

# Check handin parameters
ifdef HANDIN_TAR
  HANDIN_FILE = $(HANDIN_TAR)
else
  ifneq ($(words $(HANDIN_FILES)),1)
    $(error HANDIN_TAR not set, and HANDIN_FILES has more than one file)
  endif
  HANDIN_FILE = $(HANDIN_FILES)
endif

#####################################################################
# Rules to create and verify handin files
#####################################################################

ifdef HANDIN_TAR

$(HANDIN_TAR): $(HANDIN_FILES)
	tar cvf $@ $^

.PHONY: handin
handin: $(HANDIN_TAR)

else

.PHONY: handin
handin:
	@echo "There is no handin tar. Submit \"$(HANDIN_FILE)' directly."

endif

#####################################################################
# Rules to submit to Autolab
#####################################################################

.PHONY: submit
submit: $(HANDIN_FILE)
	@printf '%s ' "$(SUBMIT_MESSAGE)" | fold -s -w 76
	@perl -e '$(SUBMIT_ACKNOWLEDGE)'
	@/afs/cs/academic/class/18213-m24/bin/autolabv3 submit $(COURSECODE):$(LAB) $<

#####################################################################
# Rules to check code formatting
#####################################################################

CLANG_FORMAT ?= clang-format

.PHONY: format
format: $(FORMAT_FILES)
	$(CLANG_FORMAT) -style=file -i $(FORMAT_FILES)

.PHONY: check-format
check-format: .format-checked

.format-checked: $(FORMAT_FILES)
	CLANG_FORMAT=$(CLANG_FORMAT) LC_ALL=C ./check-format $^
	@touch .format-checked

#####################################################################
# Rules to verify executability of scripts
#####################################################################
# This is to catch and provide immediate help for the common mistake
# of unpacking the handout tarball on a Windows box, thus stripping
# all the executable bits, and then uploading all the files to a
# cluster machine one by one.

HANDOUT_SCRIPTS += check-format

.PHONY: check-scripts
check-scripts:
	@for script in $(HANDOUT_SCRIPTS); do				\
	  if [ ! -x "$$script" ]; then					\
	    scripts_nox="$$scripts_nox$$script ";			\
	  fi;								\
	done;								\
	if [ -n "$$scripts_nox" ]; then					\
	  if [ -d .git ]; then						\
	    thiscmd="these commands";					\
	  else								\
	    thiscmd="this command";					\
	  fi;								\
	  printf '%s\n'							\
	    "*** error: scripts without execute bit: $$scripts_nox"	\
	    "*** To fix this error, run $$thiscmd:"			\
	    "  chmod +x $$scripts_nox";					\
	  if [ "$$thiscmd" = "these commands" ]; then			\
	    printf '%s\n'						\
	      "  git commit -m 'Restore execute bit' -- $$scripts_nox"	\
	      "  git push";						\
	  fi;								\
	  exit 1;							\
	fi

all: check-scripts
format: check-scripts
