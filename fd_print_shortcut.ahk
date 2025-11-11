#Requires AutoHotkey v2.0
;Author: Michael Stenz
 
WaitForWindow(name)
{
	while !(WinExist(name))
	{
		Sleep 100
	}
	WinActivate
}
WaitForWindowClose(name)
{
	while (WinExist(name))
	{
		Sleep 100
	}
}
 
 
^PrintScreen::
{
 
	if WinExist("Terminliste") {
		MouseGetPos &xpos, &ypos, &varWin
		WinActivate ; Use the window found by WinExist.
		CoordMode "Mouse", "Window" ;Sets the coordinate system relative to the active window
		Click 495, 52
		Click 545, 113
		Click 743, 175
		WaitForWindow("Report: Ausdrucksvorschau")
		Click 38, 99
		WaitForWindow("Drucken")
		Click 393, 431 ;Print Button
		WaitForWindowClose("Drucken")
		Sleep 300
		WinClose("Report: Ausdrucksvorschau")
		Send "{Down}"
		CoordMode "Mouse", "Screen"
		MouseMove xpos, ypos
		Send "{Down}"
	} else 
	{
		MsgBox "Window: Terminliste not found."
	}
}

/*
+PrintScreen::
{	
	CoordMode "Mouse", "Window" ;Sets the coordinate system relative to the active window
	MouseGetPos &xpos, &ypos, &varWin
	MsgBox "The cursor is at X" xpos " Y" ypos "and the window: " varWin
}
*/
