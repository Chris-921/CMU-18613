
ctarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000402000 <_init>:
  402000:	f3 0f 1e fa          	endbr64 
  402004:	48 83 ec 08          	sub    $0x8,%rsp
  402008:	48 8b 05 31 3f 00 00 	mov    0x3f31(%rip),%rax        # 405f40 <__gmon_start__@Base>
  40200f:	48 85 c0             	test   %rax,%rax
  402012:	74 02                	je     402016 <_init+0x16>
  402014:	ff d0                	call   *%rax
  402016:	48 83 c4 08          	add    $0x8,%rsp
  40201a:	c3                   	ret    

Disassembly of section .text:

0000000000402020 <_start>:
  402020:	f3 0f 1e fa          	endbr64 
  402024:	31 ed                	xor    %ebp,%ebp
  402026:	49 89 d1             	mov    %rdx,%r9
  402029:	5e                   	pop    %rsi
  40202a:	48 89 e2             	mov    %rsp,%rdx
  40202d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  402031:	50                   	push   %rax
  402032:	54                   	push   %rsp
  402033:	45 31 c0             	xor    %r8d,%r8d
  402036:	31 c9                	xor    %ecx,%ecx
  402038:	48 c7 c7 68 22 40 00 	mov    $0x402268,%rdi
  40203f:	ff 15 5b 3e 00 00    	call   *0x3e5b(%rip)        # 405ea0 <__libc_start_main@GLIBC_2.34>
  402045:	f4                   	hlt    
  402046:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40204d:	00 00 00 

0000000000402050 <_dl_relocate_static_pie>:
  402050:	f3 0f 1e fa          	endbr64 
  402054:	c3                   	ret    
  402055:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40205c:	00 00 00 
  40205f:	90                   	nop

0000000000402060 <deregister_tm_clones>:
  402060:	b8 38 60 40 00       	mov    $0x406038,%eax
  402065:	48 3d 38 60 40 00    	cmp    $0x406038,%rax
  40206b:	74 13                	je     402080 <deregister_tm_clones+0x20>
  40206d:	b8 00 00 00 00       	mov    $0x0,%eax
  402072:	48 85 c0             	test   %rax,%rax
  402075:	74 09                	je     402080 <deregister_tm_clones+0x20>
  402077:	bf 38 60 40 00       	mov    $0x406038,%edi
  40207c:	ff e0                	jmp    *%rax
  40207e:	66 90                	xchg   %ax,%ax
  402080:	c3                   	ret    
  402081:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402088:	00 00 00 00 
  40208c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402090 <register_tm_clones>:
  402090:	be 38 60 40 00       	mov    $0x406038,%esi
  402095:	48 81 ee 38 60 40 00 	sub    $0x406038,%rsi
  40209c:	48 89 f0             	mov    %rsi,%rax
  40209f:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4020a3:	48 c1 f8 03          	sar    $0x3,%rax
  4020a7:	48 01 c6             	add    %rax,%rsi
  4020aa:	48 d1 fe             	sar    %rsi
  4020ad:	74 11                	je     4020c0 <register_tm_clones+0x30>
  4020af:	b8 00 00 00 00       	mov    $0x0,%eax
  4020b4:	48 85 c0             	test   %rax,%rax
  4020b7:	74 07                	je     4020c0 <register_tm_clones+0x30>
  4020b9:	bf 38 60 40 00       	mov    $0x406038,%edi
  4020be:	ff e0                	jmp    *%rax
  4020c0:	c3                   	ret    
  4020c1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4020c8:	00 00 00 00 
  4020cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004020d0 <__do_global_dtors_aux>:
  4020d0:	f3 0f 1e fa          	endbr64 
  4020d4:	80 3d cd 3f 00 00 00 	cmpb   $0x0,0x3fcd(%rip)        # 4060a8 <completed.0>
  4020db:	75 13                	jne    4020f0 <__do_global_dtors_aux+0x20>
  4020dd:	55                   	push   %rbp
  4020de:	48 89 e5             	mov    %rsp,%rbp
  4020e1:	e8 7a ff ff ff       	call   402060 <deregister_tm_clones>
  4020e6:	c6 05 bb 3f 00 00 01 	movb   $0x1,0x3fbb(%rip)        # 4060a8 <completed.0>
  4020ed:	5d                   	pop    %rbp
  4020ee:	c3                   	ret    
  4020ef:	90                   	nop
  4020f0:	c3                   	ret    
  4020f1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4020f8:	00 00 00 00 
  4020fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402100 <frame_dummy>:
  402100:	f3 0f 1e fa          	endbr64 
  402104:	eb 8a                	jmp    402090 <register_tm_clones>

0000000000402106 <initialize_target>:
  402106:	55                   	push   %rbp
  402107:	53                   	push   %rbx
  402108:	48 83 ec 08          	sub    $0x8,%rsp
  40210c:	89 f5                	mov    %esi,%ebp
  40210e:	89 3d b4 3f 00 00    	mov    %edi,0x3fb4(%rip)        # 4060c8 <check_level>
  402114:	8b 1d b6 20 00 00    	mov    0x20b6(%rip),%ebx        # 4041d0 <target_id>
  40211a:	89 df                	mov    %ebx,%edi
  40211c:	67 e8 42 15 00 00    	addr32 call 403664 <gencookie>
  402122:	89 05 98 3f 00 00    	mov    %eax,0x3f98(%rip)        # 4060c0 <cookie>
  402128:	8d 7b 01             	lea    0x1(%rbx),%edi
  40212b:	ff 15 7f 3d 00 00    	call   *0x3d7f(%rip)        # 405eb0 <srandom@GLIBC_2.2.5>
  402131:	ff 15 31 3e 00 00    	call   *0x3e31(%rip)        # 405f68 <random@GLIBC_2.2.5>
  402137:	89 c7                	mov    %eax,%edi
  402139:	67 e8 7f 03 00 00    	addr32 call 4024be <scramble>
  40213f:	89 c3                	mov    %eax,%ebx
  402141:	bf 00 00 00 00       	mov    $0x0,%edi
  402146:	ff 15 0c 3e 00 00    	call   *0x3e0c(%rip)        # 405f58 <time@GLIBC_2.2.5>
  40214c:	89 c7                	mov    %eax,%edi
  40214e:	ff 15 5c 3d 00 00    	call   *0x3d5c(%rip)        # 405eb0 <srandom@GLIBC_2.2.5>
  402154:	85 ed                	test   %ebp,%ebp
  402156:	75 1a                	jne    402172 <initialize_target+0x6c>
  402158:	b8 00 00 00 00       	mov    $0x0,%eax
  40215d:	01 d8                	add    %ebx,%eax
  40215f:	0f b7 c0             	movzwl %ax,%eax
  402162:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
  402169:	89 c0                	mov    %eax,%eax
  40216b:	48 83 c4 08          	add    $0x8,%rsp
  40216f:	5b                   	pop    %rbx
  402170:	5d                   	pop    %rbp
  402171:	c3                   	ret    
  402172:	ff 15 f0 3d 00 00    	call   *0x3df0(%rip)        # 405f68 <random@GLIBC_2.2.5>
  402178:	eb e3                	jmp    40215d <initialize_target+0x57>

000000000040217a <usage>:
  40217a:	50                   	push   %rax
  40217b:	58                   	pop    %rax
  40217c:	48 83 ec 08          	sub    $0x8,%rsp
  402180:	48 89 fa             	mov    %rdi,%rdx
  402183:	80 3d 66 21 00 00 00 	cmpb   $0x0,0x2166(%rip)        # 4042f0 <is_checker>
  40218a:	74 7e                	je     40220a <usage+0x90>
  40218c:	48 8d 35 75 1e 00 00 	lea    0x1e75(%rip),%rsi        # 404008 <_IO_stdin_used+0x8>
  402193:	bf 01 00 00 00       	mov    $0x1,%edi
  402198:	b8 00 00 00 00       	mov    $0x0,%eax
  40219d:	ff 15 f5 3d 00 00    	call   *0x3df5(%rip)        # 405f98 <__printf_chk@GLIBC_2.3.4>
  4021a3:	48 8d 35 86 1e 00 00 	lea    0x1e86(%rip),%rsi        # 404030 <_IO_stdin_used+0x30>
  4021aa:	bf 01 00 00 00       	mov    $0x1,%edi
  4021af:	b8 00 00 00 00       	mov    $0x0,%eax
  4021b4:	ff 15 de 3d 00 00    	call   *0x3dde(%rip)        # 405f98 <__printf_chk@GLIBC_2.3.4>
  4021ba:	48 8d 35 58 1f 00 00 	lea    0x1f58(%rip),%rsi        # 404119 <_IO_stdin_used+0x119>
  4021c1:	bf 01 00 00 00       	mov    $0x1,%edi
  4021c6:	b8 00 00 00 00       	mov    $0x0,%eax
  4021cb:	ff 15 c7 3d 00 00    	call   *0x3dc7(%rip)        # 405f98 <__printf_chk@GLIBC_2.3.4>
  4021d1:	48 8d 35 5c 1f 00 00 	lea    0x1f5c(%rip),%rsi        # 404134 <_IO_stdin_used+0x134>
  4021d8:	bf 01 00 00 00       	mov    $0x1,%edi
  4021dd:	b8 00 00 00 00       	mov    $0x0,%eax
  4021e2:	ff 15 b0 3d 00 00    	call   *0x3db0(%rip)        # 405f98 <__printf_chk@GLIBC_2.3.4>
  4021e8:	48 8d 35 69 1e 00 00 	lea    0x1e69(%rip),%rsi        # 404058 <_IO_stdin_used+0x58>
  4021ef:	bf 01 00 00 00       	mov    $0x1,%edi
  4021f4:	b8 00 00 00 00       	mov    $0x0,%eax
  4021f9:	ff 15 99 3d 00 00    	call   *0x3d99(%rip)        # 405f98 <__printf_chk@GLIBC_2.3.4>
  4021ff:	bf 00 00 00 00       	mov    $0x0,%edi
  402204:	ff 15 be 3d 00 00    	call   *0x3dbe(%rip)        # 405fc8 <exit@GLIBC_2.2.5>
  40220a:	48 8d 35 6f 1e 00 00 	lea    0x1e6f(%rip),%rsi        # 404080 <_IO_stdin_used+0x80>
  402211:	bf 01 00 00 00       	mov    $0x1,%edi
  402216:	b8 00 00 00 00       	mov    $0x0,%eax
  40221b:	ff 15 77 3d 00 00    	call   *0x3d77(%rip)        # 405f98 <__printf_chk@GLIBC_2.3.4>
  402221:	48 8d 35 78 1e 00 00 	lea    0x1e78(%rip),%rsi        # 4040a0 <_IO_stdin_used+0xa0>
  402228:	bf 01 00 00 00       	mov    $0x1,%edi
  40222d:	b8 00 00 00 00       	mov    $0x0,%eax
  402232:	ff 15 60 3d 00 00    	call   *0x3d60(%rip)        # 405f98 <__printf_chk@GLIBC_2.3.4>
  402238:	48 8d 35 89 1e 00 00 	lea    0x1e89(%rip),%rsi        # 4040c8 <_IO_stdin_used+0xc8>
  40223f:	bf 01 00 00 00       	mov    $0x1,%edi
  402244:	b8 00 00 00 00       	mov    $0x0,%eax
  402249:	ff 15 49 3d 00 00    	call   *0x3d49(%rip)        # 405f98 <__printf_chk@GLIBC_2.3.4>
  40224f:	48 8d 35 fb 1e 00 00 	lea    0x1efb(%rip),%rsi        # 404151 <_IO_stdin_used+0x151>
  402256:	bf 01 00 00 00       	mov    $0x1,%edi
  40225b:	b8 00 00 00 00       	mov    $0x0,%eax
  402260:	ff 15 32 3d 00 00    	call   *0x3d32(%rip)        # 405f98 <__printf_chk@GLIBC_2.3.4>
  402266:	eb 97                	jmp    4021ff <usage+0x85>

