
.model small
.stack 100h
.data

        msg db"SZABIST UNIVERSITY $"
.code
main proc ; Similar likefunction
         mov ax,@data      ;data segment initialization moved to accumalator 
mov ds,ax ; ds is data register
mov ah ,09h ;string display    || Accumalator high || 09h = print || h= high
mov dx,offset msg
int 21h
mov ah,4ch      ;DOS exit function
int 21h        
mov ah,4ch ;DOS exit function 
int 21h
main endp
end