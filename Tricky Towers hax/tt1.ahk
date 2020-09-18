#SingleInstance force
#NoEnv
SetKeyDelay, 0, 0
SendMode, Input
CoordMode, Mouse, Screen
Thread, interrupt, 0  ; Make all threads always-interruptible.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

anti_idling := false
SetTimer, AntiIdle, 1000

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Numpad9::ExitApp

; anti idle
Numpad8::anti_idling := !anti_idling
AntiIdle:
	if (anti_idling) {
		SendInput, {Enter}{Up}
	}
Return

; other key bindings
S::SendInput {Down} ; handled above!
A::SendInput {RCtrl}
D::SendInput {Numpad0}

W::
E::
Space::
	SendInput {Up}
Return

End:: ;quick reset
	SendInput, {Escape}
	Sleep, 350
	SendInput, {Down}
	Sleep, 150
	SendInput, {Enter}
Return