0000000000402268 <main>:
  402268:	41 56                	push   %r14
  40226a:	41 55                	push   %r13
  40226c:	41 54                	push   %r12
  40226e:	55                   	push   %rbp
  40226f:	53                   	push   %rbx
  402270:	48 81 ec a0 00 00 00 	sub    $0xa0,%rsp
  402277:	89 fd                	mov    %edi,%ebp
  402279:	48 89 f3             	mov    %rsi,%rbx
  40227c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402283:	00 00 
  402285:	48 89 84 24 98 00 00 	mov    %rax,0x98(%rsp)
  40228c:	00 
  40228d:	31 c0                	xor    %eax,%eax
  40228f:	44 0f b6 35 59 20 00 	movzbl 0x2059(%rip),%r14d        # 4042f0 <is_checker>
  402296:	00 
  402297:	45 84 f6             	test   %r14b,%r14b
  40229a:	74 20                	je     4022bc <main+0x54>
  40229c:	4c 8d 25 c8 1e 00 00 	lea    0x1ec8(%rip),%r12        # 40416b <_IO_stdin_used+0x16b>
  4022a3:	48 8b 05 a6 3d 00 00 	mov    0x3da6(%rip),%rax        # 406050 <stdin@GLIBC_2.2.5>
  4022aa:	48 89 05 ff 3d 00 00 	mov    %rax,0x3dff(%rip)        # 4060b0 <global_infile>
  4022b1:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  4022b7:	e9 ad 00 00 00       	jmp    402369 <main+0x101>
  4022bc:	4c 8d 25 b0 1e 00 00 	lea    0x1eb0(%rip),%r12        # 404173 <_IO_stdin_used+0x173>
  4022c3:	eb de                	jmp    4022a3 <main+0x3b>
  4022c5:	48 8b 3b             	mov    (%rbx),%rdi
  4022c8:	e8 ad fe ff ff       	call   40217a <usage>
  4022cd:	48 8d 35 a4 1e 00 00 	lea    0x1ea4(%rip),%rsi        # 404178 <_IO_stdin_used+0x178>
  4022d4:	48 8b 3d a5 3d 00 00 	mov    0x3da5(%rip),%rdi        # 406080 <optarg@GLIBC_2.2.5>
  4022db:	ff 15 c7 3c 00 00    	call   *0x3cc7(%rip)        # 405fa8 <fopen@GLIBC_2.2.5>
  4022e1:	48 89 05 c8 3d 00 00 	mov    %rax,0x3dc8(%rip)        # 4060b0 <global_infile>
  4022e8:	48 85 c0             	test   %rax,%rax
  4022eb:	75 7c                	jne    402369 <main+0x101>
  4022ed:	ff 15 b5 3b 00 00    	call   *0x3bb5(%rip)        # 405ea8 <__errno_location@GLIBC_2.2.5>
  4022f3:	8b 38                	mov    (%rax),%edi
  4022f5:	ff 15 ed 3c 00 00    	call   *0x3ced(%rip)        # 405fe8 <strerror@GLIBC_2.2.5>
  4022fb:	49 89 c0             	mov    %rax,%r8
  4022fe:	48 8b 0d 7b 3d 00 00 	mov    0x3d7b(%rip),%rcx        # 406080 <optarg@GLIBC_2.2.5>
  402305:	48 8d 15 ec 1d 00 00 	lea    0x1dec(%rip),%rdx        # 4040f8 <_IO_stdin_used+0xf8>
  40230c:	be 01 00 00 00       	mov    $0x1,%esi
  402311:	48 8b 3d 88 3d 00 00 	mov    0x3d88(%rip),%rdi        # 4060a0 <stderr@GLIBC_2.2.5>
  402318:	b8 00 00 00 00       	mov    $0x0,%eax
  40231d:	ff 15 b5 3c 00 00    	call   *0x3cb5(%rip)        # 405fd8 <__fprintf_chk@GLIBC_2.3.4>
  402323:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
  40232a:	00 
  40232b:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402332:	00 00 
  402334:	0f 85 7e 01 00 00    	jne    4024b8 <main+0x250>
  40233a:	b8 01 00 00 00       	mov    $0x1,%eax
  40233f:	48 81 c4 a0 00 00 00 	add    $0xa0,%rsp
  402346:	5b                   	pop    %rbx
  402347:	5d                   	pop    %rbp
  402348:	41 5c                	pop    %r12
  40234a:	41 5d                	pop    %r13
  40234c:	41 5e                	pop    %r14
  40234e:	c3                   	ret    
  40234f:	ba 0a 00 00 00       	mov    $0xa,%edx
  402354:	be 00 00 00 00       	mov    $0x0,%esi
  402359:	48 8b 3d 20 3d 00 00 	mov    0x3d20(%rip),%rdi        # 406080 <optarg@GLIBC_2.2.5>
  402360:	ff 15 e2 3b 00 00    	call   *0x3be2(%rip)        # 405f48 <strtol@GLIBC_2.2.5>
  402366:	41 89 c5             	mov    %eax,%r13d
  402369:	4c 89 e2             	mov    %r12,%rdx
  40236c:	48 89 de             	mov    %rbx,%rsi
  40236f:	89 ef                	mov    %ebp,%edi
  402371:	ff 15 41 3c 00 00    	call   *0x3c41(%rip)        # 405fb8 <getopt@GLIBC_2.2.5>
  402377:	3c ff                	cmp    $0xff,%al
  402379:	74 66                	je     4023e1 <main+0x179>
  40237b:	0f be c8             	movsbl %al,%ecx
  40237e:	83 e8 68             	sub    $0x68,%eax
  402381:	3c 0c                	cmp    $0xc,%al
  402383:	77 3b                	ja     4023c0 <main+0x158>
  402385:	0f b6 c0             	movzbl %al,%eax
  402388:	48 8d 15 0d 1e 00 00 	lea    0x1e0d(%rip),%rdx        # 40419c <_IO_stdin_used+0x19c>
  40238f:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  402393:	48 01 d0             	add    %rdx,%rax
  402396:	ff e0                	jmp    *%rax
  402398:	c6 05 71 3c 00 00 00 	movb   $0x0,0x3c71(%rip)        # 406010 <notify>
  40239f:	eb c8                	jmp    402369 <main+0x101>
  4023a1:	ba 0a 00 00 00       	mov    $0xa,%edx
  4023a6:	be 00 00 00 00       	mov    $0x0,%esi
  4023ab:	48 8b 3d ce 3c 00 00 	mov    0x3cce(%rip),%rdi        # 406080 <optarg@GLIBC_2.2.5>
  4023b2:	ff 15 08 3c 00 00    	call   *0x3c08(%rip)        # 405fc0 <strtoul@GLIBC_2.2.5>
  4023b8:	89 05 6a 3c 00 00    	mov    %eax,0x3c6a(%rip)        # 406028 <checker_timeout>
  4023be:	eb a9                	jmp    402369 <main+0x101>
  4023c0:	89 ca                	mov    %ecx,%edx
  4023c2:	48 8d 35 b1 1d 00 00 	lea    0x1db1(%rip),%rsi        # 40417a <_IO_stdin_used+0x17a>
  4023c9:	bf 01 00 00 00       	mov    $0x1,%edi
  4023ce:	b8 00 00 00 00       	mov    $0x0,%eax
  4023d3:	ff 15 bf 3b 00 00    	call   *0x3bbf(%rip)        # 405f98 <__printf_chk@GLIBC_2.3.4>
  4023d9:	48 8b 3b             	mov    (%rbx),%rdi
  4023dc:	e8 99 fd ff ff       	call   40217a <usage>
  4023e1:	c7 84 24 88 00 00 00 	movl   $0xc0000000,0x88(%rsp)
  4023e8:	00 00 00 c0 
  4023ec:	48 c7 c0 48 32 40 00 	mov    $0x403248,%rax
  4023f3:	48 89 04 24          	mov    %rax,(%rsp)
  4023f7:	48 89 e3             	mov    %rsp,%rbx
  4023fa:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  4023ff:	ff 15 33 3b 00 00    	call   *0x3b33(%rip)        # 405f38 <sigemptyset@GLIBC_2.2.5>
  402405:	ba 00 00 00 00       	mov    $0x0,%edx
  40240a:	48 89 de             	mov    %rbx,%rsi
  40240d:	bf 0b 00 00 00       	mov    $0xb,%edi
  402412:	ff 15 b0 3a 00 00    	call   *0x3ab0(%rip)        # 405ec8 <sigaction@GLIBC_2.2.5>
  402418:	ba 00 00 00 00       	mov    $0x0,%edx
  40241d:	48 89 de             	mov    %rbx,%rsi
  402420:	bf 07 00 00 00       	mov    $0x7,%edi
  402425:	ff 15 9d 3a 00 00    	call   *0x3a9d(%rip)        # 405ec8 <sigaction@GLIBC_2.2.5>
  40242b:	ba 00 00 00 00       	mov    $0x0,%edx
  402430:	48 89 de             	mov    %rbx,%rsi
  402433:	bf 04 00 00 00       	mov    $0x4,%edi
  402438:	ff 15 8a 3a 00 00    	call   *0x3a8a(%rip)        # 405ec8 <sigaction@GLIBC_2.2.5>
  40243e:	ba 00 00 00 00       	mov    $0x0,%edx
  402443:	48 89 de             	mov    %rbx,%rsi
  402446:	bf 08 00 00 00       	mov    $0x8,%edi
  40244b:	ff 15 77 3a 00 00    	call   *0x3a77(%rip)        # 405ec8 <sigaction@GLIBC_2.2.5>
  402451:	ba 00 00 00 00       	mov    $0x0,%edx
  402456:	48 89 de             	mov    %rbx,%rsi
  402459:	bf 0e 00 00 00       	mov    $0xe,%edi
  40245e:	ff 15 64 3a 00 00    	call   *0x3a64(%rip)        # 405ec8 <sigaction@GLIBC_2.2.5>
  402464:	0f b6 1d 6a 1d 00 00 	movzbl 0x1d6a(%rip),%ebx        # 4041d5 <randomize_stack>
  40246b:	0f b6 f3             	movzbl %bl,%esi
  40246e:	44 89 ef             	mov    %r13d,%edi
  402471:	e8 90 fc ff ff       	call   402106 <initialize_target>
  402476:	48 89 c5             	mov    %rax,%rbp
  402479:	8b 15 41 3c 00 00    	mov    0x3c41(%rip),%edx        # 4060c0 <cookie>
  40247f:	48 8d 35 07 1d 00 00 	lea    0x1d07(%rip),%rsi        # 40418d <_IO_stdin_used+0x18d>
  402486:	bf 01 00 00 00       	mov    $0x1,%edi
  40248b:	b8 00 00 00 00       	mov    $0x0,%eax
  402490:	ff 15 02 3b 00 00    	call   *0x3b02(%rip)        # 405f98 <__printf_chk@GLIBC_2.3.4>
  402496:	45 84 f6             	test   %r14b,%r14b
  402499:	75 0f                	jne    4024aa <main+0x242>
  40249b:	83 f3 01             	xor    $0x1,%ebx
  40249e:	0f b6 fb             	movzbl %bl,%edi
  4024a1:	48 89 ee             	mov    %rbp,%rsi
  4024a4:	67 e8 e5 0f 00 00    	addr32 call 40348f <launch>
  4024aa:	8b 3d 78 3b 00 00    	mov    0x3b78(%rip),%edi        # 406028 <checker_timeout>
  4024b0:	ff 15 6a 3a 00 00    	call   *0x3a6a(%rip)        # 405f20 <alarm@GLIBC_2.2.5>
  4024b6:	eb e3                	jmp    40249b <main+0x233>
  4024b8:	ff 15 2a 3a 00 00    	call   *0x3a2a(%rip)        # 405ee8 <__stack_chk_fail@GLIBC_2.4>

