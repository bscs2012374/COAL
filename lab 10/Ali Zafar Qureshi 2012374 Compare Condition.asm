println macro p1
    mov dx, offset p1
    mov ah,09
    int 21h
endm

print macro p1
    mov dl,offset p1
    mov ah,02
    int 21h
endm

.model small
.stack 100h
.data
 newline db 0ah,0dh, "$"

.code 
main proc
    mov ax,@data
    mov ds,ax
    mov dl,4
    mov bl,4 
    
    r:
    call star 
    cmp bl,dl
    println newline
    inc bl
    je l
    
    l:
    call star 
    cmp bl,dl
    ;println newline
    inc bl
    je l
    
    
    l0:
    call star 
    cmp bl,dl
    ;println newline
    inc bl
    je l0 
    
    l1:
    call star 
    cmp bl,dl
    ;println newline
    inc bl
    je l1  
    
    l2:
    call star 
    cmp bl,dl
    ;println newline
    inc bl
    je l1
    
    l3:
    call star 
    cmp bl,dl
    ;println newline
    inc bl
    je l1
    
    
    
    call End 
    
    
    star:
    print "*"
    ret
    
    End: 
    mov ah,4ch 
    int 21h
    ret
    
    main endp
end main