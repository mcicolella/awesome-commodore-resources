   10 print"{clr}":v=1024:f=1
   11 c1=-1:c2=-1:c3=-1:c4=-1
   15 gosub800:gosub820:gosub700:gosub588
   19 rem *** check del digit e caricamento
   20 rem ****
  200 rem ***** d1
  201 if c1=a1 then 300
  202 c1=a1
  205 if a1=0 then j=10:fori=1to8:d1$(i)=a$(j,i):nexti
  206 if a1<>0 then j=a1:fori=1to8:d1$(i)=a$(j,i):nexti
  210 for j=0to7
  220 for i=0to7
  230 b$=mid$(d1$(j+1),i+1,1)
  240 if b$="." then c=32
  250 if b$="*" then c=160
  260 p=1024+(x(1)+i)+40*(y(1)+j+1)
  270 poke p,c
  280 nexti:nextj:return
  300 rem ***** d2
  301 if c2=a2 then 400
  302 c2=a2
  305 if a2=0 then j=10:fori=1to8:d2$(i)=a$(j,i):nexti
  306 if a2<>0 then j=a2:fori=1to8:d2$(i)=a$(j,i):nexti
  310 for j=0to7
  320 for i=0to7
  330 b$=mid$(d2$(j+1),i+1,1)
  340 if b$="." then c=32
  350 if b$="*" then c=160
  360 p=1024+(x(2)+i)+40*(y(2)+j+1)
  370 poke p,c
  380 nexti:nextj:return
  400 rem ***** d3
  401 if c3=a3 then 500
  402 c3=a3
  405 if a3=0 then j=10:fori=1to8:d3$(i)=a$(j,i):nexti
  406 if a3<>0 then j=a3:fori=1to8:d3$(i)=a$(j,i):nexti
  410 for j=0to7
  420 for i=0to7
  430 b$=mid$(d3$(j+1),i+1,1)
  440 if b$="." then c=32
  450 if b$="*" then c=160
  460 p=1024+(x(3)+i)+40*(y(3)+j+1)
  470 poke p,c
  480 nexti:nextj:return
  500 rem ***** d4
  501 if c4=a4 then 590
  502 c4=a4
  505 if a4=0 then j=10:fori=1to8:d4$(i)=a$(j,i):nexti
  506 if a4<>0 then j=a4:fori=1to8:d4$(i)=a$(j,i):nexti
  510 for j=0to7
  520 for i=0to7
  530 b$=mid$(d4$(j+1),i+1,1)
  540 if b$="." then c=32
  550 if b$="*" then c=160
  560 p=1024+(x(4)+i)+40*(y(4)+j+1)
  570 poke p,c
  580 nexti:nextj:return
  585 return
  588 rem ***** main routine
  589 rem ***** controllo cambio digit
  590 a1=val(mid$(ti$,1,1))
  600 a2=val(mid$(ti$,2,1))
  610 a3=val(mid$(ti$,3,1))
  620 a4=val(mid$(ti$,4,1))
  630 if c1<>a1 then gosub20
  640 if c2<>a2 then gosub20
  650 if c3<>a3 then gosub20
  660 if c4<>a4 then gosub20
  670 p1=1024+x(5)+40*y(5)
  672 p2=1024+x(6)+40*y(6)
  675 f=-f
  677 if f>0 then d=42
  678 if f<0 then d=32
  679 for i=0 to150:next
  680 poke p1,d:poke p2,d
  690 goto 589
  700 rem ***** imposta ora
  701 print"{clr}";
  705 input "ora (hhmmss)";o$
  710 iflen(o$)<>6 then700
  720 fork=1to4
  730 ifmid$(o$,k,1)<"0"ormid$(o$,k,1)>"9"then 700
  740 x1$=mid$(a$,1,2)
  750 x2$=mid$(a$,3,2)
  760 ifx1$>"23"orx2$>"59"then 700
  770 ti$=o$:print"{clr}"
  771 printtab(8)"{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}**** orologione by jm ****{down}{down}{down}{down}":return
  800 rem *** carica le coordinate dei dgt
  805 for i=1to6:readx(i):ready(i):next:return
  810 data 2,5,11,5,20,5,29,5,19,9,19,11
  820 rem *** carica i dgt in memoria
  825 for n=1to10
  900 for i=1to8:reada$(n,i):nexti:nextn
  910 return
 1000 data ...***..
 1010 data ..****..
 1020 data .**.**..
 1040 data ....**..
 1050 data ....**..
 1060 data ....**..
 1070 data ....**..
 1080 data ....**..
 1090 rem
 2000 data ..****..
 2010 data .******.
 2020 data .....**.
 2040 data ....**..
 2050 data ...**...
 2060 data ..**....
 2070 data .*****..
 2080 data .******.
 2090 rem
 3000 data .******.
 3010 data .******.
 3020 data .....**.
 3040 data .******.
 3050 data .******.
 3060 data .....**.
 3070 data .******.
 3080 data .******.
 3090 rem
 4000 data .**..**.
 4010 data .**..**.
 4020 data .**..**.
 4040 data .******.
 4050 data ..*****.
 4060 data .....**.
 4070 data .....**.
 4080 data .....**.
 4090 rem
 5000 data .******.
 5010 data .******.
 5020 data .**.....
 5040 data .******.
 5050 data .******.
 5060 data .....**.
 5070 data .******.
 5080 data .******.
 5090 rem
 6000 data .**.....
 6010 data .**.....
 6020 data .**.....
 6040 data .******.
 6050 data .******.
 6060 data .**..**.
 6070 data .******.
 6080 data .******.
 6090 rem
 7000 data ..*****.
 7010 data ..*****.
 7020 data .....**.
 7040 data .....**.
 7050 data .....**.
 7060 data .....**.
 7070 data .....**.
 7080 data .....**.
 7090 rem
 8000 data .******.
 8010 data .******.
 8020 data .**..**.
 8040 data .******.
 8050 data .**"***.
 8060 data .**..**.
 8070 data .******.
 8080 data .******.
 8090 rem
 9000 data .******.
 9010 data .******.
 9020 data .**..**.
 9040 data .******.
 9050 data .******.
 9060 data .....**.
 9070 data .....**.
 9080 data .....**.
 9090 rem
 10000 data .******.
 10010 data .******.
 10020 data .**..**.
 10040 data .**..**.
 10050 data .**..**.
 10060 data .**..**.
 10070 data .******.
 10080 data .******.
 10090 rem