00000000004024be <scramble>:
  4024be:	48 83 ec 38          	sub    $0x38,%rsp
  4024c2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4024c9:	00 00 
  4024cb:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  4024d0:	31 c0                	xor    %eax,%eax
  4024d2:	eb 10                	jmp    4024e4 <scramble+0x26>
  4024d4:	69 d0 45 32 00 00    	imul   $0x3245,%eax,%edx
  4024da:	01 fa                	add    %edi,%edx
  4024dc:	89 c1                	mov    %eax,%ecx
  4024de:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
  4024e1:	83 c0 01             	add    $0x1,%eax
  4024e4:	83 f8 09             	cmp    $0x9,%eax
  4024e7:	76 eb                	jbe    4024d4 <scramble+0x16>
  4024e9:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4024ed:	69 c0 fb 29 00 00    	imul   $0x29fb,%eax,%eax
  4024f3:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4024f7:	8b 04 24             	mov    (%rsp),%eax
  4024fa:	69 c0 b5 cc 00 00    	imul   $0xccb5,%eax,%eax
  402500:	89 04 24             	mov    %eax,(%rsp)
  402503:	8b 44 24 18          	mov    0x18(%rsp),%eax
  402507:	69 c0 ee a8 00 00    	imul   $0xa8ee,%eax,%eax
  40250d:	89 44 24 18          	mov    %eax,0x18(%rsp)
  402511:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  402515:	69 c0 d2 5d 00 00    	imul   $0x5dd2,%eax,%eax
  40251b:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40251f:	8b 44 24 04          	mov    0x4(%rsp),%eax
  402523:	69 c0 72 b1 00 00    	imul   $0xb172,%eax,%eax
  402529:	89 44 24 04          	mov    %eax,0x4(%rsp)
  40252d:	8b 44 24 14          	mov    0x14(%rsp),%eax
  402531:	69 c0 cb 82 00 00    	imul   $0x82cb,%eax,%eax
  402537:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40253b:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40253f:	69 c0 1e 02 00 00    	imul   $0x21e,%eax,%eax
  402545:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  402549:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40254d:	69 c0 68 c4 00 00    	imul   $0xc468,%eax,%eax
  402553:	89 44 24 14          	mov    %eax,0x14(%rsp)
  402557:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40255b:	69 c0 3e 0c 00 00    	imul   $0xc3e,%eax,%eax
  402561:	89 44 24 08          	mov    %eax,0x8(%rsp)
  402565:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  402569:	69 c0 85 24 00 00    	imul   $0x2485,%eax,%eax
  40256f:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  402573:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  402577:	69 c0 39 de 00 00    	imul   $0xde39,%eax,%eax
  40257d:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  402581:	8b 44 24 04          	mov    0x4(%rsp),%eax
  402585:	69 c0 40 7a 00 00    	imul   $0x7a40,%eax,%eax
  40258b:	89 44 24 04          	mov    %eax,0x4(%rsp)
  40258f:	8b 44 24 18          	mov    0x18(%rsp),%eax
  402593:	69 c0 e8 84 00 00    	imul   $0x84e8,%eax,%eax
  402599:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40259d:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4025a1:	69 c0 aa 8f 00 00    	imul   $0x8faa,%eax,%eax
  4025a7:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4025ab:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4025af:	69 c0 d0 51 00 00    	imul   $0x51d0,%eax,%eax
  4025b5:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4025b9:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4025bd:	69 c0 39 7d 00 00    	imul   $0x7d39,%eax,%eax
  4025c3:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4025c7:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4025cb:	69 c0 03 3b 00 00    	imul   $0x3b03,%eax,%eax
  4025d1:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4025d5:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4025d9:	69 c0 3a dc 00 00    	imul   $0xdc3a,%eax,%eax
  4025df:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4025e3:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4025e7:	69 c0 3e 28 00 00    	imul   $0x283e,%eax,%eax
  4025ed:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4025f1:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4025f5:	69 c0 6f 4a 00 00    	imul   $0x4a6f,%eax,%eax
  4025fb:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4025ff:	8b 04 24             	mov    (%rsp),%eax
  402602:	69 c0 b4 9b 00 00    	imul   $0x9bb4,%eax,%eax
  402608:	89 04 24             	mov    %eax,(%rsp)
  40260b:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40260f:	69 c0 70 11 00 00    	imul   $0x1170,%eax,%eax
  402615:	89 44 24 18          	mov    %eax,0x18(%rsp)
  402619:	8b 04 24             	mov    (%rsp),%eax
  40261c:	69 c0 53 5e 00 00    	imul   $0x5e53,%eax,%eax
  402622:	89 04 24             	mov    %eax,(%rsp)
  402625:	8b 44 24 10          	mov    0x10(%rsp),%eax
  402629:	69 c0 0d f6 00 00    	imul   $0xf60d,%eax,%eax
  40262f:	89 44 24 10          	mov    %eax,0x10(%rsp)
  402633:	8b 44 24 18          	mov    0x18(%rsp),%eax
  402637:	69 c0 13 8b 00 00    	imul   $0x8b13,%eax,%eax
  40263d:	89 44 24 18          	mov    %eax,0x18(%rsp)
  402641:	8b 44 24 20          	mov    0x20(%rsp),%eax
  402645:	69 c0 99 fb 00 00    	imul   $0xfb99,%eax,%eax
  40264b:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40264f:	8b 44 24 24          	mov    0x24(%rsp),%eax
  402653:	69 c0 42 0f 00 00    	imul   $0xf42,%eax,%eax
  402659:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40265d:	8b 44 24 08          	mov    0x8(%rsp),%eax
  402661:	69 c0 eb 07 00 00    	imul   $0x7eb,%eax,%eax
  402667:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40266b:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40266f:	69 c0 ed 43 00 00    	imul   $0x43ed,%eax,%eax
  402675:	89 44 24 18          	mov    %eax,0x18(%rsp)
  402679:	8b 44 24 24          	mov    0x24(%rsp),%eax
  40267d:	69 c0 1e df 00 00    	imul   $0xdf1e,%eax,%eax
  402683:	89 44 24 24          	mov    %eax,0x24(%rsp)
  402687:	8b 44 24 24          	mov    0x24(%rsp),%eax
  40268b:	69 c0 3d 3c 00 00    	imul   $0x3c3d,%eax,%eax
  402691:	89 44 24 24          	mov    %eax,0x24(%rsp)
  402695:	8b 44 24 18          	mov    0x18(%rsp),%eax
  402699:	69 c0 89 11 00 00    	imul   $0x1189,%eax,%eax
  40269f:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4026a3:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4026a7:	69 c0 46 a6 00 00    	imul   $0xa646,%eax,%eax
  4026ad:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4026b1:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4026b5:	69 c0 31 5b 00 00    	imul   $0x5b31,%eax,%eax
  4026bb:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4026bf:	8b 04 24             	mov    (%rsp),%eax
  4026c2:	69 c0 cf 27 00 00    	imul   $0x27cf,%eax,%eax
  4026c8:	89 04 24             	mov    %eax,(%rsp)
  4026cb:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4026cf:	69 c0 35 a8 00 00    	imul   $0xa835,%eax,%eax
  4026d5:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4026d9:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4026dd:	69 c0 da 72 00 00    	imul   $0x72da,%eax,%eax
  4026e3:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4026e7:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4026eb:	69 c0 56 61 00 00    	imul   $0x6156,%eax,%eax
  4026f1:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4026f5:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4026f9:	69 c0 7d 8f 00 00    	imul   $0x8f7d,%eax,%eax
  4026ff:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  402703:	8b 44 24 18          	mov    0x18(%rsp),%eax
  402707:	69 c0 c0 3b 00 00    	imul   $0x3bc0,%eax,%eax
  40270d:	89 44 24 18          	mov    %eax,0x18(%rsp)
  402711:	8b 44 24 24          	mov    0x24(%rsp),%eax
  402715:	69 c0 f6 71 00 00    	imul   $0x71f6,%eax,%eax
  40271b:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40271f:	8b 04 24             	mov    (%rsp),%eax
  402722:	69 c0 dc 83 00 00    	imul   $0x83dc,%eax,%eax
  402728:	89 04 24             	mov    %eax,(%rsp)
  40272b:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40272f:	69 c0 32 ad 00 00    	imul   $0xad32,%eax,%eax
  402735:	89 44 24 20          	mov    %eax,0x20(%rsp)
  402739:	8b 44 24 24          	mov    0x24(%rsp),%eax
  40273d:	69 c0 62 15 00 00    	imul   $0x1562,%eax,%eax
  402743:	89 44 24 24          	mov    %eax,0x24(%rsp)
  402747:	8b 04 24             	mov    (%rsp),%eax
  40274a:	69 c0 5e 23 00 00    	imul   $0x235e,%eax,%eax
  402750:	89 04 24             	mov    %eax,(%rsp)
  402753:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  402757:	69 c0 dc 86 00 00    	imul   $0x86dc,%eax,%eax
  40275d:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  402761:	8b 44 24 14          	mov    0x14(%rsp),%eax
  402765:	69 c0 d7 50 00 00    	imul   $0x50d7,%eax,%eax
  40276b:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40276f:	8b 44 24 24          	mov    0x24(%rsp),%eax
  402773:	69 c0 db d6 00 00    	imul   $0xd6db,%eax,%eax
  402779:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40277d:	8b 44 24 10          	mov    0x10(%rsp),%eax
  402781:	69 c0 28 86 00 00    	imul   $0x8628,%eax,%eax
  402787:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40278b:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40278f:	69 c0 a2 c5 00 00    	imul   $0xc5a2,%eax,%eax
  402795:	89 44 24 20          	mov    %eax,0x20(%rsp)
  402799:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40279d:	69 c0 ad d7 00 00    	imul   $0xd7ad,%eax,%eax
  4027a3:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4027a7:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4027ab:	69 c0 7b 71 00 00    	imul   $0x717b,%eax,%eax
  4027b1:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4027b5:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4027b9:	69 c0 7c 27 00 00    	imul   $0x277c,%eax,%eax
  4027bf:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4027c3:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4027c7:	69 c0 b5 1b 00 00    	imul   $0x1bb5,%eax,%eax
  4027cd:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4027d1:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4027d5:	69 c0 35 2a 00 00    	imul   $0x2a35,%eax,%eax
  4027db:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4027df:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4027e3:	69 c0 8a d1 00 00    	imul   $0xd18a,%eax,%eax
  4027e9:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4027ed:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4027f1:	69 c0 ce 8e 00 00    	imul   $0x8ece,%eax,%eax
  4027f7:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4027fb:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4027ff:	69 c0 63 1d 00 00    	imul   $0x1d63,%eax,%eax
  402805:	89 44 24 18          	mov    %eax,0x18(%rsp)
  402809:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40280d:	69 c0 2e e1 00 00    	imul   $0xe12e,%eax,%eax
  402813:	89 44 24 14          	mov    %eax,0x14(%rsp)
  402817:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40281b:	69 c0 1f 2d 00 00    	imul   $0x2d1f,%eax,%eax
  402821:	89 44 24 20          	mov    %eax,0x20(%rsp)
  402825:	8b 44 24 18          	mov    0x18(%rsp),%eax
  402829:	69 c0 45 27 00 00    	imul   $0x2745,%eax,%eax
  40282f:	89 44 24 18          	mov    %eax,0x18(%rsp)
  402833:	8b 44 24 20          	mov    0x20(%rsp),%eax
  402837:	69 c0 27 64 00 00    	imul   $0x6427,%eax,%eax
  40283d:	89 44 24 20          	mov    %eax,0x20(%rsp)
  402841:	8b 44 24 20          	mov    0x20(%rsp),%eax
  402845:	69 c0 61 4c 00 00    	imul   $0x4c61,%eax,%eax
  40284b:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40284f:	8b 44 24 10          	mov    0x10(%rsp),%eax
  402853:	69 c0 3a 6f 00 00    	imul   $0x6f3a,%eax,%eax
  402859:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40285d:	8b 44 24 10          	mov    0x10(%rsp),%eax
  402861:	69 c0 0f 6d 00 00    	imul   $0x6d0f,%eax,%eax
  402867:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40286b:	8b 04 24             	mov    (%rsp),%eax
  40286e:	69 c0 82 80 00 00    	imul   $0x8082,%eax,%eax
  402874:	89 04 24             	mov    %eax,(%rsp)
  402877:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40287b:	69 c0 b3 a2 00 00    	imul   $0xa2b3,%eax,%eax
  402881:	89 44 24 14          	mov    %eax,0x14(%rsp)
  402885:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  402889:	69 c0 43 8f 00 00    	imul   $0x8f43,%eax,%eax
  40288f:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  402893:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  402897:	69 c0 cf c4 00 00    	imul   $0xc4cf,%eax,%eax
  40289d:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4028a1:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4028a5:	69 c0 28 81 00 00    	imul   $0x8128,%eax,%eax
  4028ab:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4028af:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4028b3:	69 c0 6e 02 00 00    	imul   $0x26e,%eax,%eax
  4028b9:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4028bd:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4028c1:	69 c0 2f 8b 00 00    	imul   $0x8b2f,%eax,%eax
  4028c7:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4028cb:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4028cf:	69 c0 19 a8 00 00    	imul   $0xa819,%eax,%eax
  4028d5:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4028d9:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4028dd:	69 c0 3d cd 00 00    	imul   $0xcd3d,%eax,%eax
  4028e3:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4028e7:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4028eb:	69 c0 57 db 00 00    	imul   $0xdb57,%eax,%eax
  4028f1:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4028f5:	8b 04 24             	mov    (%rsp),%eax
  4028f8:	69 c0 d4 8d 00 00    	imul   $0x8dd4,%eax,%eax
  4028fe:	89 04 24             	mov    %eax,(%rsp)
  402901:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  402905:	69 c0 59 ae 00 00    	imul   $0xae59,%eax,%eax
  40290b:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40290f:	8b 44 24 18          	mov    0x18(%rsp),%eax
  402913:	69 c0 b8 7a 00 00    	imul   $0x7ab8,%eax,%eax
  402919:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40291d:	8b 04 24             	mov    (%rsp),%eax
  402920:	69 c0 fe 2c 00 00    	imul   $0x2cfe,%eax,%eax
  402926:	89 04 24             	mov    %eax,(%rsp)
  402929:	8b 44 24 24          	mov    0x24(%rsp),%eax
  40292d:	69 c0 44 cd 00 00    	imul   $0xcd44,%eax,%eax
  402933:	89 44 24 24          	mov    %eax,0x24(%rsp)
  402937:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40293b:	69 c0 ce 1e 00 00    	imul   $0x1ece,%eax,%eax
  402941:	89 44 24 18          	mov    %eax,0x18(%rsp)
  402945:	8b 44 24 24          	mov    0x24(%rsp),%eax
  402949:	69 c0 c9 de 00 00    	imul   $0xdec9,%eax,%eax
  40294f:	89 44 24 24          	mov    %eax,0x24(%rsp)
  402953:	8b 04 24             	mov    (%rsp),%eax
  402956:	69 c0 c4 3f 00 00    	imul   $0x3fc4,%eax,%eax
  40295c:	89 04 24             	mov    %eax,(%rsp)
  40295f:	8b 44 24 24          	mov    0x24(%rsp),%eax
  402963:	69 c0 b0 8b 00 00    	imul   $0x8bb0,%eax,%eax
  402969:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40296d:	8b 44 24 24          	mov    0x24(%rsp),%eax
  402971:	69 c0 05 19 00 00    	imul   $0x1905,%eax,%eax
  402977:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40297b:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40297f:	69 c0 97 f3 00 00    	imul   $0xf397,%eax,%eax
  402985:	89 44 24 18          	mov    %eax,0x18(%rsp)
  402989:	8b 04 24             	mov    (%rsp),%eax
  40298c:	69 c0 8b 5f 00 00    	imul   $0x5f8b,%eax,%eax
  402992:	89 04 24             	mov    %eax,(%rsp)
  402995:	8b 04 24             	mov    (%rsp),%eax
  402998:	69 c0 b1 ac 00 00    	imul   $0xacb1,%eax,%eax
  40299e:	89 04 24             	mov    %eax,(%rsp)
  4029a1:	8b 04 24             	mov    (%rsp),%eax
  4029a4:	69 c0 58 27 00 00    	imul   $0x2758,%eax,%eax
  4029aa:	89 04 24             	mov    %eax,(%rsp)
  4029ad:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4029b1:	69 c0 ec 90 00 00    	imul   $0x90ec,%eax,%eax
  4029b7:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4029bb:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4029bf:	69 c0 4b 74 00 00    	imul   $0x744b,%eax,%eax
  4029c5:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4029c9:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4029cd:	69 c0 4b 05 00 00    	imul   $0x54b,%eax,%eax
  4029d3:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4029d7:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4029db:	69 c0 bb 10 00 00    	imul   $0x10bb,%eax,%eax
  4029e1:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4029e5:	b8 00 00 00 00       	mov    $0x0,%eax
  4029ea:	ba 00 00 00 00       	mov    $0x0,%edx
  4029ef:	eb 0a                	jmp    4029fb <scramble+0x53d>
  4029f1:	89 c1                	mov    %eax,%ecx
  4029f3:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
  4029f6:	01 ca                	add    %ecx,%edx
  4029f8:	83 c0 01             	add    $0x1,%eax
  4029fb:	83 f8 09             	cmp    $0x9,%eax
  4029fe:	76 f1                	jbe    4029f1 <scramble+0x533>
  402a00:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  402a05:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402a0c:	00 00 
  402a0e:	75 07                	jne    402a17 <scramble+0x559>
  402a10:	89 d0                	mov    %edx,%eax
  402a12:	48 83 c4 38          	add    $0x38,%rsp
  402a16:	c3                   	ret    
  402a17:	ff 15 cb 34 00 00    	call   *0x34cb(%rip)        # 405ee8 <__stack_chk_fail@GLIBC_2.4>

0000000000402a1d <read_and_process_line>:
  402a1d:	55                   	push   %rbp
  402a1e:	53                   	push   %rbx
  402a1f:	48 83 ec 18          	sub    $0x18,%rsp
  402a23:	48 89 fd             	mov    %rdi,%rbp
  402a26:	48 89 e3             	mov    %rsp,%rbx
  402a29:	eb 06                	jmp    402a31 <read_and_process_line+0x14>
  402a2b:	88 03                	mov    %al,(%rbx)
  402a2d:	48 8d 5b 01          	lea    0x1(%rbx),%rbx
  402a31:	48 89 ef             	mov    %rbp,%rdi
  402a34:	ff 15 be 35 00 00    	call   *0x35be(%rip)        # 405ff8 <getc@GLIBC_2.2.5>
  402a3a:	83 f8 ff             	cmp    $0xffffffff,%eax
  402a3d:	74 05                	je     402a44 <read_and_process_line+0x27>
  402a3f:	83 f8 0a             	cmp    $0xa,%eax
  402a42:	75 e7                	jne    402a2b <read_and_process_line+0xe>
  402a44:	48 89 e7             	mov    %rsp,%rdi
  402a47:	48 89 de             	mov    %rbx,%rsi
  402a4a:	48 29 fe             	sub    %rdi,%rsi
  402a4d:	67 e8 63 09 00 00    	addr32 call 4033b6 <process_line>
  402a53:	48 83 c4 18          	add    $0x18,%rsp
  402a57:	5b                   	pop    %rbx
  402a58:	5d                   	pop    %rbp
  402a59:	c3                   	ret    

