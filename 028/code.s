format ELF64 executable
use64
mov eax, 1 ; 
mov ebx, 3
start:
    add eax, 6
    mov ecx, ebx
    imul ecx, 6
    sub eax, ecx
    mov ecx, 4
    imul ecx, ebx
    imul ecx, ebx
    add eax, ecx
    add ebx, 2
    cmp ebx, 1003
    jne start
    ret
    
