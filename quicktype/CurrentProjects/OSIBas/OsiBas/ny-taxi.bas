          
          
 1 REMK.STEPHENS:N.Y.TAXI:1P          
 2 CLEAR:INPUT"DIRECTIONS";E$:IFLEFT$(E$,1)="N"THEN17          
 3 PRINT:PRINT:PRINT"NEW YORK TAXI"          
 4 PRINT:PRINT"THE OBJECT OF THIS GAME IS TO CATCH A TAXI!!"          
 6 PRINT"YOUR CONTROLS ARE:"          
 7 PRINT"  <1>UP, <2>DOWN, <3>LEFT, <4>RIGHT AND....."          
 8 PRINT"MOST IMPORTANTLY <5>FLAGS DOWN THE CABBY":PRINT:PRINT          
 9 PRINT"IMPORTANT NOTE!!!":PRINT"TO FLAG A CAB, YOU MUST BE DIRECTLY"          
 10 PRINT"IN FRONT OF IT OR... THE CAB WON'T STOP."          
 13 PRINT:PRINT:PRINT"READY (Y AND RETURN)":INPUT R$          
 17 FOR N=1 TO 32:PRINT:NEXT N          
 18 K=1:H=53772:I=H:KEY=57088:POKE530,1:POKE54117,32:GOTO 700          
 19 FORN=CATOCA+8:POKEN,32:NEXT:POKECA-61,32          
 20 POKECA-60,32:POKECA-59,32:POKECA+66,32:POKECA+71,32          
 21 CA=CA+2:IF LN>60THEN 700          
 22 FORN=CATOCA+8:POKEN,62:NEXT          
 25 POKECA-61,47:POKECA-60,135:POKECA-59,92:POKECA+4,49          
 27 POKECA+66,79:POKECA+71,79          
 28 LN=LN+2          
 29 IF VI>0 THEN 310          
 30 FORN=11TO12:HI=PEEK(CA+N):IFHI<>32THEN300          
 32 NEXT          
 40 FORV=I-1TOI+1:POKEV,32:NEXT:POKEI-64,32:POKEI+63,32          
 45 POKE I+65,32          
 50 POKEH,48:POKEH-64,79          
 60 POKEH+63,47:POKEH+65,92          
 70 POKEH+1,92:POKEH-1,47          
 80 I=H          
 90 POKEKEY,127:M=PEEK(KEY)          
 95 IF M=127THEN H=H-64          
 100 IFM=191THEN H=H+64          
 105 IFM=223THENH=H-1          
 110 IFM=239THENH=H+1          
 115 IFM=247THEN200          
 130 M=0:GOTO19          
 200 POKE H-1,32:POKEH+1,32          
 210 FOR N=0 TO 70:NEXTN:IF K/2=INT(K/2) THEN230          
 220 POKE H-63,47:POKEH-65,92:FORN=0TO70:NEXT          
 225 POKEH-63,32:POKEH-65,32:K=K+1:GOTO19          
 230 POKEH-1,47:POKEH+1,92:FORN=0TO38:NEXT          
 240 K=K+1:GOTO 19          
 300 HI=0:VI=3          
 305 IF K/2=INT(K/2) THEN 400          
 310 VI=VI-1:IF VI<1 THEN 320:GOTO19          
 315 GOTO19          
 320 POKEH-64,83:POKEH-63,80:POKEH-62,76:POKEH-61,65:POKEH-60,84          
 321 U=INT(10*RND(H)):IF U>3 THEN 500          
 325 SC=SC-10          
 326 PRINT"WELL, WHAT'S A FEW":PRINT"MONTHS IN THE HOSPITAL":PRINT          
 330 PRINT:PRINT"DON'T ANSWER!!!":PRINT:PRINT"YOU LOST 10 PTS.":PRINT          
 331 PRINT:PRINT:INPUT"WANT TO TRY AGAIN";D$          
 332 IFASC(D$)=89THENGOTO17          
 333 PRINT:PRINT"SCARED EH..........":PRINT"TAKE A BUS NEXT TIME!!!"          
 340 PRINT:PRINT:PRINT"FINAL SCORE";SPC(3);SC          
 350 GOTO49999          
 400 POKE H+1,92:POKE H-1,47          
 425 SC=SC+25          
 430 IFSC>100THEN800          
 440 IFSC>25THEN810          
 450 PRINT:PRINT"CONGRATULATIONS!!!!":PRINT          
 452 PRINT"YOU CAUGHT A CAB AND":PRINT"DIDN'T SPILL A DROP"          
 457 PRINT"OF BLOOD!!!":PRINT:PRINT"SCORE:  ";SC          
 458 FOR B=1 TO 1500:NEXT B          
 460 VI=0:GOTO17          
 500 PRINT"I BET THAT STUNG A BIT":PRINT:PRINT"IT COST YOU"          
 502 PRINT"TEN POINTS TOO......":PRINT:PRINT          
 510 PRINT"AFTER ALL YOU'VE BEEN":PRINT"THROUGH.........":PRINT:PRINT          
 511 PRINT"I'LL GIVE 'YA ANOTHER":PRINT"CHANCE...":SC=SC-10:GOTO331          
 600 PRINT"SAY... ARE YOU BY ANY":PRINT"CHANCE FROM NEW YORK...?"          
 605 PRINT:PRINT"SCORE :  ";SC          
 610 GOTO 458          
 700 CA=64*INT(10*RND(H))+53507          
 702 LN=0          
 705 GOTO22          
 800 PRINT"I'M IMPRESSED, HAVE YOU":PRINT"EVER CONSIDERED A NYC"          
 801 PRINT"APARTMENT?":GOTO605          
 810 PRINT"WOW!!":PRINT"YOU'VE BECOME ONE OF"          
 811 PRINT"THE ELITE.  YOU'VE":PRINT"WON MORE THAN ONCE!!":GOTO605          
 49999 END          
OK          
