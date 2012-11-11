REM Start of BASIC! Program

! Tests for the Read feature

!Test numeric data
READ.DATA 1,+2,-3
READ.NEXT i,j,k
PRINT "Should print: 1,2,-3"
PRINT i,j,k

!Test string data
READ.DATA "a","b","c"
READ.NEXT p$,q$,r$
PRINT "Should print: a, b, c"
PRINT p$, q$, r$

!Test read.from
READ.FROM 2+3
READ.NEXT x$, y$
PRINT "Should print: b,c"
PRINT x$, y$

PRINT ""
PRINT "Error tests follow."
PRINT "Tests require lines uncommented."
PRINT ""

!Uncomment to test no more data
!read.next a

!Uncomment to test read.from too big
!read.from 8

READ.FROM 1
!uncomment to test type mismatch
!read.next t$
READ.FROM 4
!read.next d

!uncomment to test junk after parameter
!read.data 1"abc",2
!read.data "abc"1,2
!read.data 1,2;
!read.from 2;
!read.next a$+2

!uncomment to test invalid data
!read.data 1,a,"abc"

END
