	org 000h
	rpt:
	mov a,#00h
	loop:mov p1,a
	inc a
	cjne a,#0ffh,loop
	mov p1,a
	sjmp rpt
	end
	