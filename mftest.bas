REM Start of BASIC! Program
!!
Test math functions
There are (in v01.75) 43 math functions.
This test touches 37 of them, just to make sure the right code runs.
The exceptions are in graphics: gr_collision
and the non-deterministic clock, time, and rnd,
and the deterministic but uninformative randomize and background

This test expects an exact match between expected and actual,
which is normally asking a bit much of floating point compares.
If it becomes a problem, we'll have to implement a "near match".
This should work for everything except EXP, test 13.
!!
DIM exp[40], act[40]
! one numeric argument
act[ 1] = SIN(20)
exp[ 1] = 0.9129452507276277
act[ 2] = COS(20)
exp[ 2] = 0.40808206181339196
act[ 3] = TAN(20)
exp[ 3] = 2.237160944224742
act[ 4] = SINH(0.5)
exp[ 4] = 0.5210953054937474
act[ 5] = COSH(0.5)
exp[ 5] = 1.1276259652063807
act[ 6] = SQR(2)
exp[ 6] = 1.4142135623730951
act[ 7] = CBRT(27)
exp[ 7] = 3.0
act[ 8] = ABS(-8)
exp[ 8] = 8.0
act[ 9] = CEIL(1.5)
exp[ 9] = 2.0
act[10] = FLOOR(1.5)
exp[10] = 1.0
act[11] = LOG(20)
exp[11] = 2.995732273553991
act[12] = LOG10(20)
exp[12] = 1.3010299956639813
act[13] = EXP(20)
exp[13] = 4.851651954097903E8
act[14] = TODEGREES(20)
exp[14] = 1145.9155902616465
act[15] = TORADIANS(20)
exp[15] = 0.3490658503988659
act[16] = ATAN(20)
exp[16] = 1.5208379310729538
act[17] = ACOS(0.5)
exp[17] = 1.0471975511965979
act[18] = ASIN(0.5)
exp[18] = 0.5235987755982989
act[19] = ROUND(1.5)
exp[19] = 2.0
! two numeric arguments
act[20] = MOD(47,14)
exp[20] = 5.0
act[21] = POW(3,4)
exp[21] = 81.0
act[22] = ATAN2(3,4)
exp[22] = 0.6435011087932844
act[23] = HYPOT(20,25)
exp[23] = 32.01562118716424
act[24] = BOR(5, 10)
exp[24] = 15.0
act[25] = BAND(14, 13)
exp[25] = 12.0
act[26] = BXOR(12, 6)
exp[26] = 10.0
act[27] = SHIFT(6, -1)
exp[27] = 12.0
! one string argument
act[28] = VAL("12.3")
exp[28] = 12.3
act[29] = LEN("four")
exp[29] = 4.0
act[30] = ASCII("q")
exp[30] = 113.0
act[31] = UCODE(CHR$(1234))
exp[31] = 1234.0
act[32] = HEX("64")
exp[32] = 100.0
act[33] = OCT("64")
exp[33] = 52.0
act[34] = BIN("101101")
exp[34] = 45.0
act[35] = IS_IN("s a","this is a test")
exp[35] = 7.0
act[36] = STARTS_WITH("this is", "this is a test")
exp[36] = 7.0
act[37] = ENDS_WITH("a test", "this is a test")
exp[37] = 9.0
FOR i = 1 TO 37
 PRINT RIGHT$(FORMAT$("##", i), 2); ": "; act[i]
 IF exp[i] <> act[i] THEN
  PRINT "EXPECTED "; exp[i]
  errors = errors + 1
 ENDIF
NEXT
PRINT RIGHT$(FORMAT$("#%", errors), 2); " error";
IF errors = 1 THEN print ELSE print "s"
END
