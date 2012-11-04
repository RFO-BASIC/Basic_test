REM Start of BASIC! Program
!
! Test a user function as a parameter
! for a user function.
!

fn.def boo(x)
print "boo"
fn.rtn x
fn.end

fn.def moo(y,z)
print "moo"
fn.end

call moo(boo(2),3)
