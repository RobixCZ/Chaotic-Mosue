#Requires AutoHotkey v2.0
#SingleInstance Force
Persistent

active := false

; Pravý ALT + Z = zapnout / vypnout
RAlt & z:: {
    global active
    active := !active
    SetTimer(Chaos, active ? 50 : 0)
    ToolTip(active ? "Chaos: ZAPNUTO" : "Chaos: VYPNUTO")
    SetTimer(() => ToolTip(), -1000)
}

Chaos() {
    MouseMove(Random(0, A_ScreenWidth - 1), Random(0, A_ScreenHeight - 1), 0)

    if Mod(Random(0, 9), 3) = 0
        Click

    if Mod(Random(0, 9), 5) = 0
        Send(Chr(Random(65, 90)))   ; náhodné písmeno A-Z
}