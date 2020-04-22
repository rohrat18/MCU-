org 000h
mov tmod,#10h
rpt:mov r0,#14d
cpl p1.5
loop:mov tl1,#00h
	 mov th0,#00h
	 setb tr1
	 wait:jnb tf1,wait 
	 clr tr1
	 clr tf1
	 djnz r0,loop
	 sjmp rpt
	 end