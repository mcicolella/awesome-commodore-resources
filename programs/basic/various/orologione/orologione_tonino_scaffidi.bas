10 poke53280,0:poke53281,0:rem print"{clear}":v=1024:f=1
11 c1=-1:c2=-1:c3=-1:c4=-1:yy=5
15 gosub800:gosub820:gosub700: goto580
19 rem *** check del digit e caricamento
200 if c1=a1 then return: rem ***** d1
202 c1=a1
206 poke 211, x(1):poke 214, yy: sys 58732
208 print a$(a1)
210 return
220 if c2=a2 then return: rem ***** d2
222 c2=a2
226 poke 211, x(2):poke 214, yy: sys 58732
228 print a$(a2)
230 return
240 if c3=a3 then return: rem ***** d3
242 c3=a3
246 poke 211, x(3):poke 214, yy: sys 58732
248 print a$(a3)
250 return
260 if c4=a4 then return: rem ***** d4
262 c4=a4
266 poke 211, x(4):poke 214, yy: sys 58732
268 print a$(a4)
272 return
280 if c5=a5 then return: rem ***** d5
282 c5=a5
286 poke 211, x(5):poke 214, yy: sys 58732
288 print a$(a5)
290 return
300 if c6=a6 then return: rem ***** d6
302 c6=a6
306 poke 211, x(6):poke 214, yy: sys 58732
308 print a$(a6)
310 return
580 rem ***** main routine
581 rem ***** controllo cambio digit
590 a1=val(mid$(ti$,1,1))+1
600 a2=val(mid$(ti$,2,1))+1
610 a3=val(mid$(ti$,3,1))+1
620 a4=val(mid$(ti$,4,1))+1
630 a5=val(mid$(ti$,5,1))+1
640 a6=val(mid$(ti$,6,1))+1
650 if c1<>a1 then gosub200
660 if c2<>a2 then gosub220
670 if c3<>a3 then gosub240
680 if c4<>a4 then gosub260
690 if c5<>a5 then gosub280
695 if c6<>a6 then gosub300
697 goto 580
700 rem ***** imposta ora
705 input "{clear}ora (hhmmss)";o$
710 iflen(o$)<>6 then700
720 fork=1to4
730 ifmid$(o$,k,1)<"0"ormid$(o$,k,1)>"9"then 700
740 x1$=left$(a$,2)
750 x2$=mid$(a$,3,2)
755 x3$=right$(a$,2)
760 ifx1$>"23"orx2$>"59"orx3$>"59"then700
770 ti$=o$:print"{clear}"
780 return
800 rem *** carica le coordinate dei dgt
805 for i=1to6:readx(i):next:return
810 data 0,7,14,20,27,34
820 rem *** carica i dgt in memoria
830 for n=1to10
840 a$(n)=""
850 for i=1to8
860 read dgt$:a$(n)=a$(n)+dgt$:if(i<8) then a$(n)=a$(n)+"{down}{left*6}"
870 nexti:nextn
880 return
1000 data " **** "
1010 data "******"
1020 data "** **"
1040 data "** **"
1050 data "** **"
1060 data "** **"
1070 data "******"
1080 data " **** "
2000 data " *** "
2010 data " **** "
2020 data "** ** "
2040 data " ** "
2050 data " ** "
2060 data " ** "
2070 data " ** "
2080 data " ** "
3000 data " **** "
3010 data "******"
3020 data " **"
3040 data " ** "
3050 data " ** "
3060 data " ** "
3070 data "***** "
3080 data "******"
4000 data " **** "
4010 data "******"
4020 data " **"
4040 data "******"
4050 data "******"
4060 data " **"
4070 data "******"
4080 data " **** "
5000 data "** **"
5010 data "** **"
5020 data "** **"
5040 data "******"
5050 data " *****"
5060 data " **"
5070 data " **"
5080 data " **"
6000 data " *****"
6010 data "******"
6020 data "** "
6040 data "***** "
6050 data "******"
6060 data " **"
6070 data "******"
6080 data " **** "
7000 data " * "
7010 data "** "
7020 data "** "
7040 data "***** "
7050 data "******"
7060 data "** **"
7070 data "******"
7080 data " **** "
8000 data " **** "
8010 data "******"
8020 data " **"
8040 data " **"
8050 data " ** "
8060 data " ** "
8070 data " ** "
8080 data " ** "
9000 data " **** "
9010 data "******"
9020 data "** **"
9040 data "******"
9050 data "******"
9060 data "** **"
9070 data "******"
9080 data " **** "
9100 data " **** "
9110 data "******"
9120 data "** **"
9140 data "******"
9150 data " *****"
9160 data " **"
9170 data " **"
9180 data " **"
