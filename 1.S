.text
.global c_to_f_asm
.type c_to_f_asm, @function

.intel_syntax noprefix

c_to_f_asm:
    movsxd  rax, edi
    lea rax, [rax + rax * 8]
    mov r8, rax
   
    mov rdx, 0x66666667
    imul rdx
    shrd rax, rdx, 33

    lea rcx, [rax + rax*4]
    sub r8, rcx

    mov ecx, edi
    sar ecx, 31
    test r8, r8
    setnz dl
    movzx edx, dl
    and ecx, edx
    add eax, ecx

    add eax, 32
    ret

    .size c_to_f_asm, .-c_to_f_asm