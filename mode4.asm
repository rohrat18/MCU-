org 000h 
mov TMOD,#02h      
mov TH0,#0A4h        
mov TL0,#0A4h 
repeat: cpl p1.4                       
setb   TR0                    
wait :    jnb TF0,wait 
clr TR0                          
clr TF0                          
sjmp repeat
end 