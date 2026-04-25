DEL *.REL

where sdcc >nul 2>&1 || set "PATH=C:\Program Files\SDCC\bin;%PATH%"

"C:\Program Files\SDCC\bin\sdcc.exe"      --verbose --compile-only --vc -V -DMC8051 --model-large -I../Common SimpleCentralHeating.c
"C:\Program Files\SDCC\bin\sdcc.exe"      --verbose --compile-only --vc -V -DMC8051 --model-large -I../Common 89C51Board.c
"C:\Program Files\SDCC\bin\sdcc.exe"      --verbose --compile-only --vc -V -DMC8051 --model-large -I../Common ../Common/MenuMgr.c
"C:\Program Files\SDCC\bin\sdcc.exe"      --verbose --compile-only --vc -V -DMC8051 --model-large -I../Common ../Common/CentralHeating.c
"C:\Program Files\SDCC\bin\sdcc.exe"      --verbose --compile-only --vc -V -DMC8051 --model-large -I../Common ../Common/CentralHeatingMenus.c
"C:\Program Files\SDCC\bin\sdcc.exe"      --verbose --compile-only --vc -V -DMC8051 --model-large -I../Common ../Common/StringUtils.c
"C:\Program Files\SDCC\bin\sdcc.exe"      --verbose --compile-only --vc -V -DMC8051 --model-large -I../Common ../Common/DateTime.c
"C:\Program Files\SDCC\bin\sdcc.exe"      --verbose --compile-only --vc -V -DMC8051 --model-large -I../Common LcdDisplay.c
"C:\Program Files\SDCC\bin\sdcc.exe"      --verbose --compile-only --vc -V -DMC8051 --model-large -I../Common I2C.c
"C:\Program Files\SDCC\bin\sdcc.exe"      --verbose --compile-only --vc -V -DMC8051 --model-large -I../Common RTC1307.c
"C:\Program Files\SDCC\bin\sdcc.exe"      --verbose --iram-size 1796 --model-large 89C51Board.rel SimpleCentralHeating.rel MenuMgr.rel CentralHeating.rel CentralHeatingMenus.rel LcdDisplay.rel I2C.rel RTC1307.rel StringUtils.rel DateTime.rel
"C:\Program Files\SDCC\bin\packihx.exe"    89C51Board.ihx > 89C51Board.hex
REM C:\Program Files\SDCC\bin\packihx.exe     SimpleCentralHeating.ihx > SimpleCentralHeating.hex