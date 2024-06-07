/*
 * CS:APP Data Lab
 *
 * <Zilong Guo,  zilongg>
 *
 *
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 */

/* Instructions to Students:

You will provide your solution to the Data Lab by
editing the collection of functions in this source file.

INTEGER CODING RULES:

  Replace the "return" statement in each function with one
  or more lines of C code that implements the function. Your code
  must conform to the following style:

  long Funct(long arg1, long arg2, ...) {
      // brief description of how your implementation works
      long var1 = Expr1;
      ...
      long varM = ExprM;

      varJ = ExprJ;
      ...
      varN = ExprN;
      return ExprR;
  }

  Each "Expr" is an expression using ONLY the following:
  1. (Long) integer constants 0 through 255 (0xFFL), inclusive. You are
      not allowed to use big constants such as 0xffffffffL.
  2. Function arguments and local variables (no global variables).
  3. Local variables of type int and long
  4. Unary integer operations ! ~
     - Their arguments can have types int or long
     - Note that ! always returns int, even if the argument is long
  5. Binary integer operations & ^ | + << >>
     - Their arguments can have types int or long
  6. Casting from int to long and from long to int

  Some of the problems restrict the set of allowed operators even further.
  Each "Expr" may consist of multiple operators. You are not restricted to
  one operator per line.

  You are expressly forbidden to:
  1. Use any control constructs such as if, do, while, for, switch, etc.
  2. Define or use any macros.
  3. Define any additional functions in this file.
  4. Call any functions.
  5. Use any other operations, such as &&, ||, -, or ?:
  6. Use any form of casting other than between int and long.
  7. Use any data type other than int or long.  This implies that you
     cannot use arrays, structs, or unions.

  You may assume that your machine:
  1. Uses 2s complement representations for int and long.
  2. Data type int is 32 bits, long is 64.
  3. Performs right shifts arithmetically.
  4. Has unpredictable behavior when shifting if the shift amount
     is less than 0 or greater than 31 (int) or 63 (long)

EXAMPLES OF ACCEPTABLE CODING STYLE:
  //
  // pow2plus1 - returns 2^x + 1, where 0 <= x <= 63
  //
  long pow2plus1(long x) {
     // exploit ability of shifts to compute powers of 2
     // Note that the 'L' indicates a long constant
     return (1L << x) + 1L;
  }

  //
  // pow2plus4 - returns 2^x + 4, where 0 <= x <= 63
  //
  long pow2plus4(long x) {
     // exploit ability of shifts to compute powers of 2
     long result = (1L << x);
     result += 4L;
     return result;
  }

NOTES:
  1. Use the dlc (data lab checker) compiler (described in the handout) to
     check the legality of your solutions.
  2. Each function has a maximum number of operations (integer, logical,
     or comparison) that you are allowed to use for your implementation
     of the function.  The max operator count is checked by dlc.
     Note that assignment ('=') is not counted; you may use as many of
     these as you want without penalty.
  3. Use the btest test harness to check your functions for correctness.
  4. Use the BDD checker to formally verify your functions
  5. The maximum number of ops for each function is given in the
     header comment for each function. If there are any inconsistencies
     between the maximum ops in the writeup and in this file, consider
     this file the authoritative source.

CAUTION:
  Do not add an #include of <stdio.h> (or any other C library header)
  to this file.  C library headers almost always contain constructs
  that dlc does not understand.  For debugging, you can use printf,
  which is declared for you just below.  It is normally bad practice
  to declare C library functions by hand, but in this case it's less
  trouble than any alternative.

  dlc will consider each call to printf to be a violation of the
  coding style (function calls, after all, are not allowed) so you
  must remove all your debugging printf's again before submitting your
  code or testing it with dlc or the BDD checker.  */

extern int printf(const char *, ...);

/* Edit the functions below.  Good luck!  */
// 1
/*
 * bitXor - x^y using only ~ and &
 *   Example: bitXor(4L, 5L) = 1L
 *   Legal ops: ~ &
 *   Max ops: 14
 *   Rating: 1
 */
long bitXor(long x, long y) {
    long notXandY = ~(x & y);
    long notnotXandNotY = ~(~x & ~y);
    return notXandY & notnotXandNotY;
}

/*
 * tmin - return minimum two's complement long integer
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 4
 *   Rating: 1
 */
long tmin(void) {
    // 1000...
    return 1L << 63;
}
/*
 * isTmax - returns 1 if x is the maximum, two's complement number,
 *     and 0 otherwise
 *   Legal ops: ! ~ & ^ | +
 *   Max ops: 10
 *   Rating: 1
 */
