#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#Include ./lib/UseGDIP.ahk
#Include ./lib/Class_ImageButton.ahk

Global QL_VERSION := 3.7
Global ICON_DIR := A_WorkingDir . "/icons/"
Global LINK_DIR := A_WorkingDir . "/links/"
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

AddUnassignedButton("UNASSIGNED_KeyF1", "KeyF1", 10, 10)
AddUnassignedButton("UNASSIGNED_KeyF2", "KeyF2", 68, 10)
AddUnassignedButton("UNASSIGNED_KeyF3", "KeyF3", 126, 10)
AddUnassignedButton("UNASSIGNED_KeyF4", "KeyF4", 184, 10)
AddUnassignedButton("UNASSIGNED_KeyF5", "KeyF5", 242, 10)
AddUnassignedButton("UNASSIGNED_KeyF6", "KeyF6", 300, 10)
AddUnassignedButton("UNASSIGNED_KeyF7", "KeyF7", 358, 10)
AddUnassignedButton("UNASSIGNED_KeyF8", "KeyF8", 416, 10)
AddUnassignedButton("UNASSIGNED_KeyF9", "KeyF9", 474, 10)
AddUnassignedButton("UNASSIGNED_KeyF10", "KeyF10", 532, 10)
AddUnassignedButton("UNASSIGNED_KeyF11", "KeyF11", 590, 10)
AddUnassignedButton("UNASSIGNED_KeyF12", "KeyF12", 648, 10)

AddUnassignedButton("UNASSIGNED_Key1", "Key1", 10, 68)
AddQuickLaunchButton("Downloads", "Key2", 68, 68, "gLaunchDownloads")
AddUnassignedButton("UNASSIGNED_Key3", "Key3", 126, 68)
AddUnassignedButton("UNASSIGNED_Key4", "Key4", 184, 68)
AddUnassignedButton("UNASSIGNED_Key5", "Key5", 242, 68)
AddUnassignedButton("UNASSIGNED_Key6", "Key6", 300, 68)
AddUnassignedButton("UNASSIGNED_Key7", "Key7", 358, 68)
AddUnassignedButton("UNASSIGNED_Key8", "Key8", 416, 68)
AddUnassignedButton("UNASSIGNED_Key9", "Key9", 474, 68)
AddUnassignedButton("UNASSIGNED_Key0", "Key0", 532, 68)
AddUnassignedButton("UNASSIGNED_KeyEsszett", "KeyEsszett", 590, 68)
AddUnassignedButton("UNASSIGNED_KeyAccent", "KeyAccent", 648, 68)

AddUnassignedButton("UNASSIGNED_KeyQ", "KeyQ", 39, 126)
AddQuickLaunchButton("WhatsApp", "KeyW", 97, 126, "gLaunchWhatsApp")
AddQuickLaunchButton("Edge", "KeyE", 155, 126, "gLaunchEdge")
AddQuickLaunchButton("Reason", "KeyR", 213, 126, "gLaunchReason")
AddQuickLaunchButton("TotalCommander", "KeyT", 271, 126, "gLaunchTotalCommander")
AddQuickLaunchButton("Sleep", "KeyZ", 329, 126, "gGoToSleep")
AddUnassignedButton("UNASSIGNED_KeyU", "KeyU", 387, 126)
AddUnassignedButton("UNASSIGNED_KeyI", "KeyI", 445, 126)
AddQuickLaunchButton("Notion", "KeyO", 503, 126, "gLaunchNotion")
AddQuickLaunchButton("Passwords", "KeyP", 561, 126, "gLaunchPasswords")
AddUnassignedButton("UNASSIGNED_KeyUmlautU", "KeyUmlautU", 619, 126)
AddQuickLaunchButton("ReasonPlus", "KeyPlus", 677, 126, "gLaunchReasonPlus")

