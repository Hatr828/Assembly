.text
.global abs_asm
.type abs_asm, @function

.intel_syntax noprefix

// int abs_asm(int x);
abs_asm:
    mov eax, edi
    cdq
    xor eax, edx
    sub eax, edx
    ret

    .size abs_asm, .-abs_asm
