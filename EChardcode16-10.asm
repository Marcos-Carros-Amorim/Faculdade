section .data
    msg1 db 'A soma é: ';ele pega uma variavel
    len equ $ - msg1

section .bss
    res resb 1

section .text
global _start

_start:
    mov eax, 3
    add eax, 4

    add eax, '0'

    mov [res], eax
; Escreva a mensagem "a soma é: "
    mov eax, 4
    mov ebx, 1
    mov ecx, msg1
    mov edx, len
    int 0x80
; Escreva o resultado
    mov eax, 4
    mov ebx, 1
    mov ecx, res
    mov edx, 2

exit: ; Saia do programa
    mov eax, 1
    xor ebx, ebx
    int 0x80
