#SingleInstance, Off
#NoEnv
 
Title = CodeQuickTester
DefaultDesc =
DefaultName = %A_UserName%
 
Menu, Tray, Icon, %A_AhkPath%, 2
Shell := ComObjCreate("WScript.Shell")
FileEncoding, UTF-8
 
Menu, MenuBar, Add, &Save, SaveButton
Menu, MenuBar, Add, &Load, LoadButton
Menu, MenuBar, Add, &Fetch, FetchButton
Menu, MenuBar, Add, &Paste, PasteButton
Menu, MenuBar, Add, P&arams, ParamsButton
 
Gui, Main:New, +Resize
Gui, Menu, MenuBar
Gui, Margin, 5, 5
Gui, Color,, 3F3F3F
Gui, Font, s10 cEDEDCD, Consolas
Gui, Add, Edit, vCodeEditor WantTab -Wrap HScroll t14 r2 ; t14 sets tab size to 4 characters
Gui, Font, s8, Microsoft Sans Serif
Gui, Add, Button, gRunButton vRun, &Run
Gui, Show, w640 h480, %Title%
return
 
#If Exec.Status == 0
Escape::Exec.Terminate() ; CheckIfRunning updates the GUI
#If
 
MainGuiClose:
GuiControlGet, CodeEditor
if !CodeEditor
ExitApp
MsgBox, 308, %Title%, Are you sure you want to exit?
IfMsgBox, Yes
ExitApp
return
 
MainGuiSize:
GuiControl, Move, CodeEditor, % "x" 5 "y" 5 "w" A_GuiWidth-10 "h" A_GuiHeight-37
ButtonWidth := (A_GuiWidth-10)
GuiControl, Move, Run, % "x" 5 "y" A_GuiHeight-27 "w" ButtonWidth "h" 22
return
 
MainGuiDropFiles:
GuiControlGet, CodeEditor
if CodeEditor
{
MsgBox, 308, %Title%, Are you sure you want to overwrite your code?
IfMsgBox, No
return
}
GuiControl,, CodeEditor, % FileOpen(StrSplit(A_GuiEvent, "`n")[1], "r").Read()
return
 
RunButton:
if (Exec.Status == 0) ; Running
Exec.Terminate() ; CheckIfRunning updates the GUI
else ; Not running or doesn't exist
{
GuiControlGet, CodeEditor, Main:
GuiControlGet, Params, Params:
Exec := ExecScript(CodeEditor, Params, DeHashBang(CodeEditor))
GuiControl, Main:, Run, &Kill
SetTimer, CheckIfRunning, 100
}
return
 
CheckIfRunning:
if (Exec.Status == 1)
{
SetTimer, CheckIfRunning, Off
GuiControl, Main:, Run, &Run
}
return
 
SaveButton:
Gui, +OwnDialogs
FileSelectFile, FilePath, S2
if ErrorLevel
return
GuiControlGet, CodeEditor
FileOpen(FilePath, "w").Write(CodeEditor)
return
 
LoadButton:
Gui, +OwnDialogs
FileSelectFile, FilePath, 3
if ErrorLevel
return
GuiControlGet, CodeEditor
if CodeEditor
{
MsgBox, 308, %Title%, Are you sure you want to overwrite your code?
IfMsgBox, No
return
}
GuiControl,, CodeEditor, % FileOpen(FilePath, "r").Read()
return
 
FetchButton:
Gui, +OwnDialogs
InputBox, Url, %Title%, Enter a URL to fetch code from.
Try
{
http := ComObjCreate("WinHttp.WinHttpRequest.5.1")
http.Open("GET", Url, false)
http.Send()
}
Catch
{
TrayTip, Something went wrong!
return
}
GuiControlGet, CodeEditor
if CodeEditor
{
MsgBox, 308, %Title%, Are you sure you want to overwrite your code?
IfMsgBox, No
return
}
GuiControl,, CodeEditor, % http.ResponseText
return
 
PasteButton:
Gui, Paste:New, +OwnerMain +ToolWindow
Gui, Margin, 5, 5
Gui, Font, s8, Microsoft Sans Serif
Gui, Add, Text, xm ym w30 h22 +0x200, Desc:
Gui, Add, Edit, x+5 yp w125 h22 vPasteDesc, %DefaultDesc%
Gui, Add, Button, x+4 yp-1 w52 h24 Default gPaste, Paste
Gui, Add, Text, xm y+5 w30 h22 +0x200, Name:
Gui, Add, Edit, x+5 yp w100 h22 vPasteName, %DefaultName%
Gui, Add, DropDownList, x+5 yp w75 vPasteChan hWndPasteChan, Announce||#ahk|#ahkscript
PostMessage, 0x153, -1, 22-6,, ahk_id %PasteChan% ; Set height of DropDownList
Gui, Show,, Paste
return
 
