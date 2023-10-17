section .data
 msg1 db 'a soma é:'
 len equ $ -msg1
 
 section .bss
  res resb 1
  
  global _start
_start
mov eax, 3
mov ebx, 4

add eax, ebx

add eax, '0'

mov [res], eax

mov eax, 4
mov ebx, 1
mov ecx, msg1
mov edx, ven
int 0x80

mov eax, 4
mov ebx, 1
mov ecx, res
mov edx, 2

exit:
mov eax, 1
xor ebx, ebx
int 0x80