AddQuickLaunchButton("GMail", "KeyA", 54, 184, "gLaunchGMail")
AddUnassignedButton("UNASSIGNED_KeyS", "KeyS", 112, 184)
AddQuickLaunchButton("GoogleDocs", "KeyD", 170, 184, "gLaunchGDocs")
AddUnassignedButton("UNASSIGNED_KeyF", "KeyF", 228, 184)
AddQuickLaunchButton("GitBash", "KeyG", 286, 184, "gLaunchBash")
AddQuickLaunchButton("GoogleSheets", "KeyH", 344, 184, "gLaunchGSheets")
AddUnassignedButton("UNASSIGNED_KeyJ", "KeyJ", 402, 184)
AddUnassignedButton("UNASSIGNED_KeyK", "KeyK", 460, 184)
AddQuickLaunchButton("AbletonLive", "KeyL", 518, 184, "gLaunchLive")
AddUnassignedButton("UNASSIGNED_KeyUmlautO", "KeyUmlautO", 576, 184)
AddUnassignedButton("UNASSIGNED_KeyUmlautA", "KeyUmlautA", 634, 184)
AddUnassignedButton("UNASSIGNED_KeyHash", "KeyHash", 692, 184)

AddUnassignedButton("UNASSIGNED_KeyLessThan", "KeyLessThan", 25, 242)
AddQuickLaunchButton("Spotify", "KeyY", 83, 242, "gLaunchSpotify")
AddQuickLaunchButton("Max", "KeyX", 141, 242, "gLaunchMax")
AddQuickLaunchButton("Code", "KeyC", 199, 242, "gLaunchCode")
AddQuickLaunchButton("Vim", "KeyV", 257, 242, "gLaunchVim")
AddUnassignedButton("UNASSIGNED_KeyB", "KeyB", 315, 242)
AddUnassignedButton("UNASSIGNED_KeyN", "KeyN", 373, 242)
AddUnassignedButton("UNASSIGNED_KeyM", "KeyM", 431, 242)
AddUnassignedButton("UNASSIGNED_KeyComma", "KeyComma", 489, 242)
AddUnassignedButton("UNASSIGNED_KeyPeriod", "KeyPeriod", 547, 242)
AddUnassignedButton("UNASSIGNED_KeyDash", "KeyDash", 605, 242)

Gui, Add, Text, x360 y300 h3 cGray, Thank you for using QuickLaunch, made with love by Zapperment!

; ---------------------------------------------------------
; Adding hotkeys to each of the icon buttons on the virtual
; QuickLaunch keyboard, active when the QuickLaunch menu is
; shown
; ---------------------------------------------------------

#IfWinActive, QuickLaunch, Zapperment
  2::Gosub, LaunchDownloads
  w::Gosub, LaunchWhatsApp
  e::Gosub, LaunchEdge
  r::Gosub, LaunchReason
  t::Gosub, LaunchTotalCommander
  z::Gosub, GoToSleep
  o::Gosub, LaunchNotion
  p::Gosub, LaunchPasswords
  +::Gosub, LaunchReasonPlus
  a::Gosub, LaunchGMail
  d::Gosub, LaunchGDocs
  g::Gosub, LaunchBash
  h::Gosub, LaunchGSheets
  l::Gosub, LaunchLive
  y::Gosub, LaunchSpotify
  x::Gosub, LaunchMax
  c::Gosub, LaunchCode
  v::Gosub, LaunchVim
  Esc::Gosub, HideMenu
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
  Gosub, ShowMenu
  Return

ShowGui:
  Gosub, ShowMenu
  Return

; --------------------------------------
; Subroutines to launch the various apps
; --------------------------------------

LaunchDownloads:
  Gosub, HideMenu
  ; Total Commander doesn't need distinction between is running or not
  Run, "C:\Program Files\totalcmd\TOTALCMD64.EXE" /single C:\Users\wieka\Downloads
  Return

LaunchLive:
  Gosub, HideMenu
  If WinExist("ahk_exe Ableton Live 10 Suite.exe") 
    WinActivate
  Else
    Run, "C:\ProgramData\Ableton\Live 10 Suite\Program\Ableton Live 10 Suite.exe"
  Return

LaunchGDocs:
  Gosub, HideMenu
  If WinExist("Dokumente") 
    WinActivate
  Else
    Run, "C:\Users\wieka\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Chrome-Apps\Dokumente.lnk"
  Return

LaunchWhatsApp:
  Gosub, HideMenu
  If WinExist("ahk_exe WhatsApp.exe") 
    WinActivate
  Else
    Run, "C:\Program Files\WindowsApps\5319275A.WhatsAppDesktop_2.2228.14.0_x64__cv1g1gvanyjgm\app\WhatsApp.exe"
  Return

