#Requires AutoHotkey v2.0

SendGuid(lowerCase) {
    TypeLib := ComObject("Scriptlet.TypeLib")
    NewGUID := TypeLib.Guid
    NewGUID := SubStr(NewGUID, 2, 36)
    if (lowerCase)
        NewGUID := StrLower(NewGUID)
    Send(NewGUID)
}

!g::SendGuid(true)
!+g::SendGuid(false)
