Process, Priority,, High
#NoEnv
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0
#WinActivateForce
#Persistent
#SingleInstance off
ListLines, off

SetBatchLines, -1
SetKeyDelay, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
SetWinDelay, -1
SetControlDelay, -1

NumpadAdd::
InputBox, num
num -= 1
Send, {ShiftDown}{F10}{ShiftUp}
Sleep, 100
Send, {z}
Sleep, 3000
Send, {Enter}
loop % num {
    Sleep, 100
    Send, {Down}
    Sleep, 100
    Send, {ShiftDown}{F10}{ShiftUp}
    Sleep, 100
    Send, {z}
    Sleep, 3000
    Send, {Enter}
}
Return

NumpadSub::
InputBox, str
Send, {ShiftDown}{F10}{ShiftUp}{l 2}{Enter}
Sleep, 1000
Send, %str%
Send, {Enter}
Sleep, 2500
Send, {Enter}
Sleep, 100
Send, {Delete}
Sleep, 100
Send, y
Return