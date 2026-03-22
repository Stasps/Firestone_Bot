; OpenTown.ahk

; simple script to save on coding
OpenTown(){
    ControlFocus,, Firestone
    MsgBox, , Город, Открываем окно города, 1.5
    MouseMove, 1860*VarX, (215-22)*VarY + BorTop, 0
    Sleep, 500
    Click
    Sleep, 1500
}