Set objShell = WScript.CreateObject("WScript.Shell")
count = 0

objShell.Run "%SystemRoot%\System32\RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters", 1, True

' Buddy


count = 0

Do While count < 4
    objShell.SendKeys "{TAB}"
    WScript.Sleep 100

    count = count + 1

    if count = 3 then
    objShell.SendKeys "{Enter}"
    count = 0
    end if
Loop

