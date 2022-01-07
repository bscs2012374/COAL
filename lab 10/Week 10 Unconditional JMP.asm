.model small
.stack 100h
.data
.code
main proc
    l1:
    mov dl,'1'
    mov ah,02
    int 21h
    jmp l1
    main endp
end main