.text
.global sum_to_n_asm, sum_to_n_formula_asm
.type sum_to_n_asm, @function
.type sum_to_n_formula_asm, @function

.intel_syntax noprefix

// long sum_to_n_asm(long num);
sum_to_n_asm:
    test rdi, rdi
    js .neg
    jz .neg
    xor rax, rax

.loop:
    add rax, rdi
    dec rdi
    jnz .loop
    ret

.neg:
    mov rax, 0
    ret

.size sum_to_n_asm, .-sum_to_n_asm

// long sum_to_n_formula_asm(long num);
sum_to_n_formula_asm:
    //  (n*(n+1))/2
    mov rax, rdi
    inc rdi
    mul rdi
    shrd rax, rdx, 1
    ret

    .size sum_to_n_formula_asm, .-sum_to_n_formula_asm
