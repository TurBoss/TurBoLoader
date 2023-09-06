001 PRINT("                                                         ") 
002 PRINT("            ______  __ __  ____   ____    ___            ")
003 PRINT("           |      T|  T  T|    \ |    \  /   \           ")
004 PRINT("           |      ||  |  ||  D  )|  o  )Y     Y          ")
005 PRINT("           l_j  l_j|  |  ||    / |     T|  O  |          ")
006 PRINT("             |  |  |  :  ||    \ |  O  ||     |          ")
007 PRINT("             |  |  l     ||  .  Y|     |l     !          ")
008 PRINT("             l__j   \__,_jl__j\_jl_____j \___/           ")
009 PRINT("         _       ___    ____  ___      ___  ____         ")
010 PRINT("        | T     /   \  /    T|   \    /  _]|    \        ")
011 PRINT("        | |    Y     YY  o  ||    \  /  [_ |  D  )       ")
012 PRINT("        | l___ |  O  ||     ||  D  YY    _]|    /        ")
013 PRINT("        |     T|     ||  _  ||     ||   [_ |    \        ")
014 PRINT("        |     |l     !|  |  ||     ||     T|  .  Y       ")
015 PRINT("        l_____j \___/ l__j__jl_____jl_____jl__j\_j       ")
016 PRINT("                                                         ")
017 PRINT("                                            V 0.0.1 2023 ")
018 PRINT("                                                         ")
019 PRINT("                       1: FUZIX (TODO)                   ")
020 PRINT("                       2: CP/M                           ")
021 PRINT("                       3: ZEAL (WIP)                     ")
022 PRINT("                       4: TRS-OS (WIP)                   ")
023 PRINT("                       0: MOS                            ")
024 PRINT("                                                         ")
025 :
030 REPEAT
031   INPUT opt
032 UNTIL INT(opt) = opt AND opt >= 0 AND opt < 5
033 :
040 IF opt = 0 THEN PROC_mos
070 IF opt = 1 THEN PROC_fuzix
090 IF opt = 2 THEN PROC_cpm
130 IF opt = 3 THEN PROC_zeal
160 IF opt = 4 THEN PROC_trs_os
190 END
200 :
210 DEF PROC_mos
211   PRINT("BACK TO MOS.")
220   OSCLI("CD /")
230   *BYE
240 ENDPROC
250 DEF PROC_fuzix
260   PRINT("BOOTING FUZIX")
261   OSCLI("CD /")
262   *BYE
270 ENDPROC
280 DEF PROC_cpm
290   PRINT("BOOTING CP/M")
300   OSCLI("CD /CPM")
310   OSCLI("LOAD /CPM/cpm.bin")
320   OSCLI("RUN")
330 ENDPROC
340 DEF PROC_zeal
350   PRINT("BOOTING ZEAL")
360   OSCLI("CD /ZEAL")
370   OSCLI("OSbootZ os.img")
390 ENDPROC
400 DEF PROC_trs_os
410   PRINT("BOOTING TRS-OS")
420   OSCLI("CD /TRS-OS")
430   OSCLI("LOAD /MOS/OSboot.bin")
440   OSCLI("RUN . TRS-OSe.bin")
450 ENDPROC
