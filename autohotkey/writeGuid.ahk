!g::
    TypeLib := ComObjCreate("Scriptlet.TypeLib")
    NewGUID := TypeLib.Guid
    NewGUID := SubStr(NewGUID, 2, 36)
    Send, %NewGUID%
return
