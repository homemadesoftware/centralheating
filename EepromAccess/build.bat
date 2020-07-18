DEL *.REL

C:\SDCC\bin\sdcc.exe        --verbose --compile-only --vc -V -DMC8051 -I../Common Main.c
C:\SDCC\bin\sdcc.exe        --verbose --compile-only --vc -V -DMC8051 -I../Common LcdDisplay.c
C:\SDCC\bin\sdcc.exe        --verbose --compile-only --vc -V -DMC8051 -I../Common ../Common/StringUtils.c
C:\SDCC\bin\sdcc.exe        --verbose --iram-size 1796 Main.rel LcdDisplay.rel StringUtils.rel
C:\SDCC\bin\packihx.exe     Main.ihx > Main.hex
