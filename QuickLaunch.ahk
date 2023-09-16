#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#Include ./lib/UseGDIP.ahk
#Include ./lib/Class_ImageButton.ahk

Global QL_VERSION := 4.1.0
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

AddQuickLaunchButton("Duet", "Key1", 10, 68, "gLaunchDuet")
AddQuickLaunchButton("Downloads", "Key2", 68, 68, "gLaunchDownloads")
AddQuickLaunchButton("Bome", "Key3", 126, 68, "gLaunchBome")
AddQuickLaunchButton("Bome", "Key4", 184, 68, "gLaunchAlienware")
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
AddQuickLaunchButton("Chrome", "KeyE", 155, 126, "gLaunchChrome")
AddQuickLaunchButton("Reason", "KeyR", 213, 126, "gLaunchReason")
AddQuickLaunchButton("TotalCommander", "KeyT", 271, 126, "gLaunchTotalCommander")
AddQuickLaunchButton("Sleep", "KeyZ", 329, 126, "gGoToSleep")
AddUnassignedButton("UNASSIGNED_KeyU", "KeyU", 387, 126)
AddQuickLaunchButton("Illustrator", "KeyI", 445, 126, "gLaunchIllustrator")
AddQuickLaunchButton("Notion", "KeyO", 503, 126, "gLaunchNotion")
AddQuickLaunchButton("Passwords", "KeyP", 561, 126, "gLaunchPasswords")
AddQuickLaunchButton("Premiere", "KeyUmlautU", 619, 126, "gLaunchPremiere")
AddQuickLaunchButton("ReasonPlus", "KeyPlus", 677, 126, "gLaunchReasonPlus")

AddQuickLaunchButton("GMail", "KeyA", 54, 184, "gLaunchGMail")
AddQuickLaunchButton("PowerShell", "KeyS", 112, 184, "gLaunchPowerShell")
AddQuickLaunchButton("GoogleDocs", "KeyD", 170, 184, "gLaunchGDocs")
AddQuickLaunchButton("Calculator", "KeyF", 228, 184, "gLaunchCalculator")
AddQuickLaunchButton("GitBash", "KeyG", 286, 184, "gLaunchBash")
AddQuickLaunchButton("GoogleSheets", "KeyH", 344, 184, "gLaunchGSheets")
AddQuickLaunchButton("Acrobat", "KeyJ", 402, 184, "gLaunchAcrobat")
AddQuickLaunchButton("GCalendar", "KeyK", 460, 184, "gLaunchGCalendar")
AddQuickLaunchButton("AbletonLive", "KeyL", 518, 184, "gLaunchLive")
AddUnassignedButton("UNASSIGNED_KeyUmlautO", "KeyUmlautO", 576, 184)
AddUnassignedButton("UNASSIGNED_KeyUmlautA", "KeyUmlautA", 634, 184)
AddUnassignedButton("UNASSIGNED_KeyHash", "KeyHash", 692, 184)

AddUnassignedButton("UNASSIGNED_KeyLessThan", "KeyLessThan", 25, 242)
AddQuickLaunchButton("Spotify", "KeyY", 83, 242, "gLaunchSpotify")
AddQuickLaunchButton("Max", "KeyX", 141, 242, "gLaunchMax")
AddQuickLaunchButton("Code", "KeyC", 199, 242, "gLaunchCode")
AddQuickLaunchButton("Vim", "KeyV", 257, 242, "gLaunchVim")
AddQuickLaunchButton("Photoshop", "KeyB", 315, 242, "gLaunchPhotoshop")
AddQuickLaunchButton("Animate", "KeyN", 373, 242, "gLaunchAnimate")
AddQuickLaunchButton("SimpleMind", "KeyM", 431, 242, "gLaunchSimpleMind")
AddUnassignedButton("UNASSIGNED_KeyComma", "KeyComma", 489, 242)
AddUnassignedButton("UNASSIGNED_KeyPeriod", "KeyPeriod", 547, 242)
AddUnassignedButton("UNASSIGNED_KeyDash", "KeyDash", 605, 242)

Gui, Add, Text, x360 y300 h3 cGray, Thank you for using QuickLaunch, made with love by Zapperment!

Gosub, ShowGui

; ---------------------------------------------------------
; Adding hotkeys to each of the icon buttons on the virtual
; QuickLaunch keyboard, active when the QuickLaunch menu is
; shown
; ---------------------------------------------------------

