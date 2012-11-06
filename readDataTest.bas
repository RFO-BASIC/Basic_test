REM Start of BASIC! Program

! Tests for the Read feature

!Test numeric data
read.data 1,2,3
read.next i,j,k
print "Should print: 1,2,3"
print i,j,k

!Test string data
read.data "a","b","c"
read.next p$,q$,r$
print "Should print: a, b, c"
print p$, q$, r$

!Test read.from
read.from 5
read.next x$, y$
print "Should print: b,c"
print x$, y$

print ""
print "Error tests follow."
print "Tests require lines uncommented."
print ""

!Uncomment to test no more data
!read.next a

!Uncomment to test read.from too big
!read.from 8

read.from 1
!uncomment to test type mismatch
!read.next t$
read.from 4
!read.next d