LaunchEdge:
  Gosub, HideMenu
  If WinExist("ahk_exe msedge.exe") 
    WinActivate
  Else
    Run, "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
  Return

LaunchBash:
  Gosub, HideMenu
  If WinExist("ahk_exe mintty.exe") 
    WinActivate
  Else
    Run, "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Git\Git Bash.lnk"
  Return

LaunchMax:
  Gosub, HideMenu
  If WinExist("ahk_exe Max.exe") 
    WinActivate
  ; Max can only be started through Ableton Live,
  ; so there is no "Else" here
  Return

LaunchNotion:
  Gosub, HideMenu
  If WinExist("ahk_exe Notion.exe")
    WinActivate
  Else
    Send ^!#{o}
    ; For some reason, a Run WON'T WORK with Electron apps like this one, 
    ; so using a hotkey defined with WinHotKey 
    ; Run, "C:\Users\wieka\AppData\Local\Programs\Notion\Notion.exe"
  Return

LaunchPasswords:
  Gosub, HideMenu
  If WinExist("ahk_exe iCloudPasswords.exe")
    WinActivate
  Else
    Run, C:\Program Files\WindowsApps\AppleInc.iCloud_13.4.101.0_x86__nzyj5cx40ttqa\iCloud\iCloudPasswords.exe
  Return

LaunchGMail:
  Gosub, HideMenu
  If WinExist("Gmail") 
    WinActivate
  Else
    Run, "C:\Users\wieka\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Chrome-Apps\GMail.lnk"
  Return

LaunchGSheets:
  Gosub, HideMenu
  If WinExist("Tabellen") 
    WinActivate
  Else
    Run, "C:\Users\wieka\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Chrome-Apps\Tabellen.lnk"
  Return

GoToSleep:
  Gosub, HideMenu
  DllCall("PowrProf\SetSuspendState", "Int", 0, "Int", 0, "Int", 0)
  Return

LaunchReason:
  Gosub, HideMenu
  If WinExist("ahk_exe Reason.exe") 
    WinActivate
  Else
    Run, "C:\Program Files\Propellerhead\Reason 12\Reason.exe"
  Return

LaunchReasonPlus:
  Gosub, HideMenu
  If WinExist("ahk_exe Reason+ Companion.exe") 
    WinActivate
  Else
    Send ^!#{r}
    ; For some reason, a Run WON'T WORK with Electron apps like this one, 
    ; so using a hotkey defined with WinHotKey 
    ;Run, "C:\Users\wieka\AppData\Local\Programs\reason-plus-companion-app\Reason+ Companion.exe"
    ;Run, "%LOCALAPPDATA%\Programs\reason-plus-companion-app\Reason+ Companion.exe"
  Return

LaunchSpotify:
  Gosub, HideMenu
  If WinExist("ahk_exe Spotify.exe") 
    WinActivate
  Else
    ; Spotify is an app from the Windows store, with a freakishly
    ; complicated path, so we've created a link for it in the /links
    ; sub-directory 
    Run, "%LINK_DIR%Spotify.lnk"
  Return

LaunchTotalCommander:
  Gosub, HideMenu
  If WinExist("ahk_exe TOTALCMD64.EXE") 
    WinActivate
  Else
    Run, "C:\Program Files\totalcmd\TOTALCMD64.EXE"
  Return

LaunchCode:
  Gosub, HideMenu
  If WinExist("ahk_exe Code.exe") 
    WinActivate
  Else
    Send ^!#{v}
    ; For some reason, a Run WON'T WORK with Electron apps like this one, 
    ; so using a hotkey defined with WinHotKey 
    ;Run, "%LOCALAPPDATA%\Programs\Microsoft VS Code\Code.exe"
  Return

LaunchVim:
  Gosub, HideMenu
  If WinExist("ahk_exe gvim.exe") 
    WinActivate
  Else
    Run, "C:\Program Files (x86)\Vim\vim90\gvim.exe"
  Return

ShowMenu:
  Gui, QuickLaunch:Show
  Return

HideMenu:
  Gui, QuickLaunch:Hide
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

AddUnassignedButton(name, icon, x, y)
{
  Gui, Add, Button, x%x% y%y% h48 w48 gHideMenu hwnd%name%
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