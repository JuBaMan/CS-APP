	.text
	.file	"arith.c"
	.globl	arith3                          # -- Begin function arith3
	.p2align	4, 0x90
	.type	arith3,@function
arith3:                                 # @arith3
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edx, %eax
	orl	%esi, %eax
	sarl	$9, %eax
	notl	%eax
	subl	%esi, %eax
                                        # kill: def $ax killed $ax killed $eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	arith3, .Lfunc_end0-arith3
	.cfi_endproc
                                        # -- End function
	.ident	"Apple clang version 15.0.0 (clang-1500.3.9.4)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