0000000000402a5a <hexmatch>:
  402a5a:	55                   	push   %rbp
  402a5b:	53                   	push   %rbx
  402a5c:	48 83 ec 18          	sub    $0x18,%rsp
  402a60:	89 fb                	mov    %edi,%ebx
  402a62:	48 89 f5             	mov    %rsi,%rbp
  402a65:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402a6c:	00 00 
  402a6e:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402a73:	31 c0                	xor    %eax,%eax
  402a75:	48 89 e6             	mov    %rsp,%rsi
  402a78:	ba 10 00 00 00       	mov    $0x10,%edx
  402a7d:	48 89 ef             	mov    %rbp,%rdi
  402a80:	ff 15 3a 35 00 00    	call   *0x353a(%rip)        # 405fc0 <strtoul@GLIBC_2.2.5>
  402a86:	89 db                	mov    %ebx,%ebx
  402a88:	48 39 c3             	cmp    %rax,%rbx
  402a8b:	74 1c                	je     402aa9 <hexmatch+0x4f>
  402a8d:	b8 00 00 00 00       	mov    $0x0,%eax
  402a92:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  402a97:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402a9e:	00 00 
  402aa0:	75 2a                	jne    402acc <hexmatch+0x72>
  402aa2:	48 83 c4 18          	add    $0x18,%rsp
  402aa6:	5b                   	pop    %rbx
  402aa7:	5d                   	pop    %rbp
  402aa8:	c3                   	ret    
  402aa9:	48 8b 04 24          	mov    (%rsp),%rax
  402aad:	48 39 e8             	cmp    %rbp,%rax
  402ab0:	74 0c                	je     402abe <hexmatch+0x64>
  402ab2:	80 38 00             	cmpb   $0x0,(%rax)
  402ab5:	74 0e                	je     402ac5 <hexmatch+0x6b>
  402ab7:	b8 00 00 00 00       	mov    $0x0,%eax
  402abc:	eb d4                	jmp    402a92 <hexmatch+0x38>
  402abe:	b8 00 00 00 00       	mov    $0x0,%eax
  402ac3:	eb cd                	jmp    402a92 <hexmatch+0x38>
  402ac5:	b8 01 00 00 00       	mov    $0x1,%eax
  402aca:	eb c6                	jmp    402a92 <hexmatch+0x38>
  402acc:	ff 15 16 34 00 00    	call   *0x3416(%rip)        # 405ee8 <__stack_chk_fail@GLIBC_2.4>

0000000000402ad2 <report_touch3>:
  402ad2:	53                   	push   %rbx
  402ad3:	48 89 fa             	mov    %rdi,%rdx
  402ad6:	48 89 f3             	mov    %rsi,%rbx
  402ad9:	48 8d 35 0a 17 00 00 	lea    0x170a(%rip),%rsi        # 4041ea <randomize_stack+0x15>
  402ae0:	bf 01 00 00 00       	mov    $0x1,%edi
  402ae5:	b8 00 00 00 00       	mov    $0x0,%eax
  402aea:	ff 15 a8 34 00 00    	call   *0x34a8(%rip)        # 405f98 <__printf_chk@GLIBC_2.3.4>
  402af0:	eb 1f                	jmp    402b11 <report_touch3+0x3f>
  402af2:	40 0f b6 d7          	movzbl %dil,%edx
  402af6:	48 8d 35 05 17 00 00 	lea    0x1705(%rip),%rsi        # 404202 <randomize_stack+0x2d>
  402afd:	bf 01 00 00 00       	mov    $0x1,%edi
  402b02:	b8 00 00 00 00       	mov    $0x0,%eax
  402b07:	ff 15 8b 34 00 00    	call   *0x348b(%rip)        # 405f98 <__printf_chk@GLIBC_2.3.4>
  402b0d:	48 83 c3 01          	add    $0x1,%rbx
  402b11:	0f b6 3b             	movzbl (%rbx),%edi
  402b14:	40 84 ff             	test   %dil,%dil
  402b17:	74 72                	je     402b8b <report_touch3+0xb9>
  402b19:	8d 47 e0             	lea    -0x20(%rdi),%eax
  402b1c:	3c 5e                	cmp    $0x5e,%al
  402b1e:	77 d2                	ja     402af2 <report_touch3+0x20>
  402b20:	40 80 ff 5c          	cmp    $0x5c,%dil
  402b24:	74 19                	je     402b3f <report_touch3+0x6d>
  402b26:	40 80 ff 22          	cmp    $0x22,%dil
  402b2a:	74 39                	je     402b65 <report_touch3+0x93>
  402b2c:	40 0f b6 ff          	movzbl %dil,%edi
  402b30:	48 8b 35 09 35 00 00 	mov    0x3509(%rip),%rsi        # 406040 <stdout@GLIBC_2.2.5>
  402b37:	ff 15 f3 33 00 00    	call   *0x33f3(%rip)        # 405f30 <putc@GLIBC_2.2.5>
  402b3d:	eb ce                	jmp    402b0d <report_touch3+0x3b>
  402b3f:	48 8b 35 fa 34 00 00 	mov    0x34fa(%rip),%rsi        # 406040 <stdout@GLIBC_2.2.5>
  402b46:	bf 5c 00 00 00       	mov    $0x5c,%edi
  402b4b:	ff 15 df 33 00 00    	call   *0x33df(%rip)        # 405f30 <putc@GLIBC_2.2.5>
  402b51:	48 8b 35 e8 34 00 00 	mov    0x34e8(%rip),%rsi        # 406040 <stdout@GLIBC_2.2.5>
  402b58:	bf 5c 00 00 00       	mov    $0x5c,%edi
  402b5d:	ff 15 cd 33 00 00    	call   *0x33cd(%rip)        # 405f30 <putc@GLIBC_2.2.5>
  402b63:	eb a8                	jmp    402b0d <report_touch3+0x3b>
  402b65:	48 8b 35 d4 34 00 00 	mov    0x34d4(%rip),%rsi        # 406040 <stdout@GLIBC_2.2.5>
  402b6c:	bf 5c 00 00 00       	mov    $0x5c,%edi
  402b71:	ff 15 b9 33 00 00    	call   *0x33b9(%rip)        # 405f30 <putc@GLIBC_2.2.5>
  402b77:	48 8b 35 c2 34 00 00 	mov    0x34c2(%rip),%rsi        # 406040 <stdout@GLIBC_2.2.5>
  402b7e:	bf 22 00 00 00       	mov    $0x22,%edi
  402b83:	ff 15 a7 33 00 00    	call   *0x33a7(%rip)        # 405f30 <putc@GLIBC_2.2.5>
  402b89:	eb 82                	jmp    402b0d <report_touch3+0x3b>
  402b8b:	48 8d 3d 77 16 00 00 	lea    0x1677(%rip),%rdi        # 404209 <randomize_stack+0x34>
  402b92:	ff 15 20 33 00 00    	call   *0x3320(%rip)        # 405eb8 <puts@GLIBC_2.2.5>
  402b98:	5b                   	pop    %rbx
  402b99:	c3                   	ret    

0000000000402b9a <touch1>:
  402b9a:	55                   	push   %rbp
  402b9b:	48 89 e5             	mov    %rsp,%rbp
  402b9e:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  402ba2:	c7 05 18 35 00 00 01 	movl   $0x1,0x3518(%rip)        # 4060c4 <vlevel>
  402ba9:	00 00 00 
  402bac:	48 8d 35 59 16 00 00 	lea    0x1659(%rip),%rsi        # 40420c <randomize_stack+0x37>
  402bb3:	bf 01 00 00 00       	mov    $0x1,%edi
  402bb8:	b8 00 00 00 00       	mov    $0x0,%eax
  402bbd:	ff 15 d5 33 00 00    	call   *0x33d5(%rip)        # 405f98 <__printf_chk@GLIBC_2.3.4>
  402bc3:	bf 01 00 00 00       	mov    $0x1,%edi
  402bc8:	67 e8 e2 00 00 00    	addr32 call 402cb0 <validate>

0000000000402bce <touch2>:
  402bce:	55                   	push   %rbp
  402bcf:	48 89 e5             	mov    %rsp,%rbp
  402bd2:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  402bd6:	89 fa                	mov    %edi,%edx
  402bd8:	c7 05 e2 34 00 00 02 	movl   $0x2,0x34e2(%rip)        # 4060c4 <vlevel>
  402bdf:	00 00 00 
  402be2:	39 3d d8 34 00 00    	cmp    %edi,0x34d8(%rip)        # 4060c0 <cookie>
  402be8:	74 17                	je     402c01 <touch2+0x33>
  402bea:	48 8d 35 77 16 00 00 	lea    0x1677(%rip),%rsi        # 404268 <randomize_stack+0x93>
  402bf1:	bf 02 00 00 00       	mov    $0x2,%edi
  402bf6:	b8 00 00 00 00       	mov    $0x0,%eax
  402bfb:	67 e8 7c 04 00 00    	addr32 call 40307d <notify_fail>
  402c01:	48 8d 35 38 16 00 00 	lea    0x1638(%rip),%rsi        # 404240 <randomize_stack+0x6b>
  402c08:	bf 01 00 00 00       	mov    $0x1,%edi
  402c0d:	b8 00 00 00 00       	mov    $0x0,%eax
  402c12:	ff 15 80 33 00 00    	call   *0x3380(%rip)        # 405f98 <__printf_chk@GLIBC_2.3.4>
  402c18:	bf 02 00 00 00       	mov    $0x2,%edi
  402c1d:	67 e8 8d 00 00 00    	addr32 call 402cb0 <validate>

0000000000402c23 <touch3>:
  402c23:	55                   	push   %rbp
  402c24:	48 89 e5             	mov    %rsp,%rbp
  402c27:	53                   	push   %rbx
  402c28:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  402c2c:	48 89 fb             	mov    %rdi,%rbx
  402c2f:	c7 05 8b 34 00 00 03 	movl   $0x3,0x348b(%rip)        # 4060c4 <vlevel>
  402c36:	00 00 00 
  402c39:	48 89 fe             	mov    %rdi,%rsi
  402c3c:	8b 3d 7e 34 00 00    	mov    0x347e(%rip),%edi        # 4060c0 <cookie>
  402c42:	e8 13 fe ff ff       	call   402a5a <hexmatch>
  402c47:	85 c0                	test   %eax,%eax
  402c49:	74 1a                	je     402c65 <touch3+0x42>
  402c4b:	48 89 de             	mov    %rbx,%rsi
  402c4e:	48 8d 3d d5 15 00 00 	lea    0x15d5(%rip),%rdi        # 40422a <randomize_stack+0x55>
  402c55:	e8 78 fe ff ff       	call   402ad2 <report_touch3>
  402c5a:	bf 03 00 00 00       	mov    $0x3,%edi
  402c5f:	67 e8 4b 00 00 00    	addr32 call 402cb0 <validate>
  402c65:	48 89 de             	mov    %rbx,%rsi
  402c68:	48 8d 3d c3 15 00 00 	lea    0x15c3(%rip),%rdi        # 404232 <randomize_stack+0x5d>
  402c6f:	e8 5e fe ff ff       	call   402ad2 <report_touch3>
  402c74:	48 8d 35 15 16 00 00 	lea    0x1615(%rip),%rsi        # 404290 <randomize_stack+0xbb>
  402c7b:	bf 03 00 00 00       	mov    $0x3,%edi
  402c80:	b8 00 00 00 00       	mov    $0x0,%eax
  402c85:	67 e8 f2 03 00 00    	addr32 call 40307d <notify_fail>

0000000000402c8b <test>:
  402c8b:	50                   	push   %rax
  402c8c:	58                   	pop    %rax
  402c8d:	48 83 ec 08          	sub    $0x8,%rsp
  402c91:	67 e8 86 fd ff ff    	addr32 call 402a1d <read_and_process_line>
  402c97:	48 8d 35 1a 16 00 00 	lea    0x161a(%rip),%rsi        # 4042b8 <randomize_stack+0xe3>
  402c9e:	bf 00 00 00 00       	mov    $0x0,%edi
  402ca3:	b8 00 00 00 00       	mov    $0x0,%eax
  402ca8:	67 e8 cf 03 00 00    	addr32 call 40307d <notify_fail>
  402cae:	66 90                	xchg   %ax,%ax

0000000000402cb0 <validate>:
  402cb0:	8b 35 0e 34 00 00    	mov    0x340e(%rip),%esi        # 4060c4 <vlevel>
  402cb6:	8b 15 0c 34 00 00    	mov    0x340c(%rip),%edx        # 4060c8 <check_level>
  402cbc:	e9 36 05 00 00       	jmp    4031f7 <validate_inner>

