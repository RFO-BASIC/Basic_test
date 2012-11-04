REM Start of BASIC! Program
!
! Encrypt and decrypt test
!
PW$ = "goodpassword"
ST$ = "hello world"
ENCRYPT PW$, ST$, L1$
ST$ = "goodbye universe"
ENCRYPT PW$, ST$, L2$
DECRYPT PW$, L1$, DEC$
print "Encrypted 1: [";L1$;"]"
print "Decrypted 1: [";DEC$;"]"
DECRYPT PW$, L2$, DEC$
print "Encrypted 2: [";L2$;"]"
print "Decrypted 2: [";DEC$;"]"

print "writing encrypted strings 1 & 2 to file..."

text.open W, FN1, "testfile"
text.writeln FN1, L1$
text.writeln FN1, L2$
text.close FN1

!Uncomment the next line to test a bad password ONERROR failure
!PW$="badpassword"

print "reading encrypted string from file..."

text.open R, FN2, "testfile"
do
text.readln FN2, a_line$
print "Read from file: [";a_line$;"]"
sc=0
if a_line$ = "" then
print "bl"
  sc=0
endif
if a_line$ = "EOF" then
  sc=1

endif

if sc=0 then

DECRYPT PW$, a_line$, DEC$
print "Decrypted file line: "; DEC$
endif

until a_line$ = "EOF"
text.close FN2

print "End of test"
end

onerror:
print "You failed to use the correct password"
end

!End of program
 
 
 
 
 
