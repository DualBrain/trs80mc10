���         
          
 5 POKE11,0:POKE12,253          
 10 A=53259+64*4+5          
 12 PRINTCHR$(26)          
 14 FORI=0TO24*64STEP128:FORJ=0TO22STEP2:POKEA+I+J,148:NEXTJ,I          
 16 A=A+63          
 18 FORI=0TO22*64STEP128:FORJ=0TO24STEP2:POKEA+I+J,149:NEXTJ,I          
 20 A=A-63          
 22 FORI=0TO24*64STEP512:FORJ=0TO22:POKEA+I+J,187:NEXTJ,I          
 24 A=A-1          
 26 FORI=0TO24STEP8:FORJ=0TO24*64STEP64:POKEA+I+J,187:NEXTJ,I          
 28 A=54616          
 30 FORI=0TO7:FORJ=0TO15:POKEA+J+64*I,32:NEXTJ,I          
 32 A=54112          
 34 FORI=0TO7:FORJ=0TO7:POKEA+J+64*I,32:NEXTJ,I          
 35 GOTO38          
 36 FORI=1TOLEN(A$):POKEA+I,ASC(MID$(A$,I,1)):NEXT:RETURN          
 38 A=53259+64*3:A=A+127          
 39 DIMA$(13)          
 40 FORI=1TO12:READA$:A$(I)=A$:NEXT          
 42 DATAJOHN,DAVE,BILL,ADAM,RED,GREY,BLUE,FAWN,No.2,No.4,No.6,No.8          
 45 GOTO48          
 46 FORI=1TOLEN(A$):POKEA+I*64,ASC(MID$(A$,I,1)):NEXT:RETURN          
 48 A=53200          
 50 FORI=1TO12:READA$:A$(I)=A$:NEXT          
 52 DATACARD,PLAY,SOLO,GAME,No.2,No.4,No.6,No.8,RED,GREY,BLUE,FAWN          
 54 FORJ=1TO12:A$=A$(J):GOSUB46:A=A+2:NEXT          
 55 GOTO64          
 56 FORI=1TO4:READA$:A$(I)=A$:NEXT          
 58 FORI=1TO4          
 60 X=INT(4*RND(1)+1):IFA$(X)=""THEN60          
 62 X$(I)=A$(X):A$(X)="":NEXT:RETURN          
 64 RESTORE          
 66 GOSUB56:FORI=1TO4:B$(I)=X$(I):NEXT          
 68 FORI=1TO8:READA$:NEXT          
 70 GOSUB56:FORI=1TO4:C$(I)=X$(I):NEXT          
 71 GOSUB56:FORI=1TO4:D$(I)=X$(I):NEXT          
 72 GOSUB56:FORI=1TO4:E$(I)=X$(I):NEXT          
 74 POKE546,18:POKE547,40:POKE548,209:POKE549,232:PRINTCHR$(30);          
 76 PRINT"1: "B$(1)" "C$(1)" NOR Mr "C$(4)" LIVES AT "D$(3)          
 77 PRINT          
 78 PRINT"2: Mr "C$(2)" LIVES AT "D$(2)" WHICH IS NOT "E$(1)          
 79 PRINT          
 80 PRINT"3: "B$(3)" HAS A "E$(3);:IFE$(3)="RED"THENPRINT" ";          
 81 PRINT" DOOR  BUT  IS  NOT "D$(1)", ";          
 82 PRINT"WHICH IS NOT "E$(2)          
 83 PRINT          
 84 PRINT"4: NEITHER "B$(2)" NOR Mr "C$(3)" LIVES AT  "D$(4);          
 86 PRINT" WHICH  HAS  A "E$(4)" DOOR"          
 87 PRINT          
 88 PRINT"5: "B$(4)" RESIDES AT "D$(4)          
 89 PRINT          
 90 PRINT"KEY (SPC) TO CHECK ANSWERS"          
 92 A=53259+4*64+4          
 94 D=PEEK(A)          
 95 POKEA,161          
 96 C=USR(C):K=PEEK(531)          
 98 IFK=49THENPOKEA,D:A=A-64:GOTO94          
 100 IFK=50THENPOKEA,D:A=A+1:GOTO94            
 102 IFK=51THENPOKEA,D:A=A+64:GOTO94          
 104 IFK=52THENPOKEA,D:A=A-1:GOTO94          
 106 IFK=79THENPOKEA,K:DD=D:GOTO94          
 108 IFK=88THENPOKEA,K:DD=D:GOTO94          
 109 IFK=95THENPOKEA,DD:GOTO94          
 110 IFK<>32THEN94          
 112 PRINTCHR$(30)          
 114 FORI=1TO3          
 116 PRINTB$(I)" ";:INPUTA$:IFA$<>C$(I)THEN200          
 118 PRINT"LIVES AT No.";:INPUTA$:IFA$<>RIGHT$(D$(I),1)THEN200          
 120 PRINT"WITH A DOOR COLORED ";:INPUTA$:IFA$<>E$(I)THEN200          
 122 PRINT:NEXT          
 130 PRINTCHR$(30);          
 132 PRINT:PRINT"WELL DONE"          
 134 PRINT:PRINT"YOU GOT IT"          
 136 GOTO210          
 200 PRINTCHR$(30);"SORRY YOU ARE"          
 202 PRINT"WRONG"          
 204 PRINT:FORI=1TO4          
 206 PRINTB$(I)" "C$(I)" LIVES AT "D$(I)"  WITH  A "E$(I)" DOOR"          
 208 PRINT:NEXT          
 210 PRINT:PRINT"DO TRY AGAIN"          
 212 POKE546,43:POKE547,15:POKE548,208:POKE549,71          
OK          
