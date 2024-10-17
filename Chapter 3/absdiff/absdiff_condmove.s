	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 14, 4
	.globl	_absdiff                        ## -- Begin function absdiff
	.p2align	4, 0x90
_absdiff:                               ## @absdiff
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	subq	%rsi, %rax
	negq	%rax
	subq	%rsi, %rdi
	cmovgeq	%rdi, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
