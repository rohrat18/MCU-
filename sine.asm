	org 000h
rpt:mov r1,#16
mov dptr,#100h
loop:mov a,#00h
movc a,@a+dptr
mov p1,a
inc dptr
djnz r1,loop
sjmp rpt
org 100h
value: db 128,192,224,240,255,240,224,192,128,64,32,10,0,16,32,64
end