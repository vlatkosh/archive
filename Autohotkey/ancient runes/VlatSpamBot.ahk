#SingleInstance force
#NoEnv

SetTitleMatchMode, 2
SetKeyDelay, 0, 0
SendMode, Input

;Gui, Font, s8, Microsoft Sans Serif

;AT START OF BUTTON FUNCTION:
; Gui Submit, NoHide

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

global SpamInput, SpamDelay, SpamTimes, SpamPrefix := ""
global AutoClickTimes, AutoClickDelay, AutoClickLeft, AutoClickRight, AutoClickMiddle

idleStatusBarText := " Status bar is Idle"

; display stuff
Gui -MinimizeBox -MaximizeBox +ToolWindow +AlwaysOnTop

; color stuff
Gui Font, c0x333333 s10 w400, Segoe UI
;Gui Color, 0xCCFFFF

; status bar
Gui Add, StatusBar, , % idleStatusBarText

; SPAM BOT
	; text boxes
	Gui Add, Text, x15 y10 w250 h20, % "Text to Spam"
	Gui Add, Edit, r2 x12 y30 w250 h20 vSpamInput, % "ok mate"

	Gui Add, Text, x15 y80 w250 h20, % "Times to Spam"
	Gui Add, Edit, x12 y100 w250 h20 vSpamTimes, % "100"

	Gui Add, Text, x15 y130 w250 h20, % "Spam Delay (milliseconds)"
	Gui Add, Edit, x12 y160 w250 h20 vSpamDelay, % "5"

	; prefix
	Gui Add, Text, x195 y190 w60 h20, % "Prefix"
	Gui Add, Edit, x192 y210 w60 h20 vSpamPrefix, % ""

	; spam button
	Gui Add, Button, x12 y190 w166 h40 gStartSpam, % "Start Spamming"

Gui Tab, 2



; show gui
Gui Show, , % " Chat Spammer by Vlatko"



StartSpam:
	if (not _SpammedOnce) {
		_SpammedOnce := true
		return
	}

	Gui Submit, NoHide

	real_times		:= 100
	real_msdelay	:= 5
	real_prefix		:= ""
	real_sbtext		:= " You have @ seconds to select your input box"

	if (SpamTimes) {
		real_times   := SpamTimes
	}
	if (SpamDelay) {
		real_msdelay := SpamDelay
	}
	if (SpamPrefix) {
		real_prefix  := SpamPrefix
	}

	real_input		 := real_prefix . SpamInput

	originalClipboard = %Clipboard%
	Clipboard         = %real_input%


	tempsbtext := real_sbtext
	secondsLeft := 5
	Loop, % secondsLeft {
		StringReplace, real_sbtext, tempsbtext, % "@", % secondsLeft
		SB_SetText(real_sbtext)
		secondsLeft := secondsLeft - 1
		wait(1)
	}

	SB_SetText(" Spamming...")

	timesDone := 0
	Loop, % real_times {

		chat(real_start, Clipboard)

		timesDone := timesDone + 1
		Sleep, % real_msdelay

		SB_SetProgress(timesDone,, "+Range0-" . real_times)
	}
	SendInput, {ENTER}

	Clipboard = %originalClipboard%

	wait(0.5)
	SB_SetProgress(0)
	SB_SetText(" Finished spamming!")

	wait(3)

	SB_SetText(idleStatusBarText)
return

GuiClose:
	ExitApp
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

wait(m) {
	Sleep, % m * 1000
}

chat(prefix="/", message="ok mate") {
	SendInput, {ENTER}{RAW}%prefix%%message%
}




/*
	The following is taken from the official AutoHotkey forum, this is not made by me.
	http://www.autohotkey.com/board/topic/34593-stdlib-sb-setprogress/
*/