long isTmax(long x) {
    // 0x7FFFF...  01111111...
    long y = x + 1;
    // if x is not max, then x + y will not be -1. if x is max, y must be non 0.
    return !(~(x + y) | !y);
}

// 2
/*
 * allOddBits - return 1 if all odd-numbered bits in word set to 1
 *   where bits are numbered from 0 (least significant) to 63 (most significant)
 *   Examples: allOddBits(0xFFFFFFFDFFFFFFFDL) = 0L,
 *             allOddBits(0xAAAAAAAAAAAAAAAAL) = 1L
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 14
 *   Rating: 2
 */
long allOddBits(long x) {
    long patter = 0xAA;
    patter = (patter << 8) | patter;
    patter = (patter << 16) | patter;
    patter = (patter << 32) | patter;
    return !((x & patter) ^ patter);
}
/*
 * negate - return -x
 *   Example: negate(1L) = -1L.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 5
 *   Rating: 2
 */
long negate(long x) {
    return ~x + 1;
}
// 3
/*
 * conditional - same as x ? y : z
 *   Example: conditional(2,4L,5L) = 4L
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 16
 *   Rating: 3
 */
long conditional(long x, long y, long z) {
    long mask = (!x + ~0);
    return (mask & y) | (~mask & z);
}
/*
 * rotateLeft - Rotate x to the left by n
 *   Can assume that 0 <= n <= 63
 *   Examples:
 *      rotateLeft(0x8765432187654321L,4L) = 0x7654321876543218L
 *   Legal ops: ~ & ^ | + << >> !
 *   Max ops: 25
 *   Rating: 3
 */
long rotateLeft(long x, long n) {
    long nRight = 64 + (~n + 1);
    long leftPart = x << n;
    long rightPart = (x >> nRight) & ~((1L << 63) >> (63 + (~n + 1)));
    return leftPart | rightPart;
}
/*
 * isLessOrEqual - if x <= y  then return 1, else return 0
 *   Example: isLessOrEqual(4L,5L) = 1L.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 24
 *   Rating: 3
 */
long isLessOrEqual(long x, long y) {
    // y - x
    long diff = y + (~x + 1);
    // sign bit of the difference
    long signDiff = (diff >> 63) & 1;
    long signX = (x >> 63) & 1;
    long signY = (y >> 63) & 1;
    // x <= y if
    // x is negative and y is non-negatibe
    // or x and y have the same sign and diff is non-negative (signDiff = 0)
    return (signX & !signY) | (!(signX ^ signY) & !signDiff);
}
// 4
/*
 * allAsciiDigits - return 1 if each byte b in x satisfies
 *   0x30 <= b <= 0x39 (ASCII codes for characters '0' to '9')
 *   Example: allAsciiDigits(0x3031323536373839L) = 1L.
 *            allAsciiDigits(0x4031323536373839L) = 0L.
 *            allAsciiDigits(0x0031323536373839L) = 0L.
 *   Legal ops: ! ~ & ^ | << >>
 *   Max ops: 30
 *   Rating: 4
 */
long allAsciiDigits(long x) {
    // long mask = 0x3030303030303030L;
    long mask = 0x30L;
    mask = (mask << 8) | 0x30L;
    mask = (mask << 16) | mask;
    mask = (mask << 32) | mask;

    // long upperMask = 0xF0F0F0F0F0F0F0F0L;
    long upperMask = 0xF0L;
    upperMask = (upperMask << 8) | 0xF0L;
    upperMask = (upperMask << 16) | upperMask;
    upperMask = (upperMask << 32) | upperMask;
    // upperMask = 0x0f0f0f0f0f0f0f0fL;
    long lowerMask = ~upperMask;

    long checkUpper = !((x & upperMask) ^ mask);

    // after shift to right 1 bit mask 0101
    long lowerLimit3Bits = 0x05L;
    lowerLimit3Bits = (lowerLimit3Bits << 8) | 0x05L;
    lowerLimit3Bits = (lowerLimit3Bits << 16) | lowerLimit3Bits;
    lowerLimit3Bits = (lowerLimit3Bits << 32) | lowerLimit3Bits;

    // after shift to right 2 bit mask 0011, which is mask

    // check lower four bits
    long checkLowerShift1Bits = (((x >> 1) & lowerMask) ^ lowerLimit3Bits);
    long checkLowerShift2Bits = (((x >> 2) & lowerMask) ^ mask);

    long checkLower = checkLowerShift1Bits & checkLowerShift2Bits;
    long result = checkUpper & checkLower;
    // check if there a illgeal byte
    return result;
}