0000000000402cc1 <notify_generate_submission>:
  402cc1:	41 54                	push   %r12
  402cc3:	55                   	push   %rbp
  402cc4:	53                   	push   %rbx
  402cc5:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
  402ccc:	48 89 fb             	mov    %rdi,%rbx
  402ccf:	48 89 f5             	mov    %rsi,%rbp
  402cd2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402cd9:	00 00 
  402cdb:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
  402ce2:	00 
  402ce3:	31 c0                	xor    %eax,%eax
  402ce5:	ff 15 05 32 00 00    	call   *0x3205(%rip)        # 405ef0 <getuid@GLIBC_2.2.5>
  402ceb:	41 89 c4             	mov    %eax,%r12d
  402cee:	89 c7                	mov    %eax,%edi
  402cf0:	ff 15 ea 31 00 00    	call   *0x31ea(%rip)        # 405ee0 <getpwuid@GLIBC_2.2.5>
  402cf6:	48 85 c0             	test   %rax,%rax
  402cf9:	0f 84 eb 00 00 00    	je     402dea <notify_generate_submission+0x129>
  402cff:	48 8b 08             	mov    (%rax),%rcx
  402d02:	48 8d 15 eb 15 00 00 	lea    0x15eb(%rip),%rdx        # 4042f4 <is_checker+0x4>
  402d09:	be 01 00 00 00       	mov    $0x1,%esi
  402d0e:	48 89 df             	mov    %rbx,%rdi
  402d11:	b8 00 00 00 00       	mov    $0x0,%eax
  402d16:	ff 15 bc 32 00 00    	call   *0x32bc(%rip)        # 405fd8 <__fprintf_chk@GLIBC_2.3.4>
  402d1c:	44 8b 4d 14          	mov    0x14(%rbp),%r9d
  402d20:	44 0f be 05 ac 14 00 	movsbl 0x14ac(%rip),%r8d        # 4041d4 <target_prefix>
  402d27:	00 
  402d28:	8b 0d a2 14 00 00    	mov    0x14a2(%rip),%ecx        # 4041d0 <target_id>
  402d2e:	48 8d 15 9b 16 00 00 	lea    0x169b(%rip),%rdx        # 4043d0 <is_checker+0xe0>
  402d35:	be 01 00 00 00       	mov    $0x1,%esi
  402d3a:	48 89 df             	mov    %rbx,%rdi
  402d3d:	b8 00 00 00 00       	mov    $0x0,%eax
  402d42:	ff 15 90 32 00 00    	call   *0x3290(%rip)        # 405fd8 <__fprintf_chk@GLIBC_2.3.4>
  402d48:	83 7d 10 00          	cmpl   $0x0,0x10(%rbp)
  402d4c:	0f 85 ba 00 00 00    	jne    402e0c <notify_generate_submission+0x14b>
  402d52:	48 83 7d 00 00       	cmpq   $0x0,0x0(%rbp)
  402d57:	0f 84 ce 00 00 00    	je     402e2b <notify_generate_submission+0x16a>
  402d5d:	48 89 d9             	mov    %rbx,%rcx
  402d60:	ba 06 00 00 00       	mov    $0x6,%edx
  402d65:	be 01 00 00 00       	mov    $0x1,%esi
  402d6a:	48 8d 3d b1 15 00 00 	lea    0x15b1(%rip),%rdi        # 404322 <is_checker+0x32>
  402d71:	ff 15 59 32 00 00    	call   *0x3259(%rip)        # 405fd0 <fwrite@GLIBC_2.2.5>
  402d77:	48 8b 4d 08          	mov    0x8(%rbp),%rcx
  402d7b:	48 8b 55 00          	mov    0x0(%rbp),%rdx
  402d7f:	be 01 00 00 00       	mov    $0x1,%esi
  402d84:	48 89 df             	mov    %rbx,%rdi
  402d87:	ff 15 0b 31 00 00    	call   *0x310b(%rip)        # 405e98 <__vfprintf_chk@GLIBC_2.3.4>
  402d8d:	48 8b 0d 24 33 00 00 	mov    0x3324(%rip),%rcx        # 4060b8 <gets_buf>
  402d94:	48 8d 15 8e 15 00 00 	lea    0x158e(%rip),%rdx        # 404329 <is_checker+0x39>
  402d9b:	be 01 00 00 00       	mov    $0x1,%esi
  402da0:	48 89 df             	mov    %rbx,%rdi
  402da3:	b8 00 00 00 00       	mov    $0x0,%eax
  402da8:	ff 15 2a 32 00 00    	call   *0x322a(%rip)        # 405fd8 <__fprintf_chk@GLIBC_2.3.4>
  402dae:	48 89 df             	mov    %rbx,%rdi
  402db1:	ff 15 09 31 00 00    	call   *0x3109(%rip)        # 405ec0 <ferror@GLIBC_2.2.5>
  402db7:	85 c0                	test   %eax,%eax
  402db9:	0f 84 8b 00 00 00    	je     402e4a <notify_generate_submission+0x189>
  402dbf:	ff 15 e3 30 00 00    	call   *0x30e3(%rip)        # 405ea8 <__errno_location@GLIBC_2.2.5>
  402dc5:	8b 00                	mov    (%rax),%eax
  402dc7:	48 8b 94 24 88 00 00 	mov    0x88(%rsp),%rdx
  402dce:	00 
  402dcf:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402dd6:	00 00 
  402dd8:	0f 85 fe 01 00 00    	jne    402fdc <notify_generate_submission+0x31b>
  402dde:	48 81 c4 90 00 00 00 	add    $0x90,%rsp
  402de5:	5b                   	pop    %rbx
  402de6:	5d                   	pop    %rbp
  402de7:	41 5c                	pop    %r12
  402de9:	c3                   	ret    
  402dea:	44 89 e1             	mov    %r12d,%ecx
  402ded:	48 8d 15 12 15 00 00 	lea    0x1512(%rip),%rdx        # 404306 <is_checker+0x16>
  402df4:	be 01 00 00 00       	mov    $0x1,%esi
  402df9:	48 89 df             	mov    %rbx,%rdi
  402dfc:	b8 00 00 00 00       	mov    $0x0,%eax
  402e01:	ff 15 d1 31 00 00    	call   *0x31d1(%rip)        # 405fd8 <__fprintf_chk@GLIBC_2.3.4>
  402e07:	e9 10 ff ff ff       	jmp    402d1c <notify_generate_submission+0x5b>
  402e0c:	48 89 d9             	mov    %rbx,%rcx
  402e0f:	ba 04 00 00 00       	mov    $0x4,%edx
  402e14:	be 01 00 00 00       	mov    $0x1,%esi
  402e19:	48 8d 3d f8 14 00 00 	lea    0x14f8(%rip),%rdi        # 404318 <is_checker+0x28>
  402e20:	ff 15 aa 31 00 00    	call   *0x31aa(%rip)        # 405fd0 <fwrite@GLIBC_2.2.5>
  402e26:	e9 62 ff ff ff       	jmp    402d8d <notify_generate_submission+0xcc>
  402e2b:	48 89 d9             	mov    %rbx,%rcx
  402e2e:	ba 04 00 00 00       	mov    $0x4,%edx
  402e33:	be 01 00 00 00       	mov    $0x1,%esi
  402e38:	48 8d 3d de 14 00 00 	lea    0x14de(%rip),%rdi        # 40431d <is_checker+0x2d>
  402e3f:	ff 15 8b 31 00 00    	call   *0x318b(%rip)        # 405fd0 <fwrite@GLIBC_2.2.5>
  402e45:	e9 43 ff ff ff       	jmp    402d8d <notify_generate_submission+0xcc>
  402e4a:	48 89 df             	mov    %rbx,%rdi
  402e4d:	ff 15 25 31 00 00    	call   *0x3125(%rip)        # 405f78 <fflush@GLIBC_2.2.5>
  402e53:	85 c0                	test   %eax,%eax
  402e55:	0f 85 64 ff ff ff    	jne    402dbf <notify_generate_submission+0xfe>
  402e5b:	48 89 da             	mov    %rbx,%rdx
  402e5e:	48 8d 35 e0 14 00 00 	lea    0x14e0(%rip),%rsi        # 404345 <is_checker+0x55>
  402e65:	bf 00 00 00 00       	mov    $0x0,%edi
  402e6a:	ff 15 a8 30 00 00    	call   *0x30a8(%rip)        # 405f18 <freopen@GLIBC_2.2.5>
  402e70:	48 85 c0             	test   %rax,%rax
  402e73:	0f 84 46 ff ff ff    	je     402dbf <notify_generate_submission+0xfe>
  402e79:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402e7e:	ff 15 0c 30 00 00    	call   *0x300c(%rip)        # 405e90 <posix_spawn_file_actions_init@GLIBC_2.2.5>
  402e84:	85 c0                	test   %eax,%eax
  402e86:	0f 85 3b ff ff ff    	jne    402dc7 <notify_generate_submission+0x106>
  402e8c:	48 89 df             	mov    %rbx,%rdi
  402e8f:	ff 15 cb 30 00 00    	call   *0x30cb(%rip)        # 405f60 <fileno@GLIBC_2.2.5>
  402e95:	89 c6                	mov    %eax,%esi
  402e97:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402e9c:	ba 01 00 00 00       	mov    $0x1,%edx
  402ea1:	ff 15 39 31 00 00    	call   *0x3139(%rip)        # 405fe0 <posix_spawn_file_actions_adddup2@GLIBC_2.2.5>
  402ea7:	85 c0                	test   %eax,%eax
  402ea9:	0f 85 18 ff ff ff    	jne    402dc7 <notify_generate_submission+0x106>
  402eaf:	48 8d 35 5a 15 00 00 	lea    0x155a(%rip),%rsi        # 404410 <is_checker+0x120>
  402eb6:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
  402ebb:	48 8d 05 86 14 00 00 	lea    0x1486(%rip),%rax        # 404348 <is_checker+0x58>
  402ec2:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402ec7:	48 8b 05 62 31 00 00 	mov    0x3162(%rip),%rax        # 406030 <course_and_lab>
  402ece:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  402ed3:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
  402eda:	00 00 
  402edc:	48 8d 54 24 30       	lea    0x30(%rsp),%rdx
  402ee1:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  402ee6:	4c 8b 0d 73 31 00 00 	mov    0x3173(%rip),%r9        # 406060 <__environ@GLIBC_2.2.5>
  402eed:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
  402ef2:	b9 00 00 00 00       	mov    $0x0,%ecx
  402ef7:	ff 15 83 30 00 00    	call   *0x3083(%rip)        # 405f80 <posix_spawnp@GLIBC_2.15>
  402efd:	85 c0                	test   %eax,%eax
  402eff:	0f 85 c2 fe ff ff    	jne    402dc7 <notify_generate_submission+0x106>
  402f05:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402f0a:	ff 15 c8 2f 00 00    	call   *0x2fc8(%rip)        # 405ed8 <posix_spawn_file_actions_destroy@GLIBC_2.2.5>
  402f10:	48 8d 74 24 0c       	lea    0xc(%rsp),%rsi
  402f15:	ba 00 00 00 00       	mov    $0x0,%edx
  402f1a:	8b 7c 24 08          	mov    0x8(%rsp),%edi
  402f1e:	ff 15 7c 30 00 00    	call   *0x307c(%rip)        # 405fa0 <waitpid@GLIBC_2.2.5>
  402f24:	83 f8 ff             	cmp    $0xffffffff,%eax
  402f27:	74 41                	je     402f6a <notify_generate_submission+0x2a9>
  402f29:	8b 4c 24 0c          	mov    0xc(%rsp),%ecx
  402f2d:	89 cf                	mov    %ecx,%edi
  402f2f:	83 e7 7f             	and    $0x7f,%edi
  402f32:	75 43                	jne    402f77 <notify_generate_submission+0x2b6>
  402f34:	0f b6 c5             	movzbl %ch,%eax
  402f37:	f6 c5 ff             	test   $0xff,%ch
  402f3a:	0f 84 87 fe ff ff    	je     402dc7 <notify_generate_submission+0x106>
  402f40:	89 c1                	mov    %eax,%ecx
  402f42:	48 8d 15 06 14 00 00 	lea    0x1406(%rip),%rdx        # 40434f <is_checker+0x5f>
  402f49:	be 01 00 00 00       	mov    $0x1,%esi
  402f4e:	48 8b 3d 4b 31 00 00 	mov    0x314b(%rip),%rdi        # 4060a0 <stderr@GLIBC_2.2.5>
  402f55:	b8 00 00 00 00       	mov    $0x0,%eax
  402f5a:	ff 15 78 30 00 00    	call   *0x3078(%rip)        # 405fd8 <__fprintf_chk@GLIBC_2.3.4>
  402f60:	b8 46 00 00 00       	mov    $0x46,%eax
  402f65:	e9 5d fe ff ff       	jmp    402dc7 <notify_generate_submission+0x106>
  402f6a:	ff 15 38 2f 00 00    	call   *0x2f38(%rip)        # 405ea8 <__errno_location@GLIBC_2.2.5>
  402f70:	8b 00                	mov    (%rax),%eax
  402f72:	e9 50 fe ff ff       	jmp    402dc7 <notify_generate_submission+0x106>
  402f77:	89 c8                	mov    %ecx,%eax
  402f79:	83 e0 7f             	and    $0x7f,%eax
  402f7c:	83 c0 01             	add    $0x1,%eax
  402f7f:	3c 01                	cmp    $0x1,%al
  402f81:	7e 31                	jle    402fb4 <notify_generate_submission+0x2f3>
  402f83:	ff 15 ff 2f 00 00    	call   *0x2fff(%rip)        # 405f88 <strsignal@GLIBC_2.2.5>
  402f89:	48 89 c1             	mov    %rax,%rcx
  402f8c:	48 8d 15 d5 13 00 00 	lea    0x13d5(%rip),%rdx        # 404368 <is_checker+0x78>
  402f93:	be 01 00 00 00       	mov    $0x1,%esi
  402f98:	48 8b 3d 01 31 00 00 	mov    0x3101(%rip),%rdi        # 4060a0 <stderr@GLIBC_2.2.5>
  402f9f:	b8 00 00 00 00       	mov    $0x0,%eax
  402fa4:	ff 15 2e 30 00 00    	call   *0x302e(%rip)        # 405fd8 <__fprintf_chk@GLIBC_2.3.4>
  402faa:	b8 46 00 00 00       	mov    $0x46,%eax
  402faf:	e9 13 fe ff ff       	jmp    402dc7 <notify_generate_submission+0x106>
  402fb4:	48 8d 15 c1 13 00 00 	lea    0x13c1(%rip),%rdx        # 40437c <is_checker+0x8c>
  402fbb:	be 01 00 00 00       	mov    $0x1,%esi
  402fc0:	48 8b 3d d9 30 00 00 	mov    0x30d9(%rip),%rdi        # 4060a0 <stderr@GLIBC_2.2.5>
  402fc7:	b8 00 00 00 00       	mov    $0x0,%eax
  402fcc:	ff 15 06 30 00 00    	call   *0x3006(%rip)        # 405fd8 <__fprintf_chk@GLIBC_2.3.4>
  402fd2:	b8 46 00 00 00       	mov    $0x46,%eax
  402fd7:	e9 eb fd ff ff       	jmp    402dc7 <notify_generate_submission+0x106>
  402fdc:	ff 15 06 2f 00 00    	call   *0x2f06(%rip)        # 405ee8 <__stack_chk_fail@GLIBC_2.4>

0000000000402fe2 <notify_pass>:
  402fe2:	53                   	push   %rbx
  402fe3:	48 83 ec 20          	sub    $0x20,%rsp
  402fe7:	89 fb                	mov    %edi,%ebx
  402fe9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402ff0:	00 00 
  402ff2:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402ff7:	31 c0                	xor    %eax,%eax
  402ff9:	48 8d 3d 40 14 00 00 	lea    0x1440(%rip),%rdi        # 404440 <is_checker+0x150>
  403000:	ff 15 b2 2e 00 00    	call   *0x2eb2(%rip)        # 405eb8 <puts@GLIBC_2.2.5>
  403006:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  40300d:	00 
  40300e:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  403015:	00 00 
  403017:	c7 44 24 10 01 00 00 	movl   $0x1,0x10(%rsp)
  40301e:	00 
  40301f:	89 5c 24 14          	mov    %ebx,0x14(%rsp)
  403023:	48 89 e2             	mov    %rsp,%rdx
  403026:	48 8d 35 94 fc ff ff 	lea    -0x36c(%rip),%rsi        # 402cc1 <notify_generate_submission>
  40302d:	48 8b 3d fc 2f 00 00 	mov    0x2ffc(%rip),%rdi        # 406030 <course_and_lab>
  403034:	67 e8 d3 07 00 00    	addr32 call 40380d <autolab_submit_stream>
  40303a:	85 c0                	test   %eax,%eax
  40303c:	74 34                	je     403072 <notify_pass+0x90>
  40303e:	89 c7                	mov    %eax,%edi
  403040:	ff 15 a2 2f 00 00    	call   *0x2fa2(%rip)        # 405fe8 <strerror@GLIBC_2.2.5>
  403046:	48 89 c1             	mov    %rax,%rcx
  403049:	48 8d 15 30 14 00 00 	lea    0x1430(%rip),%rdx        # 404480 <is_checker+0x190>
  403050:	be 01 00 00 00       	mov    $0x1,%esi
  403055:	48 8b 3d 44 30 00 00 	mov    0x3044(%rip),%rdi        # 4060a0 <stderr@GLIBC_2.2.5>
  40305c:	b8 00 00 00 00       	mov    $0x0,%eax
  403061:	ff 15 71 2f 00 00    	call   *0x2f71(%rip)        # 405fd8 <__fprintf_chk@GLIBC_2.3.4>
  403067:	bf 01 00 00 00       	mov    $0x1,%edi
  40306c:	ff 15 56 2f 00 00    	call   *0x2f56(%rip)        # 405fc8 <exit@GLIBC_2.2.5>
  403072:	bf 00 00 00 00       	mov    $0x0,%edi
  403077:	ff 15 4b 2f 00 00    	call   *0x2f4b(%rip)        # 405fc8 <exit@GLIBC_2.2.5>

