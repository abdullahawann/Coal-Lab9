[org 0x0100] 

jmp code

w equ 50   ;width offset
y equ 100  ;starting y coordinate of line
x equ 50   ;starting x coordinate of line  
c equ 60   ;color

code: 
mov ah, 0
mov al, 13h
int 10h


l0:
mov cx, x
mov dx, y
mov al, c 

l1:
inc dx
mov ah, 0ch 
int 10h
inc cx
cmp cx, x+w
jbe l1

l2:
dec dx
mov ah, 0ch 
int 10h
inc cx
cmp cx, y+w
jbe l2

l3:
dec dx
mov ah, 0ch 
int 10h
inc cx
cmp cx, y
jbe l3

l4:
;inc dx
mov ah, 0ch 
int 10h
;dec cx
cmp cx, w
jbe l4

mov ah, 00 
int 16h

mov ax, 0x4c00 
int 21h