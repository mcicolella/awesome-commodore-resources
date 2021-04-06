1 rem up, up and away!
5 print chr$(147)
10 v = 53248 : rem start of display chip
11 poke v + 21, 28: rem enable sprite 2, 3, 4
12 poke 2042, 13: poke 2043, 13: poke 2044, 13
13 rem sprite 2, 3, 4 data from 13th blk
20 for n = 0 to 62: read q: poke 832 + n, q: next
25 poke v + 23, 12: poke v + 29, 12: rem expand sprites 2, 4 
30 for x = 1 to 190
40 poke v + 4, x: rem update x coordinates
45 poke v + 6, x
48 poke v + 8, x
50 poke v + 5, x: rem update y coordinates
55 poke v + 7, 190 - x
58 poke v + 9, 100
60 next x
70 goto 30
200 data 0,127,0,1,255,192,3,255,224,3,231,224
210 data 7,217,240,7,223,240,7,217,240,3,231,224
220 data 3,255,224,3,255,224,2,255,160,1,127,64
230 data 1,62,64,0,156,128,0,156,128,0,73,0,0,73,0
240 data 0,62,0,0,62,0,0,62,0,0,28,0
