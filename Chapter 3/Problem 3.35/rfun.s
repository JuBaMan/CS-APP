	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 14, 4
	.globl	_rfun                           ## -- Begin function rfun
	.p2align	4, 0x90
_rfun:                                  ## @rfun
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	LBB0_3
	.p2align	4, 0x90
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	addq	%rdi, %rax
	shrq	$2, %
	testq	%rdi, %rdi
	jne	LBB0_2
LBB0_3:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