000000000040307d <notify_fail>:
  40307d:	41 54                	push   %r12
  40307f:	55                   	push   %rbp
  403080:	53                   	push   %rbx
  403081:	48 81 ec f0 00 00 00 	sub    $0xf0,%rsp
  403088:	89 fd                	mov    %edi,%ebp
  40308a:	48 89 f3             	mov    %rsi,%rbx
  40308d:	48 89 54 24 50       	mov    %rdx,0x50(%rsp)
  403092:	48 89 4c 24 58       	mov    %rcx,0x58(%rsp)
  403097:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
  40309c:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
  4030a1:	84 c0                	test   %al,%al
  4030a3:	74 3d                	je     4030e2 <notify_fail+0x65>
  4030a5:	0f 29 44 24 70       	movaps %xmm0,0x70(%rsp)
  4030aa:	0f 29 8c 24 80 00 00 	movaps %xmm1,0x80(%rsp)
  4030b1:	00 
  4030b2:	0f 29 94 24 90 00 00 	movaps %xmm2,0x90(%rsp)
  4030b9:	00 
  4030ba:	0f 29 9c 24 a0 00 00 	movaps %xmm3,0xa0(%rsp)
  4030c1:	00 
  4030c2:	0f 29 a4 24 b0 00 00 	movaps %xmm4,0xb0(%rsp)
  4030c9:	00 
  4030ca:	0f 29 ac 24 c0 00 00 	movaps %xmm5,0xc0(%rsp)
  4030d1:	00 
  4030d2:	0f 29 b4 24 d0 00 00 	movaps %xmm6,0xd0(%rsp)
  4030d9:	00 
  4030da:	0f 29 bc 24 e0 00 00 	movaps %xmm7,0xe0(%rsp)
  4030e1:	00 
  4030e2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4030e9:	00 00 
  4030eb:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  4030f0:	31 c0                	xor    %eax,%eax
  4030f2:	c7 44 24 20 10 00 00 	movl   $0x10,0x20(%rsp)
  4030f9:	00 
  4030fa:	c7 44 24 24 30 00 00 	movl   $0x30,0x24(%rsp)
  403101:	00 
  403102:	48 8d 84 24 10 01 00 	lea    0x110(%rsp),%rax
  403109:	00 
  40310a:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  40310f:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
  403114:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  403119:	48 8b 0d 20 2f 00 00 	mov    0x2f20(%rip),%rcx        # 406040 <stdout@GLIBC_2.2.5>
  403120:	ba 06 00 00 00       	mov    $0x6,%edx
  403125:	be 01 00 00 00       	mov    $0x1,%esi
  40312a:	48 8d 3d f1 11 00 00 	lea    0x11f1(%rip),%rdi        # 404322 <is_checker+0x32>
  403131:	ff 15 99 2e 00 00    	call   *0x2e99(%rip)        # 405fd0 <fwrite@GLIBC_2.2.5>
  403137:	4c 8d 64 24 20       	lea    0x20(%rsp),%r12
  40313c:	4c 89 e1             	mov    %r12,%rcx
  40313f:	48 89 da             	mov    %rbx,%rdx
  403142:	be 01 00 00 00       	mov    $0x1,%esi
  403147:	48 8b 3d f2 2e 00 00 	mov    0x2ef2(%rip),%rdi        # 406040 <stdout@GLIBC_2.2.5>
  40314e:	ff 15 44 2d 00 00    	call   *0x2d44(%rip)        # 405e98 <__vfprintf_chk@GLIBC_2.3.4>
  403154:	48 8d 3d 4d 13 00 00 	lea    0x134d(%rip),%rdi        # 4044a8 <is_checker+0x1b8>
  40315b:	ff 15 57 2d 00 00    	call   *0x2d57(%rip)        # 405eb8 <puts@GLIBC_2.2.5>
  403161:	c7 44 24 20 10 00 00 	movl   $0x10,0x20(%rsp)
  403168:	00 
  403169:	c7 44 24 24 30 00 00 	movl   $0x30,0x24(%rsp)
  403170:	00 
  403171:	48 8d 84 24 10 01 00 	lea    0x110(%rsp),%rax
  403178:	00 
  403179:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  40317e:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
  403183:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  403188:	48 89 1c 24          	mov    %rbx,(%rsp)
  40318c:	4c 89 64 24 08       	mov    %r12,0x8(%rsp)
  403191:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%rsp)
  403198:	00 
  403199:	89 6c 24 14          	mov    %ebp,0x14(%rsp)
  40319d:	48 89 e2             	mov    %rsp,%rdx
  4031a0:	48 8d 35 1a fb ff ff 	lea    -0x4e6(%rip),%rsi        # 402cc1 <notify_generate_submission>
  4031a7:	48 8b 3d 82 2e 00 00 	mov    0x2e82(%rip),%rdi        # 406030 <course_and_lab>
  4031ae:	67 e8 59 06 00 00    	addr32 call 40380d <autolab_submit_stream>
  4031b4:	85 c0                	test   %eax,%eax
  4031b6:	74 34                	je     4031ec <notify_fail+0x16f>
  4031b8:	89 c7                	mov    %eax,%edi
  4031ba:	ff 15 28 2e 00 00    	call   *0x2e28(%rip)        # 405fe8 <strerror@GLIBC_2.2.5>
  4031c0:	48 89 c1             	mov    %rax,%rcx
  4031c3:	48 8d 15 b6 12 00 00 	lea    0x12b6(%rip),%rdx        # 404480 <is_checker+0x190>
  4031ca:	be 01 00 00 00       	mov    $0x1,%esi
  4031cf:	48 8b 3d ca 2e 00 00 	mov    0x2eca(%rip),%rdi        # 4060a0 <stderr@GLIBC_2.2.5>
  4031d6:	b8 00 00 00 00       	mov    $0x0,%eax
  4031db:	ff 15 f7 2d 00 00    	call   *0x2df7(%rip)        # 405fd8 <__fprintf_chk@GLIBC_2.3.4>
  4031e1:	bf 01 00 00 00       	mov    $0x1,%edi
  4031e6:	ff 15 dc 2d 00 00    	call   *0x2ddc(%rip)        # 405fc8 <exit@GLIBC_2.2.5>
  4031ec:	bf 01 00 00 00       	mov    $0x1,%edi
  4031f1:	ff 15 d1 2d 00 00    	call   *0x2dd1(%rip)        # 405fc8 <exit@GLIBC_2.2.5>

00000000004031f7 <validate_inner>:
  4031f7:	50                   	push   %rax
  4031f8:	58                   	pop    %rax
  4031f9:	48 83 ec 08          	sub    $0x8,%rsp
  4031fd:	85 d2                	test   %edx,%edx
  4031ff:	75 20                	jne    403221 <validate_inner+0x2a>
  403201:	85 f6                	test   %esi,%esi
  403203:	7e 2d                	jle    403232 <validate_inner+0x3b>
  403205:	39 fe                	cmp    %edi,%esi
  403207:	74 3a                	je     403243 <validate_inner+0x4c>
  403209:	41 89 f0             	mov    %esi,%r8d
  40320c:	89 f1                	mov    %esi,%ecx
  40320e:	89 fa                	mov    %edi,%edx
  403210:	48 8d 35 e9 12 00 00 	lea    0x12e9(%rip),%rsi        # 404500 <is_checker+0x210>
  403217:	b8 00 00 00 00       	mov    $0x0,%eax
  40321c:	e8 5c fe ff ff       	call   40307d <notify_fail>
  403221:	48 8d 35 b0 12 00 00 	lea    0x12b0(%rip),%rsi        # 4044d8 <is_checker+0x1e8>
  403228:	b8 00 00 00 00       	mov    $0x0,%eax
  40322d:	e8 4b fe ff ff       	call   40307d <notify_fail>
  403232:	48 8d 35 5f 11 00 00 	lea    0x115f(%rip),%rsi        # 404398 <is_checker+0xa8>
  403239:	b8 00 00 00 00       	mov    $0x0,%eax
  40323e:	e8 3a fe ff ff       	call   40307d <notify_fail>
  403243:	e8 9a fd ff ff       	call   402fe2 <notify_pass>

0000000000403248 <sighandler>:
  403248:	50                   	push   %rax
  403249:	58                   	pop    %rax
  40324a:	48 83 ec 08          	sub    $0x8,%rsp
  40324e:	8d 47 fc             	lea    -0x4(%rdi),%eax
  403251:	83 f8 0a             	cmp    $0xa,%eax
  403254:	77 37                	ja     40328d <sighandler+0x45>
  403256:	89 c0                	mov    %eax,%eax
  403258:	48 8d 15 d1 13 00 00 	lea    0x13d1(%rip),%rdx        # 404630 <is_checker+0x340>
  40325f:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  403263:	48 01 d0             	add    %rdx,%rax
  403266:	ff e0                	jmp    *%rax
  403268:	48 8d 15 c1 12 00 00 	lea    0x12c1(%rip),%rdx        # 404530 <is_checker+0x240>
  40326f:	eb 42                	jmp    4032b3 <sighandler+0x6b>
  403271:	8b 15 b1 2d 00 00    	mov    0x2db1(%rip),%edx        # 406028 <checker_timeout>
  403277:	48 8d 35 52 13 00 00 	lea    0x1352(%rip),%rsi        # 4045d0 <is_checker+0x2e0>
  40327e:	bf 00 00 00 00       	mov    $0x0,%edi
  403283:	b8 00 00 00 00       	mov    $0x0,%eax
  403288:	e8 f0 fd ff ff       	call   40307d <notify_fail>
  40328d:	ff 15 f5 2c 00 00    	call   *0x2cf5(%rip)        # 405f88 <strsignal@GLIBC_2.2.5>
  403293:	48 89 c2             	mov    %rax,%rdx
  403296:	48 8d 35 6b 13 00 00 	lea    0x136b(%rip),%rsi        # 404608 <is_checker+0x318>
  40329d:	bf 00 00 00 00       	mov    $0x0,%edi
  4032a2:	b8 00 00 00 00       	mov    $0x0,%eax
  4032a7:	e8 d1 fd ff ff       	call   40307d <notify_fail>
  4032ac:	48 8d 15 c5 12 00 00 	lea    0x12c5(%rip),%rdx        # 404578 <is_checker+0x288>
  4032b3:	48 8d 35 f8 10 00 00 	lea    0x10f8(%rip),%rsi        # 4043b2 <is_checker+0xc2>
  4032ba:	bf 00 00 00 00       	mov    $0x0,%edi
  4032bf:	b8 00 00 00 00       	mov    $0x0,%eax
  4032c4:	e8 b4 fd ff ff       	call   40307d <notify_fail>
  4032c9:	48 8d 15 d8 12 00 00 	lea    0x12d8(%rip),%rdx        # 4045a8 <is_checker+0x2b8>
  4032d0:	eb e1                	jmp    4032b3 <sighandler+0x6b>
  4032d2:	48 8d 15 77 12 00 00 	lea    0x1277(%rip),%rdx        # 404550 <is_checker+0x260>
  4032d9:	eb d8                	jmp    4032b3 <sighandler+0x6b>

00000000004032db <launch_in_altstack>:
  4032db:	55                   	push   %rbp
  4032dc:	48 89 e5             	mov    %rsp,%rbp
  4032df:	48 83 ec 10          	sub    $0x10,%rsp
  4032e3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4032ea:	00 00 
  4032ec:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4032f0:	31 c0                	xor    %eax,%eax
  4032f2:	48 8b 05 d7 2d 00 00 	mov    0x2dd7(%rip),%rax        # 4060d0 <launch_stack_offset>
  4032f9:	48 83 c0 17          	add    $0x17,%rax
  4032fd:	48 89 c1             	mov    %rax,%rcx
  403300:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
  403304:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  40330a:	48 89 e2             	mov    %rsp,%rdx
  40330d:	48 29 c2             	sub    %rax,%rdx
  403310:	48 39 d4             	cmp    %rdx,%rsp
  403313:	74 12                	je     403327 <launch_in_altstack+0x4c>
  403315:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  40331c:	48 83 8c 24 f8 0f 00 	orq    $0x0,0xff8(%rsp)
  403323:	00 00 
  403325:	eb e9                	jmp    403310 <launch_in_altstack+0x35>
  403327:	48 89 c8             	mov    %rcx,%rax
  40332a:	25 ff 0f 00 00       	and    $0xfff,%eax
  40332f:	48 29 c4             	sub    %rax,%rsp
  403332:	48 85 c0             	test   %rax,%rax
  403335:	74 06                	je     40333d <launch_in_altstack+0x62>
  403337:	48 83 4c 04 f8 00    	orq    $0x0,-0x8(%rsp,%rax,1)
  40333d:	48 8d 44 24 0f       	lea    0xf(%rsp),%rax
  403342:	48 a9 f0 ff ff ff    	test   $0xfffffffffffffff0,%rax
  403348:	74 27                	je     403371 <launch_in_altstack+0x96>
  40334a:	48 8b 05 ff 2c 00 00 	mov    0x2cff(%rip),%rax        # 406050 <stdin@GLIBC_2.2.5>
  403351:	48 39 05 58 2d 00 00 	cmp    %rax,0x2d58(%rip)        # 4060b0 <global_infile>
  403358:	74 2f                	je     403389 <launch_in_altstack+0xae>
  40335a:	c7 05 60 2d 00 00 00 	movl   $0x0,0x2d60(%rip)        # 4060c4 <vlevel>
  403361:	00 00 00 
  403364:	48 8b 3d 45 2d 00 00 	mov    0x2d45(%rip),%rdi        # 4060b0 <global_infile>
  40336b:	67 e8 1a f9 ff ff    	addr32 call 402c8b <test>
  403371:	48 8d 3d e4 12 00 00 	lea    0x12e4(%rip),%rdi        # 40465c <is_checker+0x36c>
  403378:	ff 15 32 2c 00 00    	call   *0x2c32(%rip)        # 405fb0 <perror@GLIBC_2.2.5>
  40337e:	bf 01 00 00 00       	mov    $0x1,%edi
  403383:	ff 15 3f 2c 00 00    	call   *0x2c3f(%rip)        # 405fc8 <exit@GLIBC_2.2.5>
  403389:	48 8b 0d b0 2c 00 00 	mov    0x2cb0(%rip),%rcx        # 406040 <stdout@GLIBC_2.2.5>
  403390:	ba 0d 00 00 00       	mov    $0xd,%edx
  403395:	be 01 00 00 00       	mov    $0x1,%esi
  40339a:	48 8d 3d c2 12 00 00 	lea    0x12c2(%rip),%rdi        # 404663 <is_checker+0x373>
  4033a1:	ff 15 29 2c 00 00    	call   *0x2c29(%rip)        # 405fd0 <fwrite@GLIBC_2.2.5>
  4033a7:	48 8b 3d 92 2c 00 00 	mov    0x2c92(%rip),%rdi        # 406040 <stdout@GLIBC_2.2.5>
  4033ae:	ff 15 c4 2b 00 00    	call   *0x2bc4(%rip)        # 405f78 <fflush@GLIBC_2.2.5>
  4033b4:	eb a4                	jmp    40335a <launch_in_altstack+0x7f>

