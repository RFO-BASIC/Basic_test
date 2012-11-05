! touch most of the numeric functions, expecting only that there are no syntax errors
!
! except here, where values matter
PRINT "These value pairs must match:"
PRINT ROUND(-1.6);":";-2, ROUND(2.5555555-1.1111111);":";1

! values don't matter from here on, just syntax check
a=SIN(0)
b=1+SIN(0)+SIN(a)+1
c=COS(0)+TAN(0)+SQR(100)+ABS(-1)+CEIL(	EXP(LOG(10)))+FLOOR(LOG10(25))
d=TODEGREES(TORADIANS(45))+ROUND(ATAN(1)+ASIN(1)+ACOS(1)+ATAN2(a+b,c))
r=RANDOMIZE(5)
s$="123"
e=LEN(s$)+RND()+BACKGROUND()+VAL(s$)+ASCII(s$)+MOD(d,3)
f=BOR(6,BAND(BXOR(6,3),CLOCK()))
g=IS_IN(s$,s$,2)+STARTS_WITH("1",s$,2)+ENDS_WITH("3",s$)
h=HEX(s$+"4")+OCT(s$)+BIN("101100")+SHIFT(VAL(s$),-4-1)+SHIFT(1,a)
i=CBRT(8)+COSH(a)+SINH(a+b)+HYPOT(3,4)+POW(2,a+3)
PRINT "These values do not matter. Test passes if no syntax errors."
PRINT a, b, c, d, e, f, g, h, i
END
