! testing some of the string functions
! 
PRINT "This is version "+VERSION$()+" of RFO BASIC!"
a$="ababc"
b$="ab"
a=2
PRINT 0, IS_IN("d",a$)
PRINT 1, IS_IN("a",a$)
PRINT 3, IS_IN(b$,a$,2)
PRINT 2, IS_IN("ba",a$)
PRINT 3, IS_IN("a"+"bc",a$)
PRINT 1, IS_IN(a$,a$)
PRINT 5, IS_IN(a$,"ababababcaba")
PRINT 0, STARTS_WITH("d","abc",2)
PRINT 2, STARTS_WITH(b$,a$)
PRINT 0, STARTS_WITH(b$,a$,2)
PRINT 2, STARTS_WITH("ab",a$,3)
c$="bc"
PRINT 0, ENDS_WITH("d",a$)
PRINT 5, ENDS_WITH("c",a$)
PRINT 4, ENDS_WITH(c$,a$)
PRINT 3, ENDS_WITH("abc",a$)
PRINT 1, ENDS_WITH(a$,"ababc")
PRINT 43947, "hex ";b$;b$;" is decimal ";HEX(b$+b$)
oct$="1011001"
PRINT 89, 266753, "in decimal",oct$;" would be ";OCT(oct$);" if it were octal but ";BIN(oct$);" if binary"
PRINT 1011001, HEX$(16846849), OCT$(266753), BIN$(89)
s$="A "+"String"
PRINT "base string: ";s$
PRINT CHR$(ASCII(s$+s$)), LEFT$(s$,5)+"<--", MID$(s$,5)+""
PRINT MID$("ab"+"c"+"de",1+1,3)
PRINT RIGHT$("another"+RIGHT$(s$,7),12), REPLACE$(a$,b$,"b"+"a")
PRINT "pi", STR$(ATAN(1)*4)
PRINT "lower/UPPER: ";LOWER$(s$)+"/"+UPPER$(s$)
END