/*
 * bitParity - returns 1 if x contains an odd number of 0's
 *   Examples: bitParity(5L) = 0L, bitParity(7L) = 1L
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 22
 *   Rating: 4
 */
long bitParity(long x) {
    x ^= x >> 32;
    x ^= x >> 16;
    x ^= x >> 8;
    x ^= x >> 4;
    x ^= x >> 2;
    x ^= x >> 1;
    return x & 1L;
}
/*
 * logicalNeg - implement the ! operator, using all of
 *              the legal operators except !
 *   Examples: logicalNeg(3L) = 0L, logicalNeg(0L) = 1L
 *   Legal ops: ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 4
 */
long logicalNeg(long x) {
    // x is non-zero makesure sign bit is 1 then +1.
    return ((x | (~x + 1L)) >> 63) + 1L;
}
// float
/*
 * floatIsLess - Compute f < g for floating point arguments f and g.
 *   Both the arguments are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representations of
 *   single-precision floating point values.
 *   If either argument is NaN, return 0.
 *   +0 and -0 are considered equal.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 3
 */
int floatIsLess(unsigned uf, unsigned ug) {
    unsigned signF = uf >> 31;
    unsigned signG = ug >> 31;
    unsigned expF = (uf >> 23) & 0xFF;
    unsigned expG = (ug >> 23) & 0xFF;
    unsigned fracF = uf & 0x7FFFFF;
    unsigned fracG = ug & 0x7FFFFF;

    // Check NaN
    int isNaNF = (expF == 0xFF && fracF != 0);
    int isNaNG = (expG == 0xFF && fracG != 0);
    if (isNaNF || isNaNG)
        return 0;

    // +0,-0
    if ((uf << 1) == 0 && (ug << 1) == 0)
        return 0;

    // different signs
    if (signF != signG)
        return signF > signG;

    // same sign
    if (signF == 0) {
        // Both positive
        if (expF != expG)
            return expF < expG;
        return fracF < fracG;
    } else {
        // Both negative
        if (expF != expG)
            return expF > expG;
        return fracF > fracG;
    }
}

/*
 * floatScale1d2 - Return bit-level equivalent of expression 0.5*f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representation of
 *   single-precision floating point values.
 *   When argument is NaN, return argument
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned floatScale1d2(unsigned uf) {
    unsigned sign = uf >> 31;
    unsigned exp = uf >> 23 & 0xff;
    unsigned frac = uf & ((1 << 23) - 1);

    // infinity or NaN.
    if (exp == 0xFF)
        return uf;
    // normalization case
    if (exp > 0) {
        exp--;
        // if 0, denomal add 1 to most significant bit
        if (exp == 0) {
            frac = frac + (1 << 23);
        }
    }
    // denomal
    if (exp == 0) {
        // exactly halfway between two representable values, round it to
        // even
        if ((frac & 0x3) != 0x3) {
            frac >>= 1;
        } else {
            frac >>= 1;
            frac += 1;
        }
    }

    return (sign << 31) | (exp << 23) | frac;
}

/*
 * floatUnsigned2Float - Return bit-level equivalent of expression (float) u
 *   Result is returned as unsigned int, but
 *   it is to be interpreted as the bit-level representation of a
 *   single-precision floating point values.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned floatUnsigned2Float(unsigned u) {
    unsigned sign = 0;
    unsigned exp = 31 + 127;
    unsigned frac;
    // 0x80000000
    unsigned leadingOne = 1 << 31;

    if (u == 0)
        return 0;
    // normalize
    while ((u & leadingOne) == 0) {
        u <<= 1;
        exp--;
    }
    // normalized u leading 1.shift right to fit the fraction part.  0x7FFFF
    // ->
    // ((1 << 23) - 1)
    frac = (u >> 8) & ((1 << 23) - 1);

    // Rounding up, if the 8th bit of the original is 1, and if the lower
    // bits are non-zero or the current least signfic bit of frac is 1
    if ((u & 0x80) && ((u & 0x7F) || (frac & 1))) {
        frac++;
        // 0x800000
        if (frac == (1 << 23)) {
            frac = 0;
            exp++;
        }
    }

    return (sign << 31) | (exp << 23) | frac;
}
