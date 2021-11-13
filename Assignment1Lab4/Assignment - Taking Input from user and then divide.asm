print macro p1
mov dl,p1   
mov ah,02
int 21h  
endm 
Result macro p1
mov dx,offset p1   
mov ah,09
int 21h  
endm 
      
                 
;program to find Multiplication of Two Numbers
.model small
.stack 100h
.data   
   string1 db "Enter First Number:",0ah,0dh,"$"     
   string2 db  0ah,0dh,"Enter Second Number:",0ah,0dh,"$" 
   newLine db 0ah,0dh,"$"   
   s1 db ?
   s2 db ?
.code  
main proc

mov ax,@data
mov ds, ax

Result string1
mov ah ,1
int 21h
mov s1 , al
mov cl,al
xor ch,ch
sub cx,48

 
Result string2 
mov ah , 01
int 21h 
mov s2 ,al 
sub s2,48

Result newLine

mov ax,cx
mov bl,s2
; Multiplying
mul bl

mov cl,al
mov ch,ah 
; Cadding asci by 48
add cl ,48
add ch,48          

;result 
add s2 , 48 
print s1 
print "*"
print s2
print "="
print cl 
print "."
print ch


mov ah,4ch
int 21h 
    
main endp
end main