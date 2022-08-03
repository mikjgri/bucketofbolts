SendGuid(lowerCase)
{
    TypeLib := ComObjCreate("Scriptlet.TypeLib")
    NewGUID := TypeLib.Guid
    NewGUID := SubStr(NewGUID, 2, 36)
    if lowerCase
        StringLower, NewGUID, NewGUID
    Send, %NewGUID%
}
!g::
    SendGuid(true)
return
!+g::
    SendGuid(false)
return