00000000004033b6 <process_line>:
  4033b6:	41 54                	push   %r12
  4033b8:	55                   	push   %rbp
  4033b9:	53                   	push   %rbx
  4033ba:	48 89 fd             	mov    %rdi,%rbp
  4033bd:	48 89 f3             	mov    %rsi,%rbx
  4033c0:	4c 8d 64 76 04       	lea    0x4(%rsi,%rsi,2),%r12
  4033c5:	4c 89 e7             	mov    %r12,%rdi
  4033c8:	ff 15 a2 2b 00 00    	call   *0x2ba2(%rip)        # 405f70 <malloc@GLIBC_2.2.5>
  4033ce:	48 89 c7             	mov    %rax,%rdi
  4033d1:	48 89 05 e0 2c 00 00 	mov    %rax,0x2ce0(%rip)        # 4060b8 <gets_buf>
  4033d8:	4c 89 e2             	mov    %r12,%rdx
  4033db:	be 00 00 00 00       	mov    $0x0,%esi
  4033e0:	ff 15 2a 2b 00 00    	call   *0x2b2a(%rip)        # 405f10 <memset@GLIBC_2.2.5>
  4033e6:	48 83 3d ca 2c 00 00 	cmpq   $0x0,0x2cca(%rip)        # 4060b8 <gets_buf>
  4033ed:	00 
  4033ee:	74 0c                	je     4033fc <process_line+0x46>
  4033f0:	b8 00 00 00 00       	mov    $0x0,%eax
  4033f5:	b9 00 00 00 00       	mov    $0x0,%ecx
  4033fa:	eb 65                	jmp    403461 <process_line+0xab>
  4033fc:	48 8d 3d 6e 12 00 00 	lea    0x126e(%rip),%rdi        # 404671 <is_checker+0x381>
  403403:	ff 15 a7 2b 00 00    	call   *0x2ba7(%rip)        # 405fb0 <perror@GLIBC_2.2.5>
  403409:	bf 01 00 00 00       	mov    $0x1,%edi
  40340e:	ff 15 b4 2b 00 00    	call   *0x2bb4(%rip)        # 405fc8 <exit@GLIBC_2.2.5>
  403414:	0f b6 54 0d 00       	movzbl 0x0(%rbp,%rcx,1),%edx
  403419:	89 d6                	mov    %edx,%esi
  40341b:	40 c0 ee 04          	shr    $0x4,%sil
  40341f:	49 89 c0             	mov    %rax,%r8
  403422:	4c 03 05 8f 2c 00 00 	add    0x2c8f(%rip),%r8        # 4060b8 <gets_buf>
  403429:	48 8d 3d e0 12 00 00 	lea    0x12e0(%rip),%rdi        # 404710 <hex_digit.0>
  403430:	83 e6 0f             	and    $0xf,%esi
  403433:	0f b6 34 37          	movzbl (%rdi,%rsi,1),%esi
  403437:	41 88 30             	mov    %sil,(%r8)
  40343a:	83 e2 0f             	and    $0xf,%edx
  40343d:	0f b6 34 17          	movzbl (%rdi,%rdx,1),%esi
  403441:	48 8b 15 70 2c 00 00 	mov    0x2c70(%rip),%rdx        # 4060b8 <gets_buf>
  403448:	40 88 74 02 01       	mov    %sil,0x1(%rdx,%rax,1)
  40344d:	48 8b 15 64 2c 00 00 	mov    0x2c64(%rip),%rdx        # 4060b8 <gets_buf>
  403454:	c6 44 02 02 20       	movb   $0x20,0x2(%rdx,%rax,1)
  403459:	48 83 c1 01          	add    $0x1,%rcx
  40345d:	48 83 c0 03          	add    $0x3,%rax
  403461:	48 39 d9             	cmp    %rbx,%rcx
  403464:	72 ae                	jb     403414 <process_line+0x5e>
  403466:	48 03 05 4b 2c 00 00 	add    0x2c4b(%rip),%rax        # 4060b8 <gets_buf>
  40346d:	c6 00 00             	movb   $0x0,(%rax)
  403470:	48 8b 3d 41 2c 00 00 	mov    0x2c41(%rip),%rdi        # 4060b8 <gets_buf>
  403477:	ff 15 3b 2a 00 00    	call   *0x2a3b(%rip)        # 405eb8 <puts@GLIBC_2.2.5>
  40347d:	48 8b 3d bc 2b 00 00 	mov    0x2bbc(%rip),%rdi        # 406040 <stdout@GLIBC_2.2.5>
  403484:	ff 15 ee 2a 00 00    	call   *0x2aee(%rip)        # 405f78 <fflush@GLIBC_2.2.5>
  40348a:	5b                   	pop    %rbx
  40348b:	5d                   	pop    %rbp
  40348c:	41 5c                	pop    %r12
  40348e:	c3                   	ret    

000000000040348f <launch>:
  40348f:	55                   	push   %rbp
  403490:	53                   	push   %rbx
  403491:	48 81 ec b8 07 00 00 	sub    $0x7b8,%rsp
  403498:	89 fb                	mov    %edi,%ebx
  40349a:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
  40349f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4034a6:	00 00 
  4034a8:	48 89 84 24 a8 07 00 	mov    %rax,0x7a8(%rsp)
  4034af:	00 
  4034b0:	31 c0                	xor    %eax,%eax
  4034b2:	85 ff                	test   %edi,%edi
  4034b4:	74 7c                	je     403532 <launch+0xa3>
  4034b6:	48 8b 2d 63 2b 00 00 	mov    0x2b63(%rip),%rbp        # 406020 <stable_stack_addr>
  4034bd:	85 db                	test   %ebx,%ebx
  4034bf:	74 78                	je     403539 <launch+0xaa>
  4034c1:	b9 22 00 10 00       	mov    $0x100022,%ecx
  4034c6:	85 db                	test   %ebx,%ebx
  4034c8:	74 76                	je     403540 <launch+0xb1>
  4034ca:	ba 07 00 00 00       	mov    $0x7,%edx
  4034cf:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  4034d5:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  4034db:	48 8b 35 36 2b 00 00 	mov    0x2b36(%rip),%rsi        # 406018 <stack_size>
  4034e2:	48 89 ef             	mov    %rbp,%rdi
  4034e5:	ff 15 0d 2a 00 00    	call   *0x2a0d(%rip)        # 405ef8 <mmap@GLIBC_2.2.5>
  4034eb:	48 89 04 24          	mov    %rax,(%rsp)
  4034ef:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  4034f3:	74 52                	je     403547 <launch+0xb8>
  4034f5:	85 db                	test   %ebx,%ebx
  4034f7:	74 66                	je     40355f <launch+0xd0>
  4034f9:	48 8b 0d 20 2b 00 00 	mov    0x2b20(%rip),%rcx        # 406020 <stable_stack_addr>
  403500:	48 39 e9             	cmp    %rbp,%rcx
  403503:	74 5a                	je     40355f <launch+0xd0>
  403505:	4c 8b 04 24          	mov    (%rsp),%r8
  403509:	48 8d 15 a0 11 00 00 	lea    0x11a0(%rip),%rdx        # 4046b0 <is_checker+0x3c0>
  403510:	be 01 00 00 00       	mov    $0x1,%esi
  403515:	48 8b 3d 84 2b 00 00 	mov    0x2b84(%rip),%rdi        # 4060a0 <stderr@GLIBC_2.2.5>
  40351c:	b8 00 00 00 00       	mov    $0x0,%eax
  403521:	ff 15 b1 2a 00 00    	call   *0x2ab1(%rip)        # 405fd8 <__fprintf_chk@GLIBC_2.3.4>
  403527:	bf 01 00 00 00       	mov    $0x1,%edi
  40352c:	ff 15 96 2a 00 00    	call   *0x2a96(%rip)        # 405fc8 <exit@GLIBC_2.2.5>
  403532:	bd 00 00 00 00       	mov    $0x0,%ebp
  403537:	eb 84                	jmp    4034bd <launch+0x2e>
  403539:	b9 22 00 00 00       	mov    $0x22,%ecx
  40353e:	eb 86                	jmp    4034c6 <launch+0x37>
  403540:	ba 03 00 00 00       	mov    $0x3,%edx
  403545:	eb 88                	jmp    4034cf <launch+0x40>
  403547:	48 8d 3d 42 11 00 00 	lea    0x1142(%rip),%rdi        # 404690 <is_checker+0x3a0>
  40354e:	ff 15 5c 2a 00 00    	call   *0x2a5c(%rip)        # 405fb0 <perror@GLIBC_2.2.5>
  403554:	bf 01 00 00 00       	mov    $0x1,%edi
  403559:	ff 15 69 2a 00 00    	call   *0x2a69(%rip)        # 405fc8 <exit@GLIBC_2.2.5>
  40355f:	48 8b 15 b2 2a 00 00 	mov    0x2ab2(%rip),%rdx        # 406018 <stack_size>
  403566:	be f4 00 00 00       	mov    $0xf4,%esi
  40356b:	48 8b 3c 24          	mov    (%rsp),%rdi
  40356f:	ff 15 9b 29 00 00    	call   *0x299b(%rip)        # 405f10 <memset@GLIBC_2.2.5>
  403575:	48 8d bc 24 e0 03 00 	lea    0x3e0(%rsp),%rdi
  40357c:	00 
  40357d:	ff 15 6d 2a 00 00    	call   *0x2a6d(%rip)        # 405ff0 <getcontext@GLIBC_2.2.5>
  403583:	85 c0                	test   %eax,%eax
  403585:	74 18                	je     40359f <launch+0x110>
  403587:	48 8d 3d ea 10 00 00 	lea    0x10ea(%rip),%rdi        # 404678 <is_checker+0x388>
  40358e:	ff 15 1c 2a 00 00    	call   *0x2a1c(%rip)        # 405fb0 <perror@GLIBC_2.2.5>
  403594:	bf 01 00 00 00       	mov    $0x1,%edi
  403599:	ff 15 29 2a 00 00    	call   *0x2a29(%rip)        # 405fc8 <exit@GLIBC_2.2.5>
  40359f:	48 8b 04 24          	mov    (%rsp),%rax
  4035a3:	48 89 84 24 f0 03 00 	mov    %rax,0x3f0(%rsp)
  4035aa:	00 
  4035ab:	c7 84 24 f8 03 00 00 	movl   $0x0,0x3f8(%rsp)
  4035b2:	00 00 00 00 
  4035b6:	48 8b 05 5b 2a 00 00 	mov    0x2a5b(%rip),%rax        # 406018 <stack_size>
  4035bd:	48 89 84 24 00 04 00 	mov    %rax,0x400(%rsp)
  4035c4:	00 
  4035c5:	48 8d 5c 24 10       	lea    0x10(%rsp),%rbx
  4035ca:	48 89 9c 24 e8 03 00 	mov    %rbx,0x3e8(%rsp)
  4035d1:	00 
  4035d2:	48 8d ac 24 e0 03 00 	lea    0x3e0(%rsp),%rbp
  4035d9:	00 
  4035da:	ba 00 00 00 00       	mov    $0x0,%edx
  4035df:	48 8d 35 f5 fc ff ff 	lea    -0x30b(%rip),%rsi        # 4032db <launch_in_altstack>
  4035e6:	48 89 ef             	mov    %rbp,%rdi
  4035e9:	b8 00 00 00 00       	mov    $0x0,%eax
  4035ee:	ff 15 5c 29 00 00    	call   *0x295c(%rip)        # 405f50 <makecontext@GLIBC_2.2.5>
  4035f4:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  4035f9:	48 89 05 d0 2a 00 00 	mov    %rax,0x2ad0(%rip)        # 4060d0 <launch_stack_offset>
  403600:	48 89 ee             	mov    %rbp,%rsi
  403603:	48 89 df             	mov    %rbx,%rdi
  403606:	ff 15 f4 28 00 00    	call   *0x28f4(%rip)        # 405f00 <swapcontext@GLIBC_2.2.5>
  40360c:	85 c0                	test   %eax,%eax
  40360e:	74 0d                	je     40361d <launch+0x18e>
  403610:	48 8d 3d 6c 10 00 00 	lea    0x106c(%rip),%rdi        # 404683 <is_checker+0x393>
  403617:	ff 15 93 29 00 00    	call   *0x2993(%rip)        # 405fb0 <perror@GLIBC_2.2.5>
  40361d:	48 8d 35 bc 10 00 00 	lea    0x10bc(%rip),%rsi        # 4046e0 <is_checker+0x3f0>
  403624:	bf 00 00 00 00       	mov    $0x0,%edi
  403629:	b8 00 00 00 00       	mov    $0x0,%eax
  40362e:	67 e8 49 fa ff ff    	addr32 call 40307d <notify_fail>

