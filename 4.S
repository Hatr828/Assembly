.text
.global sum_array_asm
.type sum_array_asm, @function

.intel_syntax noprefix

// long sum_array_asm(const long *arr, long len);
sum_array_asm:
    xor rax, rax
    test rsi, rsi
    jle  .ret

.loop:
    add rax, qword ptr [rdi + rsi*8 - 8]
    dec rsi
    jnz .loop

.ret:
    ret

.size sum_array_asm, .-sum_array_asm
