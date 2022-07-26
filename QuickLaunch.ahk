#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#Include ./lib/UseGDIP.ahk
#Include ./lib/Class_ImageButton.ahk

Global QL_VERSION := 3.2
Global ICON_DIR := A_WorkingDir . "/icons/"
Global GUI_COLOR := 0x333333

; -----------------------------------------------
; Setting up the system tray icon for QuickLaunch
; -----------------------------------------------

I_Icon = QuickLaunch.ico
IfExist, %I_Icon%
  Menu, Tray, Icon, %I_Icon%

Menu, Tray, Tip, QuickLaunch v%QL_VERSION%
Menu, Tray, Add, Launch, ShowGui
Menu, Tray, Default, Launch
Menu, Tray, Click, 1

; -----------------------------------------------------------
; Building the QuickLaunch menu, a menu resembling a computer
; keyboard where the keys that start specific apps are marked
; with icons
; -----------------------------------------------------------

Gui, QuickLaunch:New, +AlwaysOnTop +ToolWindow, QuickLaunch
Gui, Color, %GUI_COLOR%
Gui, Font, s10
Gui, -Caption
Gui, Add, Picture, x10 y10 h48 w48, %ICON_DIR%KeyF1.ico
Gui, Add, Picture, x68 y10 h48 w48, %ICON_DIR%KeyF2.ico
Gui, Add, Picture, x126 y10 h48 w48, %ICON_DIR%KeyF3.ico
Gui, Add, Picture, x184 y10 h48 w48, %ICON_DIR%KeyF4.ico
Gui, Add, Picture, x242 y10 h48 w48, %ICON_DIR%KeyF5.ico
Gui, Add, Picture, x300 y10 h48 w48, %ICON_DIR%KeyF6.ico
Gui, Add, Picture, x358 y10 h48 w48, %ICON_DIR%KeyF7.ico
Gui, Add, Picture, x416 y10 h48 w48, %ICON_DIR%KeyF8.ico
Gui, Add, Picture, x474 y10 h48 w48, %ICON_DIR%KeyF9.ico
Gui, Add, Picture, x532 y10 h48 w48, %ICON_DIR%KeyF10.ico
Gui, Add, Picture, x590 y10 h48 w48, %ICON_DIR%KeyF11.ico
Gui, Add, Picture, x648 y10 h48 w48, %ICON_DIR%KeyF12.ico
Gui, Add, Picture, x10 y68 h48 w48, %ICON_DIR%Key1.ico
Gui, Add, Picture, x68 y68 h48 w48, %ICON_DIR%Key2.ico
Gui, Add, Picture, x126 y68 h48 w48, %ICON_DIR%Key3.ico
Gui, Add, Picture, x184 y68 h48 w48, %ICON_DIR%Key4.ico
Gui, Add, Picture, x242 y68 h48 w48, %ICON_DIR%Key5.ico
Gui, Add, Picture, x300 y68 h48 w48, %ICON_DIR%Key6.ico
Gui, Add, Picture, x358 y68 h48 w48, %ICON_DIR%Key7.ico
Gui, Add, Picture, x416 y68 h48 w48, %ICON_DIR%Key8.ico
Gui, Add, Picture, x474 y68 h48 w48, %ICON_DIR%Key9.ico
Gui, Add, Picture, x532 y68 h48 w48, %ICON_DIR%Key0.ico
Gui, Add, Picture, x590 y68 h48 w48, %ICON_DIR%KeyEsszett.ico
Gui, Add, Picture, x648 y68 h48 w48, %ICON_DIR%KeyAccent.ico
Gui, Add, Picture, x39 y126 h48 w48, %ICON_DIR%KeyQ.ico
Gui, Add, Picture, x97 y126 h48 w48, %ICON_DIR%KeyW.ico

AddQuickLaunchButton("Edge", "KeyE", 155, 126, "gLaunchEdge")
AddQuickLaunchButton("Reason", "KeyR", 213, 126, "gLaunchReason")
AddQuickLaunchButton("TotalCommander", "KeyT", 271, 126, "gLaunchTotalCommander")
AddQuickLaunchButton("Sleep", "KeyZ", 329, 126, "gGoToSleep")
Gui, Add, Picture, x387 y126 h48 w48, %ICON_DIR%KeyU.ico
Gui, Add, Picture, x445 y126 h48 w48, %ICON_DIR%KeyI.ico
AddQuickLaunchButton("Notion", "KeyO", 503, 126, "gLaunchNotion")
Gui, Add, Picture, x561 y126 h48 w48, %ICON_DIR%KeyP.ico
Gui, Add, Picture, x619 y126 h48 w48, %ICON_DIR%KeyUmlautU.ico
AddQuickLaunchButton("ReasonPlus", "KeyPlus", 677, 126, "gLaunchReasonPlus")

