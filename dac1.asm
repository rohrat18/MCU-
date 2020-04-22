org 0000h
mov a,#00h
loop1:mov p1,a
acall delay
add a,#33h
cjne a,#99h ,loop1


again:mov p1,a
inc a
cjne a,#0ffh,again
loop2:mov p1,a
dec a
cjne a,#99h,loop2
loop3:mov p1,a
acall delay
subb a,#33h
cjne a,#00h,loop3
delay:mov r0,#050h
here2:mov r1,#200h
here:djnz r1,here
	djnz r0,here2
	ret

	end
