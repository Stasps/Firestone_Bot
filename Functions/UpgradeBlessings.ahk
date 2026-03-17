; upgradeBlessings — адаптированно

#Include Functions\subFunctions\MainMenu.ahk
#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\ClickBless.ahk

ControlFocus,, Firestone
MainMenu()

UpgradeBlessings(){
    ; open blessings page if ready
    PixelSearch, X, Y, 865*VarX, (506-22)*VarY + BorTop, 904*VarX, (547-22)*VarY + BorTop, 0xF40000, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 828*VarX, (585-22)*VarY + BorTop, 0
        Sleep, 1000
        Click
        Sleep, 1500
        
        ; 12 o-clock position
        PixelSearch, X, Y, 1402*VarX, (185-22)*VarY + BorTop, 1457*VarX, (231-22)*VarY + BorTop, 0xF60000, 10, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1375*VarX, (239-22)*VarY + BorTop, 0
            Sleep, 1000
            Click
            Sleep, 1000
            ClickBless()
        }
        
        ; 1 o-clock position
        PixelSearch, X, Y, 1565*VarX, (220-22)*VarY + BorTop, 1631*VarX, (291-22)*VarY + BorTop, 0xF60000, 10, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1535*VarX, (286-22)*VarY + BorTop, 0
            Sleep, 1000
            Click
            Sleep, 1000
            ClickBless()
        }
        
        ; 2 o-clock position
        PixelSearch, X, Y, 1688*VarX, (340-22)*VarY + BorTop, 1734*VarX, (389-22)*VarY + BorTop, 0xF60000, 10, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1662*VarX, (407-22)*VarY + BorTop, 0
            Sleep, 1000
            Click
            Sleep, 1000
            ClickBless()
        }
        
        ; 3 o-clock position
        PixelSearch, X, Y, 1741*VarX, (507-22)*VarY + BorTop, 1777*VarX, (546-22)*VarY + BorTop, 0xF60000, 10, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1703*VarX, (578-22)*VarY + BorTop, 0
            Sleep, 1000
            Click
            Sleep, 1000
            ClickBless()
        }
        
        ; 4 o-clock position
        PixelSearch, X, Y, 1695*VarX, (673-22)*VarY + BorTop, 1731*VarX, (711-22)*VarY + BorTop, 0xF60000, 10, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1653*VarX, (741-22)*VarY + BorTop, 0
            Sleep, 1000
            Click
            Sleep, 1000
            ClickBless()
        }
        
        ; 5 o-clock position
        PixelSearch, X, Y, 1577*VarX, (795-22)*VarY + BorTop, 1613*VarX, (825-22)*VarY + BorTop, 0xF60000, 10, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1531*VarX, (860-22)*VarY + BorTop, 0
            Sleep, 1000
            Click
            Sleep, 1000
            ClickBless()
        }
        
        ; 6 o-clock position
        PixelSearch, X, Y, 1414*VarX, (837-22)*VarY + BorTop, 1447*VarX, (876-22)*VarY + BorTop, 0xF60000, 10, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1372*VarX, (903-22)*VarY + BorTop, 0
            Sleep, 1000
            Click
            Sleep, 1000
            ClickBless()
        }
        
        ; 7 o-clock position
        PixelSearch, X, Y, 1258*VarX, (793-22)*VarY + BorTop, 1283*VarX, (828-22)*VarY + BorTop, 0xF60000, 10, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1207*VarX, (852-22)*VarY + BorTop, 0
            Sleep, 1000
            Click
            Sleep, 1000
            ClickBless()
        }
        
        ; 8 o-clock position
        PixelSearch, X, Y, 1132*VarX, (672-22)*VarY + BorTop, 1165*VarX, (703-22)*VarY + BorTop, 0xF60000, 10, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1089*VarX, (742-22)*VarY + BorTop, 0
            Sleep, 1000
            Click
            Sleep, 1000
            ClickBless()
        }
        
        ; 9 o-clock position
        PixelSearch, X, Y, 1091*VarX, (510-22)*VarY + BorTop, 1115*VarX, (541-22)*VarY + BorTop, 0xF60000, 10, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1045*VarX, (575-22)*VarY + BorTop, 0
            Sleep, 1000
            Click
            Sleep, 1000
            ClickBless()
        }
        
        ; 10 o-clock position
        PixelSearch, X, Y, 1131*VarX, (345-22)*VarY + BorTop, 1165*VarX, (377-22)*VarY + BorTop, 0xF60000, 10, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1089*VarX, (415-22)*VarY + BorTop, 0
            Sleep, 1000
            Click
            Sleep, 1000
            ClickBless()
        }
        
        ; 11 o-clock position
        PixelSearch, X, Y, 1256*VarX, (224-22)*VarY + BorTop, 1277*VarX, (261-22)*VarY + BorTop, 0xF60000, 10, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1209*VarX, (291-22)*VarY + BorTop, 0
            Sleep, 1000
            Click
            Sleep, 1000
            ClickBless()
        }
        
        ; fate position
        PixelSearch, X, Y, 1431*VarX, (498-22)*VarY + BorTop, 1465*VarX, (531-22)*VarY + BorTop, 0xF60000, 10, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1370*VarX, (572-22)*VarY + BorTop, 0
            Sleep, 1000
            Click
            Sleep, 1000
            ClickBless()
        }
    }
}