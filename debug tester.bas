REM Start of BASIC! Program
DEBUG.ON %turn debug on

err =1

REM    throw errors
IF err
 REM un comment to one to test
 REM thrown error

 !DEBUG.SHOW.STACK stack
 !DEBUG.SHOW.LIST list
 !DEBUG.SHOW.ARRAY array[]
 !DEBUG.SHOW.BUNDLE bundle

 REM will not throw errors
 !DEBUG.SHOW.SCALARS
 !DEBUG.SHOW.WATCH
 !DEBUG.SHOW.PROGRAM

ENDIF

REM define scalars to watch
DEBUG.WATCH x,y,z,a$
DEBUG.SHOW.WATCH %look at value

FN.DEF add(y,x)
 DEBUG.WATCH x,y,z
 z = x-y
 FN.RTN x-y
FN.END

z = 133
a$ = STR$(add(2,56))+"wow cool"
DEBUG.SHOW.PROGRAM
PRINT a$
PRINT add(add(12,15),add(54,34))

REM test clear and redefining
DEBUG.WATCH.CLEAR
DEBUG.WATCH a$
DEBUG.SHOW.WATCH
PRINT a$

REM test array
ARRAY.LOAD array[],1,2,3,4,5
DEBUG.SHOW.ARRAY array[]

REM test list
LIST.CREATE n,list
FOR i = 1 TO 5
 LIST.ADD list,i
NEXT
DEBUG.SHOW.LIST list

REM test stack
STACK.create n,stack
FOR i = 1 TO 5
 STACK.push stack,i
NEXT
DEBUG.SHOW.STACK stack

REM test bundle
BUNDLE.CREATE bundle
BUNDLE.PUT bundle,"one",1
BUNDLE.PUT bundle,"two",2
BUNDLE.PUT bundle,"three",3
DEBUG.SHOW.BUNDLE bundle

REM test show swapping

DEBUG.SHOW.ARRAY array[]
DEBUG.SHOW.STACK stack
DEBUG.SHOW.LIST list
DEBUG.SHOW.BUNDLE bundle