Gui, Add, Picture, x54 y184 h48 w48, %ICON_DIR%KeyA.ico
Gui, Add, Picture, x112 y184 h48 w48, %ICON_DIR%KeyS.ico
AddQuickLaunchButton("GoogleDocs", "KeyD", 170, 184, "gLaunchGDocs")
Gui, Add, Picture, x228 y184 h48 w48, %ICON_DIR%KeyF.ico
AddQuickLaunchButton("GitBash", "KeyG", 286, 184, "gLaunchBash")
AddQuickLaunchButton("GoogleSheets", "KeyH", 344, 184, "gLaunchGSheets")
Gui, Add, Picture, x402 y184 h48 w48, %ICON_DIR%KeyJ.ico
Gui, Add, Picture, x460 y184 h48 w48, %ICON_DIR%KeyK.ico
AddQuickLaunchButton("AbletonLive", "KeyL", 518, 184, "gLaunchLive")
Gui, Add, Picture, x576 y184 h48 w48, %ICON_DIR%KeyUmlautO.ico
Gui, Add, Picture, x634 y184 h48 w48, %ICON_DIR%KeyUmlautA.ico
Gui, Add, Picture, x692 y184 h48 w48, %ICON_DIR%KeyHash.ico

Gui, Add, Picture, x25 y242 h48 w48, %ICON_DIR%KeyLessThan.ico
Gui, Add, Picture, x83 y242 h48 w48, %ICON_DIR%KeyY.ico
AddQuickLaunchButton("Max", "KeyX", 141, 242, "gLaunchMax")
AddQuickLaunchButton("Code", "KeyV", 199, 242, "gLaunchCode")
Gui, Add, Picture, x257 y242 h48 w48, %ICON_DIR%KeyC.ico
Gui, Add, Picture, x315 y242 h48 w48, %ICON_DIR%KeyB.ico
Gui, Add, Picture, x373 y242 h48 w48, %ICON_DIR%KeyN.ico
AddQuickLaunchButton("GMail", "KeyM", 431, 242, "gLaunchGMail")
Gui, Add, Picture, x489 y242 h48 w48, %ICON_DIR%KeyComma.ico
Gui, Add, Picture, x547 y242 h48 w48, %ICON_DIR%KeyPeriod.ico
Gui, Add, Picture, x605 y242 h48 w48, %ICON_DIR%KeyDash.ico

Gui, Add, Text, x360 y300 h3 cGray, Thank you for using QuickLaunch, made with love by Zapperment!

; ---------------------------------------------------------
; Adding hotkeys to each of the icon buttons on the virtual
; QuickLaunch keyboard, active when the QuickLaunch menu is
; shown
; ---------------------------------------------------------

#IfWinActive, QuickLaunch, Zapperment
  l::Gosub, LaunchLive
  e::Gosub, LaunchEdge
  g::Gosub, LaunchBash
  d::Gosub, LaunchGDocs
  m::Gosub, LaunchGMail
  h::Gosub, LaunchGSheets
  x::Gosub, LaunchMax
  o::Gosub, LaunchNotion
  r::Gosub, LaunchReason
  +::Gosub, LaunchReasonPlus
  z::Gosub, GoToSleep
  t::Gosub, LaunchTotalCommander
  v::Gosub, LaunchCode
  Esc::Gui, QuickLaunch:Hide
#IfWinActive

; ----------------------------------------------------------
; This is a hack to make the keyboard shortcut to toggle the
; sidebar in Notion work - you can't toggle it with a German
; keyboard layout, so we'll temporarily switch to English
; layout to make it work
; ----------------------------------------------------------

#IfWinActive, ahk_exe Notion.exe
  ^#::
    SetDefaultKeyboard(0x0409)
    Sleep, 100
    Send, ^{\}
    Sleep, 100
    SetDefaultKeyboard(0x0407)
    Return
#IfWinActive


; -----------------------------------
; Shortcut and subroutine to show the
; QuickLaunch menu (virtual keyboard)
; -----------------------------------

MButton::
  Gui, QuickLaunch:Show
  Return

ShowGui:
  Gui, QuickLaunch:Show
  Return

; --------------------------------------
; Subroutines to launch the various apps
; --------------------------------------

LaunchLive:
  Gui, QuickLaunch:Hide
  If WinExist("ahk_exe Ableton Live 10 Suite.exe") 
    WinActivate
  Else
    Run, "C:\ProgramData\Ableton\Live 10 Suite\Program\Ableton Live 10 Suite.exe"
  Return

