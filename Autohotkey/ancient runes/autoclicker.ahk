#SingleInstance force
#NoEnv
SetKeyDelay, 0, 0
SendMode, Input


ScrollLock::SetTimer, Action, % (on := !on) ? ("300") : ("Off")

Action:
	Click
Return