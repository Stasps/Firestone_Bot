; BigClose.ahk

; function to close menus
BigClose(){
    ; клик по центру крестика закрытия окна
    ; адаптировано под разрешение и отступы
	; по умолчанию было 1880,75
    MouseMove, 1845*VarX, (75-22)*VarY + BorTop, 0
    Sleep, 1000
    Click
    Sleep, 1500
    Return
}