org 000h 
	
repeat: mov a,#00h     ;load initial value 00h 
loop:    mov p1,a           ;send the to   p1 
acall delay           ;wait for delay 
add a,#33h          ; add the incremental value 
cjne a,#0ffh,loop ;is it =ffh,if no o/p on p1 
sjmp repeat          ; if yes, start from beginnings
delay:mov r0,#050h
here2:mov r1,#20h
here:djnz r1,here
	djnz r0,here2
	ret
	
end