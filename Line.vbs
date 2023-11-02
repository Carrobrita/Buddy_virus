Set objShell = CreateObject("WScript.Shell")
count = 0

Do While count < 4

    message = GenerateRandomString(40, 10)
    title = GenerateRandomString(10, 5)

    MsgBox message, vbInformation, title

    WScript.Sleep 180000 
    count = count + 1
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

