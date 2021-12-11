Print macro p1
    mov dx,offset p1 
    mov ah,09
    int 21h 
endm

.model small
.stack 100h
.data  
newline db 0ah,0dh,"$"
msg db "PRESS 1 IF YOU ARE ABOVE 50$" 
msg1 db "PRESS 2 IF YOU ARE ABOVE 20$" 
msg2 db "PRESS 3 IF YOU ARE ABOVE 10$" 
msg3 db "PRESS 4 IF YOU ARE BELOW 10$"
s db "Go To Section A$"
s1 db "Go To Section B$" 
s2 db "Go To Section C$"
s3 db "Stay with your Parent$"
.code
main proc 
    mov ax,@data
    mov ds,ax
    print msg
    print newline
    print msg1
    print newline
    print msg2
    print newline
    print msg3                  
    print newline
                 
                 
       mov ah,01
       int 21h 
       mov dl,al
       sub dl,48
       cmp dl,1
       je A  
        cmp dl,2
       je B
        cmp dl,3
       je C
        cmp dl,4
       je D
       
      
       A:
        print s 
        call Exit
        ret 
        
        B:
        print s1 
        call exit 
        ret   
         C:
        print s2 
        call exit 
        ret
         D:
        print s3
        call exit 
        ret
    Exit:
    mov ah,4ch
    int 21h    
      
    main endp
end main