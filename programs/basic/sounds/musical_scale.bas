5 rem musical scale
7 for l=54272 to 54296: poke l,0:next
10 poke 54296,15: rem set volume
20 poke 54277,9: rem attack/decay voice 1
30 poke 54276,17: rem ctrl voice 1, triangle
40 for t = 1 to 300:next
50 read a
60 read b
70 if b=-1 then end
80 poke 54273,a: rem frequency voice 1
82 poke 54272,b: rem frequency voice 1
85 poke 54276,17: rem ctrl voice 1, triangle
90 for t=1 to 250:next
92 poke 54276,16: rem ctrl voice 1, stop
95 for t=1 to 50:next
100 goto 20
110 data 17,37,19,63,21,154,22,227
120 data 25,177,28,214,32,94,34,175
900 data -1,-1
