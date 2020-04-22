org 000h
mov tmod,#00h
repeat:mov tl0,#1ah
mov th0,#1ah
setb p1.5
acall delay
mov tl0,#04h
mov th0,#54h
clr p1.5
acall delay
sjmp repeat



delay:setb tr0

no :jnb tf0,no
clr tr0
clr tf0
ret
end
