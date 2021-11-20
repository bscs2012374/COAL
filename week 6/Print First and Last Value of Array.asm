.model small
.stack 100h
.data
    
    arr1 db 1,2,4
    
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov si, 0
    mov dl,[si]
    add dl,48
    mov ah,2
    int 21h
    
    mov si,2  
    mov dl,[si]
    add dl,48
    mov ah,2
    int 21h  
    
    mov ah,4ch
    int 21h
    
    
    main endp
end main