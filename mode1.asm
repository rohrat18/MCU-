org 0000h
mov TMOD,#01h
repeat:mov tl0,#4eh
mov th0,#0ffh
cpl p1.5
setb tr0
wait:jnb tf0,wait
clr tr0
clr tf0
sjmp repeat
end