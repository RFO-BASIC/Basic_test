REM Start of BASIC! Program

! Tests issue 12 in gitHub

GR.OPEN 255,0,0,0
GR.COLOR 255,0,255,0,2
GR.RECT r,0,0,200,200
GR.RENDER
GR.GET.PIXEL 100,100,a,r,g,b
PRINT "Should print: 255,0,255,0"
PRINT a,r,g,b
GR.GET.PIXEL 250,250, a,r,g,b
PRINT "Should print: 255,0,0,0"
PRINT a,r,g,b
GR.SAVE "test1.jpg"
GR.SCREEN.TO_BITMAP bp
GR.BITMAP.SAVE bp,"test2.jpg"
PRINT "Look for test1.jpg and test2.jpg"
PRINT "in /data/ directory"
GR.CLOSE
END
