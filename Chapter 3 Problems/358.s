	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 0
	.globl	_least_significant_bit          ## -- Begin function least_significant_bit
	.p2align	4, 0x90
_least_significant_bit:                 ## @least_significant_bit
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	andl	$1, %eax
	negq	%rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_decode2                        ## -- Begin function decode2
	.p2align	4, 0x90
_decode2:                               ## @decode2
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rsi, %rax
	subq	%rdx, %rax
	imulq	%rax, %rdi
	andl	$1, %eax
	negq	%rax
	xorq	%rdi, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