SB_SetProgress(Value=0,Seg=1,Ops="") {
	; Definition of Constants	
	Static SB_GETRECT		:= 0x40a		; (WM_USER:=0x400) + 10
		, SB_GETPARTS		:= 0x406
		, SB_PROGRESS						; Container for all used hwndBar:Seg:hProgress
		, PBM_SETPOS		:= 0x402		; (WM_USER:=0x400) + 2
		, PBM_SETRANGE32  	:= 0x406
		, PBM_SETBARCOLOR 	:= 0x409
		, PBM_SETBKCOLOR  	:= 0x2001 
		, dwStyle			:= 0x50000001 ; forced dwStyle WS_CHILD|WS_VISIBLE|PBS_SMOOTH
	; Find the hWnd of the currentGui's StatusbarControl
	Gui,+LastFound
	ControlGet,hwndBar,hWnd,,msctls_statusbar321
	if (!StrLen(hwndBar)) { 
		rErrorLevel := "FAIL: No StatusBar Control"	; Drop ErrorLevel on Error
	} else if (Seg<=0) {
		rErrorLevel := "FAIL: Wrong Segment Parameter"  ; Drop ErrorLevel on Error
	} else if (Seg>0) {
		; Segment count
		SendMessage, SB_GETPARTS, 0, 0,, ahk_id %hwndBar%
		SB_Parts :=  ErrorLevel - 1
		if ((SB_Parts!=0) && (SB_Parts<Seg)) {
			rErrorLevel := "FAIL: Wrong Segment Count"  ; Drop ErrorLevel on Error
		} else {
			; Get Segment Dimensions in any case, so that the progress control
			; can be readjusted in position if neccessary
			if (SB_Parts) {
				VarSetCapacity(RECT,16,0)	; RECT = 4*4 Bytes / 4 Byte <=> Int
				; Segment Size :: 0-base Index => 1. Element -> #0
				SendMessage,SB_GETRECT,Seg-1,&RECT,,ahk_id %hwndBar%
				if ErrorLevel
					Loop,4
						n%A_index% := NumGet(RECT,(a_index-1)*4,"Int")
				else
					rErrorLevel := "FAIL: Segmentdimensions" ; Drop ErrorLevel on Error
			} else { ; We dont have any parts, so use the entire statusbar for our progress
				n1 := n2 := 0
				ControlGetPos,,,n3,n4,,ahk_id %hwndBar%
			} ; if SB_Parts
			if (InStr(SB_Progress,":" Seg ":")) {
				hWndProg := (RegExMatch(SB_Progress, hwndBar "\:" seg "\:(?P<hWnd>([^,]+|.+))",p)) ? phWnd :
			} else {
				if (RegExMatch(Ops,"i)-smooth"))
					dwStyle ^= 0x1
				hWndProg := DllCall("CreateWindowEx","uint",0,"str","msctls_progress32"
					,"uint",0,"uint", dwStyle
					,"int",0,"int",0,"int",0,"int",0 ; segment-progress :: X/Y/W/H
					,"uint",DllCall("GetAncestor","uInt",hwndBar,"uInt",1) ; gui hwnd
					,"uint",0,"uint",0,"uint",0)

				SB_Progress .= (StrLen(SB_Progress) ? "," : "") hwndBar ":" Seg ":" hWndProg
			} ; if InStr Prog <-> Seg
			; HTML Colors
			Black:=0x000000,Green:=0x008000,Silver:=0xC0C0C0,Lime:=0x00FF00,Gray:=0x808080
			Olive:=0x808000,White:=0xFFFFFF,Yellow:=0xFFFF00,Maroon:=0x800000,Navy:=0x000080
			Red:=0xFF0000,Blue:=0x0000FF,Fuchsia:=0xFF00FF,Aqua:=0x00FFFF
			if (RegExMatch(ops,"i)\bBackground(?P<C>[a-z0-9]+)\b",bg)) {
				if ((strlen(bgC)=6)&&(RegExMatch(bgC,"i)([0-9a-f]{6})")))
						bgC := "0x" bgC
				else if !(RegExMatch(bgC,"i)^0x([0-9a-f]{1,6})"))
						bgC := %bgC%
				if (bgC+0!="")
						SendMessage, PBM_SETBKCOLOR, 0
							, ((bgC&255)<<16)+(((bgC>>8)&255)<<8)+(bgC>>16) ; BGR
							,, ahk_id %hwndProg%
			} ; if RegEx BGC
			if (RegExMatch(ops,"i)\bc(?P<C>[a-z0-9]+)\b",fg)) {
				if ((strlen(fgC)=6)&&(RegExMatch(fgC,"i)([0-9a-f]{6})")))
						fgC := "0x" fgC
				else if !(RegExMatch(fgC,"i)^0x([0-9a-f]{1,6})"))
						fgC := %fgC%
				if (fgC+0!="")
						SendMessage, PBM_SETBARCOLOR, 0
							, ((fgC&255)<<16)+(((fgC>>8)&255)<<8)+(fgC>>16) ; BGR
							,, ahk_id %hwndProg%
			} ; if RegEx FGC
			if ((RegExMatch(ops,"i)(?P<In>[^ ])?range((?P<Lo>\-?\d+)\-(?P<Hi>\-?\d+))?",r)) 
				&& (rIn!="-") && (rHi>rLo)) {	; Set new LowRange and HighRange
				SendMessage,0x406,rLo,rHi,,ahk_id %hWndProg%
			} else if ((rIn="-") || (rLo>rHi)) {  ; restore defaults on remove or invalid values
				SendMessage,0x406,0,100,,ahk_id %hWndProg%
			} ; if RegEx Range
			if (RegExMatch(ops,"i)\bEnable\b"))
				Control, Enable,,, ahk_id %hWndProg%
			if (RegExMatch(ops,"i)\bDisable\b"))
				Control, Disable,,, ahk_id %hWndProg%
			if (RegExMatch(ops,"i)\bHide\b"))
				Control, Hide,,, ahk_id %hWndProg%
			if (RegExMatch(ops,"i)\bShow\b"))
				Control, Show,,, ahk_id %hWndProg%
			ControlGetPos,xb,yb,,,,ahk_id %hwndBar%
			ControlMove,,xb+n1,yb+n2,n3-n1,n4-n2,ahk_id %hwndProg%
			SendMessage,PBM_SETPOS,value,0,,ahk_id %hWndProg%
		} ; if Seg greater than count
	} ; if Seg greater zero
	if (regExMatch(rErrorLevel,"^FAIL")) {
		ErrorLevel := rErrorLevel
		Return -1
	} else 
		Return hWndProg
}