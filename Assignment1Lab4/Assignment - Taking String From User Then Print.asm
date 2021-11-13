; Ask User What to Print
; Ask User For number of lines to print
; print each statement on a new line

.model small
.stack 100h
.data 
 
 counter db ?
 str db 100 dup("$")
 x db "Enter String/Text To Print$" 
 x2 db "Enter Counter for How many Lines To Print$" 
 num db 0          
 new_line db 0AH,0DH,"$"
.code  

main proc

mov ax , @data
mov ds, ax


lea dx,x
mov ah , 09
int 21h   

call newLine ; printing new line 

mov si, offset str  

        
 
takingInputString:     ; taking input as a string
mov ah,1
int 21h

cmp al,13     
je InputStringEnd 

mov [si],al 
inc si

jmp takingInputString       
    
    
InputStringEnd: 

call newLine
lea dx, x2
mov ah , 09
int 21h 

call newLine

mov ah ,1
int 21h   

mov counter ,al  

mov [si] , offset counter
mov cx , [si]

printLoop:
call newLine
lea dx, str 
mov ah,09
int 21h  
inc num
mov bl,num 
add bl,48
cmp bl,counter  
je End


loop printLoop
  
  
End:  
mov ah,4ch
int 21h     

newLine:
lea dx,new_line
mov ah,09
int 21h
ret


main endp
end main