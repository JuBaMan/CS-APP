	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 0
	.globl	_is_little_endian               ## -- Begin function is_little_endian
	.p2align	4, 0x90
_is_little_endian:                      ## @is_little_endian
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$17, -4(%rbp)
	movl	$2, -8(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movslq	-8(%rbp), %rax
	cmpq	$4, %rax
	ja	LBB0_7
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %eax
	shll	$8, %eax
	movl	%eax, -4(%rbp)
	movslq	-8(%rbp), %rax
	cmpq	$4, %rax
	je	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$17, %eax
	movl	%eax, -4(%rbp)
	jmp	LBB0_5
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$34, %eax
	movl	%eax, -4(%rbp)
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-8(%rbp), %esi
	movl	-4(%rbp), %edx
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
## %bb.6:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	LBB0_1
LBB0_7:
	leaq	-4(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	-4(%rbp), %rax
	addq	$4, %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-24(%rbp), %rcx
	movzbl	(%rcx), %ecx
	cmpl	%ecx, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"After byte %d: x = 0x%X\n"

.subsections_via_symbols