#IfWinActive, QuickLaunch, Zapperment
  1::Gosub, LaunchDuet
  2::Gosub, LaunchDownloads
  3::Gosub, LaunchBome
  4::Gosub, LaunchAlienware
  w::Gosub, LaunchWhatsApp
  e::Gosub, LaunchChrome
  r::Gosub, LaunchReason
  t::Gosub, LaunchTotalCommander
  z::Gosub, GoToSleep
  i::Gosub, LaunchIllustrator
  b::Gosub, LaunchPhotoshop
  n::Gosub, LaunchAnimate
  m::Gosub, LaunchSimpleMind
  SC01A::Gosub, LaunchPremiere
  o::Gosub, LaunchNotion
  p::Gosub, LaunchPasswords
  +::Gosub, LaunchReasonPlus
  a::Gosub, LaunchGMail
  s::Gosub, LaunchPowerShell
  d::Gosub, LaunchGDocs
  f::Gosub, LaunchCalculator
  g::Gosub, LaunchBash
  h::Gosub, LaunchGSheets
  j::Gosub, LaunchAcrobat
  k::Gosub, LaunchGCalendar
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

#!F2::
  Gosub, ShowMenu
Return

SC112::
  Gosub, ShowMenu
Return

ShowGui:
  Gosub, ShowMenu
Return

; --------------------------------------
; Subroutines to launch the various apps
; --------------------------------------

LaunchDuet:
  Gosub, HideMenu
  If WinExist("ahk_exe duet.exe")
    WinActivate
  Else
    Run, "C:\Program Files\Kairos\Duet Display\duet.exe"
Return

LaunchBome:
  Gosub, HideMenu
  If WinExist("ahk_exe MIDITranslator.exe")
    WinActivate
  Else
    Run, "C:\Program Files (x86)\Bome MIDI Translator Pro\MIDITranslator.exe"
Return

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

LaunchGCalendar:
  Gosub, HideMenu
  If WinExist("Google Calendar")
    WinActivate
  Else
    Run, "C:\Users\wieka\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Chrome-Apps\Google Calendar.lnk"
Return

LaunchGDocs:
  Gosub, HideMenu
  If WinExist("Dokumente")
    WinActivate
  Else
    Run, "C:\Users\wieka\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Chrome-Apps\Dokumente.lnk"
Return

LaunchAlienware:
  Gosub, HideMenu
  If WinExist("ahk_class AlienwareCommandCenter")
    WinActivate
  Else
    Run, "%LINK_DIR%Alienware.lnk"
Return

LaunchCalculator:
  Gosub, HideMenu
  If WinExist("ahk_class WindowsCalculator")
    WinActivate
  Else
    Run, "%LINK_DIR%Calculator.lnk"
Return

LaunchWhatsApp:
  Gosub, HideMenu
  If WinExist("ahk_exe WhatsApp.exe")
    WinActivate
  Else
    ; WhatsApp is an app from the Windows store, with a freakishly
    ; complicated path, so we've created a link for it in the /links
    ; sub-directory
    Run, "%LINK_DIR%WhatsApp.lnk"
Return

LaunchChrome:
  Gosub, HideMenu
  If WinExist("ahk_exe chrome.exe")
    WinActivate
  Else
    Run, "C:\Program Files\Google\Chrome\Application\chrome.exe"
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

LaunchAcrobat:
  Gosub, HideMenu
  If WinExist("ahk_exe Acrobat.exe")
    WinActivate
  Else
    Run, "C:\Program Files\Adobe\Acrobat DC\Acrobat\Acrobat.exe"
Return

LaunchPhotoshop:
  Gosub, HideMenu
  If WinExist("ahk_exe Photshop.exe")
    WinActivate
  Else
    Run, "C:\Program Files\Adobe\Adobe Photoshop 2023\Photoshop.exe"
Return

LaunchIllustrator:
  Gosub, HideMenu
  If WinExist("ahk_exe Illustrator.exe")
    WinActivate
  Else
    Run, "C:\Program Files\Adobe\Adobe Illustrator 2023\Support Files\Contents\Windows\Illustrator.exe"
Return

LaunchAnimate:
  Gosub, HideMenu
  If WinExist("ahk_exe Animate.exe")
    WinActivate
  Else
    Run, "C:\Program Files\Adobe\Adobe Animate 2023\Animate.exe"
Return

LaunchSimpleMind:
  Gosub, HideMenu
  If WinExist("ahk_exe SimpleMindPro.exe")
    WinActivate
  Else
    Run, "C:\Program Files (x86)\ModelMakerTools\SimpleMind\2.1.1\SimpleMindPro.exe"
Return

LaunchPremiere:
  Gosub, HideMenu
  If WinExist("Adobe Premiere Pro")
    WinActivate
  Else
    Run, "C:\Program Files\Adobe\Adobe Premiere Pro 2023\Adobe Premiere Pro.exe"
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
    ; iCloud Passwords is an app from the Windows store, with a freakishly
    ; complicated path, so we've created a link for it in the /links
    ; sub-directory
    Run, "%LINK_DIR%iCloudPasswords.lnk"
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

LaunchPowerShell:
  Gosub, HideMenu
  If WinExist("ahk_exe pwsh.exe")
    WinActivate
  Else
    ; PowerShell is an app from the Windows store, with a freakishly
    ; complicated path, so we've created a link for it in the /links
    ; sub-directory
    Run, "%LINK_DIR%PowerShell.lnk"
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