PasteGuiEscape:
Gui, Destroy
return
 
Paste:
Gui, Submit
Gui, Destroy
GuiControlGet, CodeEditor, Main:
Link := Ahkbin(CodeEditor, PasteName, PasteDesc, PasteChan)
MsgBox, 292, %Title%, Link acquired:`n%Link%`n`nCopy to clipboard?
IfMsgBox, Yes
Clipboard := Link
return
 
ParamsButton:
Gui, Params:New, +OwnerMain +ToolWindow
Gui, Margin, 5, 5
Gui, Font, s8, Microsoft Sans Serif
Gui, Add, Text, xm ym w300 h22 Center +0x200, Params will be cleared on window exit
Gui, Add, Edit, w300 h22 vParams
Gui, Show,, Command Line Params
return
 
ParamsGuiEscape:
Gui, Destroy
return
 
; Modified from https://github.com/cocobelgica/AutoHotkey-Util/blob/master/ExecScript.ahk
ExecScript(Script, Params="", AhkPath="")
{
Name := "AHK_CQT_" A_TickCount
Pipe := []
Loop, 2
{
Pipe[A_Index] := DllCall("CreateNamedPipe"
, "Str", "\\.\pipe\" name
, "UInt", 2, "UInt", 0
, "UInt", 255, "UInt", 0
, "UInt", 0, "UPtr", 0
, "UPtr", 0, "UPtr")
}
if !FileExist(AhkPath)
AhkPath := A_AhkPath
Call = "%AhkPath%" /CP65001 "\\.\pipe\%Name%"
Shell := ComObjCreate("WScript.Shell")
Exec := Shell.Exec(Call " " Params)
DllCall("ConnectNamedPipe", "UPtr", Pipe[1], "UPtr", 0)
DllCall("CloseHandle", "UPtr", Pipe[1])
DllCall("ConnectNamedPipe", "UPtr", Pipe[2], "UPtr", 0)
FileOpen(Pipe[2], "h", "UTF-8").Write(Script)
DllCall("CloseHandle", "UPtr", Pipe[2])
return Exec
}
 
Ahkbin(Content, Name="", Desc="", Channel="")
{
static URL := "http://ahk.us.to/"
Form := "code=" UriEncode(Content)
if Name
Form .= "&name=" UriEncode(Name)
if Desc
Form .= "&desc=" UriEncode(Desc)
if Channel
Form .= "&announce=on&channel=" UriEncode(Channel)
Pbin := ComObjCreate("WinHttp.WinHttpRequest.5.1")
Pbin.Open("POST", URL, False)
Pbin.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
Pbin.Send(Form)
return Pbin.Option(1)
}
 
; Modified by GeekDude from http://goo.gl/0a0iJq
UriEncode(Uri)
{
VarSetCapacity(Var, StrPut(Uri, "UTF-8"), 0), StrPut(Uri, &Var, "UTF-8")
f := A_FormatInteger
SetFormat, IntegerFast, H
While Code := NumGet(Var, A_Index - 1, "UChar")
If (Code >= 0x30 && Code <= 0x39 ; 0-9
|| Code >= 0x41 && Code <= 0x5A ; A-Z
|| Code >= 0x61 && Code <= 0x7A) ; a-z
Res .= Chr(Code)
Else
Res .= "%" . SubStr(Code + 0x100, -1)
SetFormat, IntegerFast, %f%
Return, Res
}
 
DeHashBang(Script)
{
AhkPath := A_AhkPath
if RegExMatch(Script, "`a)^\s*`;#!\s*(.+)", Match)
{
AhkPath := Trim(Match1)
Vars := {"%A_ScriptDir%": A_WorkingDir
, "%A_WorkingDir%": A_WorkingDir
, "%A_AppData%": A_AppData
, "%A_AppDataCommon%": A_AppDataCommon
, "%A_LineFile%": A_ScriptFullPath
, "%A_AhkPath%": A_AhkPath}
for SearchText, Replacement in Vars
StringReplace, AhkPath, AhkPath, %SearchText%, %Replacement%, All
}
return AhkPath
}