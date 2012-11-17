! short test to exercise the preprocessor
!
_a = 5
a+=1
++a
a++
a_ = a / 3
print "Expect \"5.0, 3.0, 1.0\"
print _a, //
	//   		% note: TAB + '_'
a//
, a_
! manual test: add ? to previous line to verify syntax error highlighting

print "done with \"a+=1\" test"
end