0000000000403634 <check>:
  403634:	89 f8                	mov    %edi,%eax
  403636:	c1 e8 1c             	shr    $0x1c,%eax
  403639:	74 1d                	je     403658 <check+0x24>
  40363b:	b9 00 00 00 00       	mov    $0x0,%ecx
  403640:	83 f9 1f             	cmp    $0x1f,%ecx
  403643:	7f 0d                	jg     403652 <check+0x1e>
  403645:	89 f8                	mov    %edi,%eax
  403647:	d3 e8                	shr    %cl,%eax
  403649:	3c 0a                	cmp    $0xa,%al
  40364b:	74 11                	je     40365e <check+0x2a>
  40364d:	83 c1 08             	add    $0x8,%ecx
  403650:	eb ee                	jmp    403640 <check+0xc>
  403652:	b8 01 00 00 00       	mov    $0x1,%eax
  403657:	c3                   	ret    
  403658:	b8 00 00 00 00       	mov    $0x0,%eax
  40365d:	c3                   	ret    
  40365e:	b8 00 00 00 00       	mov    $0x0,%eax
  403663:	c3                   	ret    

0000000000403664 <gencookie>:
  403664:	53                   	push   %rbx
  403665:	83 c7 01             	add    $0x1,%edi
  403668:	ff 15 42 28 00 00    	call   *0x2842(%rip)        # 405eb0 <srandom@GLIBC_2.2.5>
  40366e:	ff 15 f4 28 00 00    	call   *0x28f4(%rip)        # 405f68 <random@GLIBC_2.2.5>
  403674:	89 c3                	mov    %eax,%ebx
  403676:	89 c7                	mov    %eax,%edi
  403678:	e8 b7 ff ff ff       	call   403634 <check>
  40367d:	85 c0                	test   %eax,%eax
  40367f:	74 ed                	je     40366e <gencookie+0xa>
  403681:	89 d8                	mov    %ebx,%eax
  403683:	5b                   	pop    %rbx
  403684:	c3                   	ret    

0000000000403685 <autolab_submit_file>:
  403685:	53                   	push   %rbx
  403686:	48 83 ec 58          	sub    $0x58,%rsp
  40368a:	49 89 f8             	mov    %rdi,%r8
  40368d:	49 89 f1             	mov    %rsi,%r9
  403690:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  403697:	00 00 
  403699:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
  40369e:	31 c0                	xor    %eax,%eax
  4036a0:	48 8d 1d 69 0d 00 00 	lea    0xd69(%rip),%rbx        # 404410 <is_checker+0x120>
  4036a7:	48 89 5c 24 18       	mov    %rbx,0x18(%rsp)
  4036ac:	48 8d 0d 6d 10 00 00 	lea    0x106d(%rip),%rcx        # 404720 <hex_digit.0+0x10>
  4036b3:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
  4036b8:	48 89 7c 24 28       	mov    %rdi,0x28(%rsp)
  4036bd:	48 89 74 24 30       	mov    %rsi,0x30(%rsp)
  4036c2:	48 8d 05 5e 10 00 00 	lea    0x105e(%rip),%rax        # 404727 <hex_digit.0+0x17>
  4036c9:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  4036ce:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
  4036d5:	00 00 
  4036d7:	50                   	push   %rax
  4036d8:	48 89 da             	mov    %rbx,%rdx
  4036db:	48 8d 35 48 10 00 00 	lea    0x1048(%rip),%rsi        # 40472a <hex_digit.0+0x1a>
  4036e2:	bf 01 00 00 00       	mov    $0x1,%edi
  4036e7:	b8 00 00 00 00       	mov    $0x0,%eax
  4036ec:	ff 15 a6 28 00 00    	call   *0x28a6(%rip)        # 405f98 <__printf_chk@GLIBC_2.3.4>
  4036f2:	48 8b 3d 47 29 00 00 	mov    0x2947(%rip),%rdi        # 406040 <stdout@GLIBC_2.2.5>
  4036f9:	ff 15 79 28 00 00    	call   *0x2879(%rip)        # 405f78 <fflush@GLIBC_2.2.5>
  4036ff:	48 8d 7c 24 18       	lea    0x18(%rsp),%rdi
  403704:	4c 8b 0d 55 29 00 00 	mov    0x2955(%rip),%r9        # 406060 <__environ@GLIBC_2.2.5>
  40370b:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
  403710:	b9 00 00 00 00       	mov    $0x0,%ecx
  403715:	ba 00 00 00 00       	mov    $0x0,%edx
  40371a:	48 89 de             	mov    %rbx,%rsi
  40371d:	ff 15 5d 28 00 00    	call   *0x285d(%rip)        # 405f80 <posix_spawnp@GLIBC_2.15>
  403723:	48 83 c4 10          	add    $0x10,%rsp
  403727:	85 c0                	test   %eax,%eax
  403729:	74 1a                	je     403745 <autolab_submit_file+0xc0>
  40372b:	48 8b 54 24 48       	mov    0x48(%rsp),%rdx
  403730:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  403737:	00 00 
  403739:	0f 85 c8 00 00 00    	jne    403807 <autolab_submit_file+0x182>
  40373f:	48 83 c4 50          	add    $0x50,%rsp
  403743:	5b                   	pop    %rbx
  403744:	c3                   	ret    
  403745:	48 8d 74 24 0c       	lea    0xc(%rsp),%rsi
  40374a:	ba 00 00 00 00       	mov    $0x0,%edx
  40374f:	8b 7c 24 08          	mov    0x8(%rsp),%edi
  403753:	ff 15 47 28 00 00    	call   *0x2847(%rip)        # 405fa0 <waitpid@GLIBC_2.2.5>
  403759:	83 f8 ff             	cmp    $0xffffffff,%eax
  40375c:	74 3a                	je     403798 <autolab_submit_file+0x113>
  40375e:	8b 4c 24 0c          	mov    0xc(%rsp),%ecx
  403762:	89 cf                	mov    %ecx,%edi
  403764:	83 e7 7f             	and    $0x7f,%edi
  403767:	75 39                	jne    4037a2 <autolab_submit_file+0x11d>
  403769:	0f b6 c5             	movzbl %ch,%eax
  40376c:	f6 c5 ff             	test   $0xff,%ch
  40376f:	74 ba                	je     40372b <autolab_submit_file+0xa6>
  403771:	89 c1                	mov    %eax,%ecx
  403773:	48 8d 15 ca 0f 00 00 	lea    0xfca(%rip),%rdx        # 404744 <hex_digit.0+0x34>
  40377a:	be 01 00 00 00       	mov    $0x1,%esi
  40377f:	48 8b 3d 1a 29 00 00 	mov    0x291a(%rip),%rdi        # 4060a0 <stderr@GLIBC_2.2.5>
  403786:	b8 00 00 00 00       	mov    $0x0,%eax
  40378b:	ff 15 47 28 00 00    	call   *0x2847(%rip)        # 405fd8 <__fprintf_chk@GLIBC_2.3.4>
  403791:	b8 46 00 00 00       	mov    $0x46,%eax
  403796:	eb 93                	jmp    40372b <autolab_submit_file+0xa6>
  403798:	ff 15 0a 27 00 00    	call   *0x270a(%rip)        # 405ea8 <__errno_location@GLIBC_2.2.5>
  40379e:	8b 00                	mov    (%rax),%eax
  4037a0:	eb 89                	jmp    40372b <autolab_submit_file+0xa6>
  4037a2:	89 c8                	mov    %ecx,%eax
  4037a4:	83 e0 7f             	and    $0x7f,%eax
  4037a7:	83 c0 01             	add    $0x1,%eax
  4037aa:	3c 01                	cmp    $0x1,%al
  4037ac:	7e 31                	jle    4037df <autolab_submit_file+0x15a>
  4037ae:	ff 15 d4 27 00 00    	call   *0x27d4(%rip)        # 405f88 <strsignal@GLIBC_2.2.5>
  4037b4:	48 89 c1             	mov    %rax,%rcx
  4037b7:	48 8d 15 9f 0f 00 00 	lea    0xf9f(%rip),%rdx        # 40475d <hex_digit.0+0x4d>
  4037be:	be 01 00 00 00       	mov    $0x1,%esi
  4037c3:	48 8b 3d d6 28 00 00 	mov    0x28d6(%rip),%rdi        # 4060a0 <stderr@GLIBC_2.2.5>
  4037ca:	b8 00 00 00 00       	mov    $0x0,%eax
  4037cf:	ff 15 03 28 00 00    	call   *0x2803(%rip)        # 405fd8 <__fprintf_chk@GLIBC_2.3.4>
  4037d5:	b8 46 00 00 00       	mov    $0x46,%eax
  4037da:	e9 4c ff ff ff       	jmp    40372b <autolab_submit_file+0xa6>
  4037df:	48 8d 15 8b 0f 00 00 	lea    0xf8b(%rip),%rdx        # 404771 <hex_digit.0+0x61>
  4037e6:	be 01 00 00 00       	mov    $0x1,%esi
  4037eb:	48 8b 3d ae 28 00 00 	mov    0x28ae(%rip),%rdi        # 4060a0 <stderr@GLIBC_2.2.5>
  4037f2:	b8 00 00 00 00       	mov    $0x0,%eax
  4037f7:	ff 15 db 27 00 00    	call   *0x27db(%rip)        # 405fd8 <__fprintf_chk@GLIBC_2.3.4>
  4037fd:	b8 46 00 00 00       	mov    $0x46,%eax
  403802:	e9 24 ff ff ff       	jmp    40372b <autolab_submit_file+0xa6>
  403807:	ff 15 db 26 00 00    	call   *0x26db(%rip)        # 405ee8 <__stack_chk_fail@GLIBC_2.4>

000000000040380d <autolab_submit_stream>:
  40380d:	41 56                	push   %r14
  40380f:	41 55                	push   %r13
  403811:	41 54                	push   %r12
  403813:	55                   	push   %rbp
  403814:	53                   	push   %rbx
  403815:	48 83 ec 20          	sub    $0x20,%rsp
  403819:	49 89 fd             	mov    %rdi,%r13
  40381c:	48 89 f3             	mov    %rsi,%rbx
  40381f:	49 89 d6             	mov    %rdx,%r14
  403822:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  403829:	00 00 
  40382b:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  403830:	31 c0                	xor    %eax,%eax
  403832:	48 b8 2e 61 73 75 62 	movabs $0x585858627573612e,%rax
  403839:	58 58 58 
  40383c:	48 89 44 24 0c       	mov    %rax,0xc(%rsp)
  403841:	c7 44 24 14 58 58 58 	movl   $0x585858,0x14(%rsp)
  403848:	00 
  403849:	48 8d 7c 24 0c       	lea    0xc(%rsp),%rdi
  40384e:	be 00 00 08 00       	mov    $0x80000,%esi
  403853:	ff 15 af 26 00 00    	call   *0x26af(%rip)        # 405f08 <mkostemp@GLIBC_2.7>
  403859:	83 f8 ff             	cmp    $0xffffffff,%eax
  40385c:	74 3e                	je     40389c <autolab_submit_stream+0x8f>
  40385e:	89 c5                	mov    %eax,%ebp
  403860:	48 8d 35 26 0f 00 00 	lea    0xf26(%rip),%rsi        # 40478d <hex_digit.0+0x7d>
  403867:	89 c7                	mov    %eax,%edi
  403869:	ff 15 21 27 00 00    	call   *0x2721(%rip)        # 405f90 <fdopen@GLIBC_2.2.5>
  40386f:	49 89 c4             	mov    %rax,%r12
  403872:	48 85 c0             	test   %rax,%rax
  403875:	74 4c                	je     4038c3 <autolab_submit_stream+0xb6>
  403877:	4c 89 f6             	mov    %r14,%rsi
  40387a:	48 89 c7             	mov    %rax,%rdi
  40387d:	ff d3                	call   *%rbx
  40387f:	89 c3                	mov    %eax,%ebx
  403881:	85 c0                	test   %eax,%eax
  403883:	75 50                	jne    4038d5 <autolab_submit_stream+0xc8>
  403885:	4c 89 e7             	mov    %r12,%rdi
  403888:	ff 15 42 26 00 00    	call   *0x2642(%rip)        # 405ed0 <fclose@GLIBC_2.2.5>
  40388e:	85 c0                	test   %eax,%eax
  403890:	74 4e                	je     4038e0 <autolab_submit_stream+0xd3>
  403892:	ff 15 10 26 00 00    	call   *0x2610(%rip)        # 405ea8 <__errno_location@GLIBC_2.2.5>
  403898:	8b 18                	mov    (%rax),%ebx
  40389a:	eb 08                	jmp    4038a4 <autolab_submit_stream+0x97>
  40389c:	ff 15 06 26 00 00    	call   *0x2606(%rip)        # 405ea8 <__errno_location@GLIBC_2.2.5>
  4038a2:	8b 18                	mov    (%rax),%ebx
  4038a4:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  4038a9:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4038b0:	00 00 
  4038b2:	75 3d                	jne    4038f1 <autolab_submit_stream+0xe4>
  4038b4:	89 d8                	mov    %ebx,%eax
  4038b6:	48 83 c4 20          	add    $0x20,%rsp
  4038ba:	5b                   	pop    %rbx
  4038bb:	5d                   	pop    %rbp
  4038bc:	41 5c                	pop    %r12
  4038be:	41 5d                	pop    %r13
  4038c0:	41 5e                	pop    %r14
  4038c2:	c3                   	ret    
  4038c3:	ff 15 df 25 00 00    	call   *0x25df(%rip)        # 405ea8 <__errno_location@GLIBC_2.2.5>
  4038c9:	8b 18                	mov    (%rax),%ebx
  4038cb:	89 ef                	mov    %ebp,%edi
  4038cd:	ff 15 55 26 00 00    	call   *0x2655(%rip)        # 405f28 <close@GLIBC_2.2.5>
  4038d3:	eb cf                	jmp    4038a4 <autolab_submit_stream+0x97>
  4038d5:	4c 89 e7             	mov    %r12,%rdi
  4038d8:	ff 15 f2 25 00 00    	call   *0x25f2(%rip)        # 405ed0 <fclose@GLIBC_2.2.5>
  4038de:	eb c4                	jmp    4038a4 <autolab_submit_stream+0x97>
  4038e0:	48 8d 74 24 0c       	lea    0xc(%rsp),%rsi
  4038e5:	4c 89 ef             	mov    %r13,%rdi
  4038e8:	e8 98 fd ff ff       	call   403685 <autolab_submit_file>
  4038ed:	89 c3                	mov    %eax,%ebx
  4038ef:	eb b3                	jmp    4038a4 <autolab_submit_stream+0x97>
  4038f1:	ff 15 f1 25 00 00    	call   *0x25f1(%rip)        # 405ee8 <__stack_chk_fail@GLIBC_2.4>

Disassembly of section .fini:

00000000004038f8 <_fini>:
  4038f8:	f3 0f 1e fa          	endbr64 
  4038fc:	48 83 ec 08          	sub    $0x8,%rsp
  403900:	48 83 c4 08          	add    $0x8,%rsp
  403904:	c3                   	ret    
