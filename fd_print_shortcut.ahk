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

; Shortcut for Printing (Strg+Print)
^PrintScreen::
{
	
	if WinExist("Terminliste") {
		MouseGetPos &xpos, &ypos, &varWin
		WinActivate ; Use the window found by WinExist.
		CoordMode "Mouse", "Window" ;Sets the coordinate system relative to the active window
		Click 495, 52 ; Ausdrucken Button
		Click 545, 113 ; Terminliste Button
		Click 743, 175 ; Report Fahrtendienst Button
		WaitForWindow("Report: Ausdrucksvorschau")
		Click 38, 99 ; Drucken Button
		WaitForWindow("Drucken")
		Click 393, 431 ; Print Button
		WaitForWindowClose("Drucken")
		Sleep 300
		WinClose("Report: Ausdrucksvorschau")
		WaitForWindowClose("Report: Ausdrucksvorschau")
		CoordMode "Mouse", "Screen"
		MouseMove xpos, ypos
		WinActivate "Terminliste"
		WinWaitActive "Terminliste"
		Sleep 200
		Send "{Down}"
	} else 
	{
		MsgBox "Window: Terminliste not found."
	}
}


/* To Get the positions for readjustment you can uncomment this function (activated with shift+print)
+PrintScreen::
{	
	CoordMode "Mouse", "Window" ;Sets the coordinate system relative to the active window
	MouseGetPos &xpos, &ypos, &varWin
	MsgBox "The cursor is at X" xpos " Y" ypos "and the window: " varWin
}
*/
