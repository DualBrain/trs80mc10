          
 0 REM car rally          
 1 Q9=INT(RND(1)*100+100)          
 2 PRINTCHR$(12)          
 3 GOSUB50:FORJ=1TO15:PRINTCHR$(11);:NEXT          
 4 POKE54221,32:S=64:D=53565:M=53536:Z3=53340          
 5 N=53984:F=18:U=53728:POKEU,18          
 6 POKE11,34:POKE12,2:POKE530,1:K=57088:POKEK,127          
 7 P1=127:P2=191:P3=32:P4=179:P5=1:P6=.5:P7=8:P8=40          
 8 POKE11,51:POKE12,31:X=USR(277):POKE11,34:POKE12,2          
 9 P=PEEK(K)          
 10 IFP=P1ANDU>MTHENPOKEU,P3:U=U-S          
 11 IFP=P2ANDU<NTHENPOKEU,P3:U=U+S          
 12 IFPEEK(U)=P4THENGOSUB24          
 13 X=USR(X):POKEU-P5,P3          
 14 IFPEEK(U)=P4THENGOSUB24          
 15 POKEU,F          
 16 IFRND(P5)<P6GOTO19          
 17 I=S*INT(RND(P5)*P7)          
 18 POKED+I,P4          
 19 Q=Q+P5:Z=Z+P5          
 20 IFQ>Q9THENZ=Z+P5:GOTO8          
 21 POKE11,51:POKE12,31:X=USR(275)          
 22 FORT=P5TOP8:NEXT          
 23 POKE11,34:POKE12,2:GOTO9          
 24 H=H+1:Q=0:POKE11,51:POKE12,31:POKEU-P5,P3:FORT=1TO10          
 25 FORT1=16TO23:POKEU,T1:X=USR(15*T1)          
 26 NEXTT1,T:POKEU,18:POKE11,34:POKE12,2:IFH=5THEN37          
 27 POKEZ3-1,83:POKEZ3-2,73          
 28 POKEZ3-4,69:POKEZ3-5,82:POKEZ3-6,79          
 29 POKEZ3-7,67:POKEZ3-8,83          
 30 Z$=STR$(Z):Z1=LEN(Z$)          
 31 FORZ2=Z3TOZ3+Z1-P5:Z4=Z4+P5          
 32 POKEZ2,ASC(MID$(Z$,Z4,P5)):NEXT:Z4=0          
 33 FORT=1TO5000:NEXT          
 34 Q9=INT(RND(1)*100+100)          
 35 FORZ2=Z3-P7TOZ3+Z1-P5:POKEZ2,P3:NEXT          
 36 FORT=1TO3000:NEXT:RETURN          
 37 FORT=1TO16:PRINT:NEXT          
 38 POKE530,0:POKE518,255          
 39 PRINT"  YOUR FINAL SCORE IS ";Z          
 40 PRINT"   Do you want another go (Y/N) ?":POKE518,0:POKE11,0          
 41 POKE12,253:X=USR(X):IFPEEK(531)=89THENRUN          
 42 IFPEEK(531)<>78THEN41          
 43 FOR T=1TO16:PRINT:NEXT:END          
 44 DATA162,1,189,0,210,157,255,209,169,32          
 45 DATA157,0,210,189,0,209,157,255,208,169          
 46 DATA32,157,0,209,232,208,231,169,32,141          
 47 DATA12,209,141,76,209,141,140,209,141          
 48 DATA204,209,141,12,210,141,76,210,141          
 49 DATA140,210,141,204,210,96          
 50 FORT=546TO599:READT1:POKET,T1:NEXT          
 51 PRINT"  DO YOU NEED INSTRUCTIONS?"          
 52 POKE11,0:POKE12,253:X=USR(X):IFPEEK(531)=89THEN55          
 53 IFPEEK(531)<>78THEN52          
 54 GOTO68          
 55 PRINTTAB(15)"CAR RALLY":PRINT          
 56 PRINT"  You have to work your way through the cars"          
 57 PRINT"  you are overtaking without hitting them."          
 58 PRINT"  After five crashes the game ends":PRINT          
 59 PRINTTAB(13)"CONTROLS ARE :"          
 60 PRINT"    # 1    Move up"          
 61 PRINT"    # 2    Move down":PRINT          
 62 PRINT"  WARNING  ! ! ! !......."          
 63 PRINT"  Your car will accelerate some time during"          
 64 PRINT"  each part of the race......so watch out!"          
 65 PRINT          
 66 POKE11,0:POKE12,253          
 67 PRINT"  Get your crash helmet on and hit any key.":X=USR(X)          
 68 PRINTCHR$(12):PRINT:PRINT          
 69 PRINT" -        -        -        -        -          
 70 PRINT:PRINT:PRINT:PRINT          
 71 PRINT" -        -        -        -        -          
 72 PRINT:PRINT:RETURN          
OK
POKE251,255:POKE12,254:X=PEEK(65535):POKE11,48-19*(X=1):X=USR(0)  
.1F2B/46FF00100015004B2005AEA5AE8D2E1FA9008D2F1FA5AF209E1F186E2D1F6E2C1F186E2D1F6E2C1FA9068D311FA96D8D301FA5AF8D321F20CD1FAC301FA9518D00F020951FA9118D00F0AC301F20951FAD2C1FF006CE2C1F4C651FCE2C1FAD2D1FF006CE2D1F4C651F60A20DCAD0FD88D0F86048A9008D2C1F8D2D1F68A208182E2C1F2E2D1F0A9015A8AD2C1F186D2E1F8D2C1FAD2D1F6D2F1F8D2D1F98CAD0DE60A9008D2B1FA2114CE81FAD2B1F9006ED321F4CEC1F38ED321FB004184CF01F8D2B1F382E301F2E311FCAF0062E2B1F4CD71F60.0000G
