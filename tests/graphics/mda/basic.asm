bits 16

org 0xFE000

start:

mov dx,0x3B8
mov al,0x2B
out dx,al
mov dx,0x3B4
mov ax,0x0506
out dx,ax
mov ax,0x0D09
out dx,ax
mov ax,0x0501
out dx,ax
mov ax,0xB000
mov ds,ax
xor bx,bx
mov byte [bx], 'A'
inc bx
mov byte [bx], 0x09

nop
nop
nop

jmp start

times 8176 - ($-$$) db 0x90

jmp start

times 8192 - ($-$$) db 0x90