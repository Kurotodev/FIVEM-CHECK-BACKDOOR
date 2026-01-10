@echo off
set malwarefound=0

echo You must place this file inside your resources directory!
echo [MalScanner] Welcome. Press Enter to begin scanning.
pause

echo [MalScanner] Malware Lua Filter 1 checked (Variable used to infect the server: "random_char")
findstr /s /m "random_char" *.lua
if %errorlevel%==0 (
set malwarefound=1
)

echo ------------------------------------
echo [MalScanner] Malware Lua Filter 2 checked (Variable used to infect the server: "Enchanced_Tabs")
findstr /s /m "Enchanced_Tabs" *.lua
if %errorlevel%==0 (
set malwarefound=1
)

echo ------------------------------------
echo [MalScanner] Malware Lua Filter 3 checked (Event injection for cheat abuse: "helpCode")
findstr /s /m "helpCode" *.lua
if %errorlevel%==0 (
set malwarefound=1
)

echo ------------------------------------
echo [MalScanner] Malware Lua Filter 4 checked (Load function - may appear in some CFX default resources, possible false positive)
findstr /s /m "assert(load(" *.lua
if %errorlevel%==0 (
set malwarefound=1
)

echo ------------------------------------
echo [MalScanner] Malware Lua Filter 5 checked (Obfuscated code)
findstr /s /m "\x50\x65\x72\x66\x6f\x72\x6d\x48\x74\x74\x70\x52\x65\x71\x75\x65\x73\x74" *.lua
if %errorlevel%==0 (
set malwarefound=1
)

echo ------------------------------------
echo [MalScanner] Malware Lua Filter 6 checked (Event injection for cheat abuse: "helperServer")
findstr /s /m "helperServer" *.lua
if %errorlevel%==0 (
set malwarefound=1
)

echo ------------------------------------
echo [MalScanner] Malware Lua Filter 7 checked (Obfuscated code)
findstr /s /m "eGlAnDJByGaVAuyZDaXRzNwsCziWWqkhxierAdUuVyguVhqKsulbKUHiETOTsQTNuVsoCG" *.lua
if %errorlevel%==0 (
set malwarefound=1
)

echo ------------------------------------
echo [MalScanner] Malware Lua Filter 8 checked (Manifest injection)
findstr /s /m "--[[server.lua]]" *.lua
if %errorlevel%==0 (
set malwarefound=1
)

echo ------------------------------------
echo [MalScanner] Malware JavaScript Filter 1 checked (Obfuscated code)
findstr /s /m "Job ID" *.js
if %errorlevel%==0 (
set malwarefound=1
)

echo ------------------------------------
echo [MalScanner] Malware JavaScript Filter 2 checked (Obfuscated code)
findstr /s /m "x=s=>" *.js
if %errorlevel%==0 (
set malwarefound=1
)

echo ------------------------------------
echo [MalScanner] Malware JavaScript Filter 3 checked (Injected code)
findstr /s /m "/* [ " *.js
if %errorlevel%==0 (
set malwarefound=1
)

echo ------------------------------------
if %malwarefound%==1 (
echo [MalScanner] Malware detected! Review the flagged resource files above. They contain malicious code. Use source comparison to remove it.
) else (
echo [MalScanner] No malware detected.
)

pause

