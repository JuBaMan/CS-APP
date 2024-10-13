	.text
	.file	"decode.c"
	.globl	decode                          # -- Begin function decode
	.p2align	4, 0x90
	.type	decode,@function
decode:                                 # @decode
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	movq	(%rdx), %rcx
	movq	%rcx, (%rdi)
	movq	(%rsi), %rcx
	movq	%rcx, (%rdx)
	movq	%rax, (%rsi)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	decode, .Lfunc_end0-decode
	.cfi_endproc
                                        # -- End function
	.ident	"Apple clang version 15.0.0 (clang-1500.3.9.4)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
