.model small 
.stack 100h 
.data
 
 var1 db 'Ali',0ah,0dh,'$'
 var2 db 'SZABIST',0ah,0dh,'$'
 var3 db 10
                          
.code                      
main proc 
           
    mov ax, offset @data
    mov ds,ax
    
    mov dx,offset var1
    mov ah,09
    int 21h  
    
    mov dl,offset var2
    mov ah,09
    int 21h
    
    mov dl,offset var3
    add dl,38
    mov ah,02   
    int 21h        
             
    mov ah,4ch     
    int 21h 

    main endp
 
end main