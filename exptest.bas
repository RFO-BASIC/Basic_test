! A regression test for
! expression processing.
! The numbers on each line
! should match

a=sqr(1000/10)/10
print 1,a
a=(300+10^2)/4
print 100,a
a = 5 + (18) * 10
print 185,a
a= 2*(10) + 1
print 21, a

a$ ="abcd"
b$ = "defg"
print 1, a$< b$
print 1, a$<=b$
print 0, a$=b$
print 0, a$>= b$
print 0, a$>b$
 print 1, b$>a$
print 1, a$ = a$

print 0, a$ < a$ & 0
print 1, (a$ < b$) & 1

i = 0
print 0, i=1 | a$=b$
print 1, i=1 | a$=a$
print 0, a$=b$ | i = 1
print 1, a$=b$ | i = 0

print  8, 2+abs(-3) + 3
print  8, abs(-3) + 2 + 3
print  6, abs(3)*2
print  8, abs(3)*2+2
 
print  2, mod(7,2)*2
 
print 2, abs(-sqr(4)) 
 
print 1, "a" < "b"
print 0, !("a" < "b") 

print 6, bor(1,2)*2
print 3, band(3,1)+2
print 3, bxor(7,1)/2
print 25,val("50")/2
print 16,ascii(" ")/2
print 2,is_in("bc","abc")
print 2,ends_with("bc","abc")
print 5,hex("a")/2
print 12,oct("30")/2
print 4,bin("1000")/2
print 8,shift(8,-1)/2

dim a[44]
a[(1+1)*4] =10
print 10,a[8]

end 
 
 
 
 
 
