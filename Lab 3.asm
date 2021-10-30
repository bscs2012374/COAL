.model small
.stack 100h
.data     
.code   

main PROC

mov ah,1
int 21h  
        
mov dl,al
    
    mov ah,02
    int 21h
;return 
mov ah,4ch
int 21h  
     
        
        main endp
end main  

;1 = input a character with echo
;2 = Output/print a single character or number
;8 = Input a character without echo
;9 = print a String'abcd'