LaunchGDocs:
  Gui, QuickLaunch:Hide
  If WinExist("Dokumente") 
    WinActivate
  Else
    Run, "C:\Users\wieka\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Chrome-Apps\Dokumente.lnk"
  Return

LaunchEdge:
  Gui, QuickLaunch:Hide
  If WinExist("ahk_exe msedge.exe") 
    WinActivate
  Else
    Run, "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
  Return

LaunchBash:
  Gui, QuickLaunch:Hide
  If WinExist("ahk_exe mintty.exe") 
    WinActivate
  Else
    Run, "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Git\Git Bash.lnk"
  Return

LaunchMax:
  Gui, QuickLaunch:Hide
  If WinExist("ahk_exe Max.exe") 
    WinActivate
  ; Max can only be started through Ableton Live,
  ; so there is no "Else" here
  Return

LaunchNotion:
  Gui, QuickLaunch:Hide
  If WinExist("ahk_exe Notion.exe")
    WinActivate
  Else
    Send ^!#{o}
    ; For some reason, a Run WON'T WORK with Electron apps like this one, 
    ; so using a hotkey defined with WinHotKey 
    ; Run, "C:\Users\wieka\AppData\Local\Programs\Notion\Notion.exe"
  Return

LaunchGMail:
  Gui, QuickLaunch:Hide
  If WinExist("Gmail") 
    WinActivate
  Else
    Run, "C:\Users\wieka\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Chrome-Apps\GMail.lnk"
  Return

LaunchGSheets:
  Gui, QuickLaunch:Hide
  If WinExist("Tabellen") 
    WinActivate
  Else
    Run, "C:\Users\wieka\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Chrome-Apps\Tabellen.lnk"
  Return

GoToSleep:
  Gui, QuickLaunch:Hide
  DllCall("PowrProf\SetSuspendState", "Int", 0, "Int", 0, "Int", 0)
  Return

LaunchReason:
  Gui, QuickLaunch:Hide
  If WinExist("ahk_exe Reason.exe") 
    WinActivate
  Else
    Run, "C:\Program Files\Propellerhead\Reason 12\Reason.exe"
  Return

LaunchReasonPlus:
  Gui, QuickLaunch:Hide
  If WinExist("ahk_exe Reason+ Companion.exe") 
    WinActivate
  Else
    Send ^!#{r}
    ; For some reason, a Run WON'T WORK with Electron apps like this one, 
    ; so using a hotkey defined with WinHotKey 
    ;Run, "C:\Users\wieka\AppData\Local\Programs\reason-plus-companion-app\Reason+ Companion.exe"
    ;Run, "%LOCALAPPDATA%\Programs\reason-plus-companion-app\Reason+ Companion.exe"
  Return

LaunchTotalCommander:
  Gui, QuickLaunch:Hide
  If WinExist("ahk_exe TOTALCMD64.EXE") 
    WinActivate
  Else
    Run, "C:\Program Files\totalcmd\TOTALCMD64.EXE"
  Return

LaunchCode:
  Gui, QuickLaunch:Hide
  If WinExist("ahk_exe Code.exe") 
    WinActivate
  Else
    Send ^!#{v}
    ; For some reason, a Run WON'T WORK with Electron apps like this one, 
    ; so using a hotkey defined with WinHotKey 
    ;Run, "%LOCALAPPDATA%\Programs\Microsoft VS Code\Code.exe"
  Return

; ------------------------------------------------
; Function to add a single QuickLaunch icon button
; to the virtual keyboard
; ------------------------------------------------
AddQuickLaunchButton(name, icon, x, y, target)
{
  Gui, Add, Button, x%x% y%y% h48 w48 %target% hwnd%name%
  If !ImageButton.Create(%name%, [0, ICON_DIR . icon . ".png", , , , GUI_COLOR])
    MsgBox, 0, ImageButton Error, % ImageButton.LastError 

}

; -----------------------------------------------
; Function used for switching the keyboard layout
; to make the hotkey to toggle the sidebar in
; Notion work
; -----------------------------------------------
SetDefaultKeyboard(LocaleID){
	Static SPI_SETDEFAULTINPUTLANG := 0x005A, SPIF_SENDWININICHANGE := 2
	
	Lan := DllCall("LoadKeyboardLayout", "Str", Format("{:08x}", LocaleID), "Int", 0)
	VarSetCapacity(binaryLocaleID, 4, 0)
	NumPut(LocaleID, binaryLocaleID)
	DllCall("SystemParametersInfo", "UInt", SPI_SETDEFAULTINPUTLANG, "UInt", 0, "UPtr", &binaryLocaleID, "UInt", SPIF_SENDWININICHANGE)
	
	WinGet, windows, List
	Loop % windows {
		PostMessage 0x50, 0, % Lan, , % "ahk_id " windows%A_Index%
	}
}