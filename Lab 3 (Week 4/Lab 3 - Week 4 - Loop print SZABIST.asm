
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h
.data
msg db "SZABIST $"
.code 
main proc 
    mov ax,@data
    mov ds,ax
    mov cx,10
    
    print: 
    
     mov ah,09
    int 21h
    
    loop print
    int 21h
    mov ax,4ch 
  
  
; add your code here
  
  
  
main endp 
end main 




