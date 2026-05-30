	.file	"vml.cpp"
	.text
	.section	.text$_ZN5goto_6goto__EPhRj,"x"
	.linkonce discard
	.globl	_ZN5goto_6goto__EPhRj
	.def	_ZN5goto_6goto__EPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5goto_6goto__EPhRj
_ZN5goto_6goto__EPhRj:
.LFB3662:
	.seh_endprologue
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	ret
	.seh_endproc
	.section	.text$_ZN4PORS15PopReturnsStackEPhRj,"x"
	.linkonce discard
	.globl	_ZN4PORS15PopReturnsStackEPhRj
	.def	_ZN4PORS15PopReturnsStackEPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4PORS15PopReturnsStackEPhRj
_ZN4PORS15PopReturnsStackEPhRj:
.LFB3672:
	.seh_endprologue
	movl	_ZL10returnsPtr(%rip), %eax
	testl	%eax, %eax
	je	.L2
	subl	$1, %eax
	movl	%eax, _ZL10returnsPtr(%rip)
.L2:
	ret
	.seh_endproc
	.section	.text$_ZN6gotoif7gotoif_EPhRj,"x"
	.linkonce discard
	.globl	_ZN6gotoif7gotoif_EPhRj
	.def	_ZN6gotoif7gotoif_EPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6gotoif7gotoif_EPhRj
_ZN6gotoif7gotoif_EPhRj:
.LFB3663:
	.seh_endprologue
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rax
	movq	(%rax,%r8,8), %rax
	cmpb	$0, (%rax)
	je	.L5
	movl	1(%rcx), %eax
.L6:
	movl	%eax, (%rdx)
	ret
.L5:
	movl	(%rdx), %eax
	addl	$1, %eax
	jmp	.L6
	.seh_endproc
	.text
	.def	__tcf_ZL7returns;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_ZL7returns
__tcf_ZL7returns:
.LFB5457:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	_ZL7returns(%rip), %rcx
	testq	%rcx, %rcx
	je	.L7
	movq	16+_ZL7returns(%rip), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
	nop
.L7:
	addq	$40, %rsp
	ret
	.seh_endproc
	.def	_ZZL13loadFunctionsvENUlPhRjE_4_FUNES_S0_;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZZL13loadFunctionsvENUlPhRjE_4_FUNES_S0_
_ZZL13loadFunctionsvENUlPhRjE_4_FUNES_S0_:
.LFB3704:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movl	$0, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "This cannot be used.\12\0"
	.text
	.def	_ZL9cannotUsePhRj;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL9cannotUsePhRj
_ZL9cannotUsePhRj:
.LFB3701:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	leaq	.LC0(%rip), %rbx
	movl	$84, %ecx
	leaq	21(%rbx), %rsi
.L11:
	movsbl	%cl, %ecx
	call	putchar
	addq	$1, %rbx
	movzbl	(%rbx), %ecx
	cmpq	%rsi, %rbx
	jne	.L11
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3701:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3701-.LLSDACSB3701
.LLSDACSB3701:
.LLSDACSE3701:
	.text
	.seh_endproc
	.section .rdata,"dr"
.LC1:
	.ascii "???: write\0"
	.section	.text$_ZN5store5StoreEPhRj,"x"
	.linkonce discard
	.globl	_ZN5store5StoreEPhRj
	.def	_ZN5store5StoreEPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5store5StoreEPhRj
_ZN5store5StoreEPhRj:
.LFB3664:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rdx, %rax
	movl	1(%rcx), %r8d
	cmpb	$15, (%rcx)
	ja	.L14
	movzbl	(%rcx), %edx
	leaq	.L16(%rip), %rcx
	movslq	(%rcx,%rdx,4), %rdx
	addq	%rcx, %rdx
	jmp	*%rdx
	.section .rdata,"dr"
	.align 4
.L16:
	.long	.L31-.L16
	.long	.L30-.L16
	.long	.L29-.L16
	.long	.L28-.L16
	.long	.L27-.L16
	.long	.L26-.L16
	.long	.L25-.L16
	.long	.L24-.L16
	.long	.L23-.L16
	.long	.L22-.L16
	.long	.L21-.L16
	.long	.L20-.L16
	.long	.L19-.L16
	.long	.L18-.L16
	.long	.L17-.L16
	.long	.L15-.L16
	.section	.text$_ZN5store5StoreEPhRj,"x"
	.linkonce discard
.L31:
	movzbl	regByte1Number1(%rip), %ecx
.L32:
	movl	%r8d, %r8d
	leaq	_ZL6memory(%rip), %rdx
	movb	%cl, (%rdx,%r8)
	jmp	.L36
.L30:
	movzbl	regByte1Number2(%rip), %ecx
	jmp	.L32
.L29:
	movzbl	regByte1Number3(%rip), %ecx
	jmp	.L32
.L28:
	movzbl	regByte1Number4(%rip), %ecx
	jmp	.L32
.L27:
	movzwl	regByte2Number1(%rip), %ecx
.L33:
	movl	%r8d, %r8d
	leaq	_ZL6memory(%rip), %rdx
	movw	%cx, (%rdx,%r8)
.L36:
	addl	$1, (%rax)
	addq	$40, %rsp
	ret
.L26:
	movzwl	regByte2Number2(%rip), %ecx
	jmp	.L33
.L25:
	movzwl	regByte2Number3(%rip), %ecx
	jmp	.L33
.L24:
	movzwl	regByte2Number4(%rip), %ecx
	jmp	.L33
.L23:
	movl	regByte4Number1(%rip), %ecx
.L34:
	movl	%r8d, %r8d
	leaq	_ZL6memory(%rip), %rdx
	movl	%ecx, (%rdx,%r8)
	jmp	.L36
.L22:
	movl	regByte4Number2(%rip), %ecx
	jmp	.L34
.L21:
	movl	regByte4Number3(%rip), %ecx
	jmp	.L34
.L20:
	movl	regByte4Number4(%rip), %ecx
	jmp	.L34
.L19:
	movq	regByte8Number1(%rip), %rcx
.L35:
	movl	%r8d, %r8d
	leaq	_ZL6memory(%rip), %rdx
	movq	%rcx, (%rdx,%r8)
	jmp	.L36
.L18:
	movq	regByte8Number2(%rip), %rcx
	jmp	.L35
.L17:
	movq	regByte8Number3(%rip), %rcx
	jmp	.L35
.L15:
	movq	regByte8Number4(%rip), %rcx
	jmp	.L35
.L14:
	leaq	.LC1(%rip), %rcx
	call	puts
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3664:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3664-.LLSDACSB3664
.LLSDACSB3664:
.LLSDACSE3664:
	.section	.text$_ZN5store5StoreEPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
.LC2:
	.ascii "???: regWrite %d\12\0"
	.section	.text$_ZN2TT3RunIddEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN2TT3RunIddEEvPhRj
	.def	_ZN2TT3RunIddEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2TT3RunIddEEvPhRj
_ZN2TT3RunIddEEvPhRj:
.LFB4667:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	movq	(%rcx), %r8
	cmpb	$15, %al
	ja	.L39
	movzbl	%al, %eax
	leaq	.L41(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L41:
	.long	.L56-.L41
	.long	.L55-.L41
	.long	.L54-.L41
	.long	.L53-.L41
	.long	.L52-.L41
	.long	.L51-.L41
	.long	.L50-.L41
	.long	.L49-.L41
	.long	.L48-.L41
	.long	.L47-.L41
	.long	.L46-.L41
	.long	.L45-.L41
	.long	.L44-.L41
	.long	.L43-.L41
	.long	.L42-.L41
	.long	.L40-.L41
	.section	.text$_ZN2TT3RunIddEEvPhRj,"x"
	.linkonce discard
.L56:
	movb	%r8b, regByte1Number1(%rip)
.L57:
	addl	$1, (%rdx)
	addq	$40, %rsp
	ret
.L55:
	movb	%r8b, regByte1Number2(%rip)
	jmp	.L57
.L54:
	movb	%r8b, regByte1Number3(%rip)
	jmp	.L57
.L53:
	movb	%r8b, regByte1Number4(%rip)
	jmp	.L57
.L52:
	movw	%r8w, regByte2Number1(%rip)
	jmp	.L57
.L51:
	movw	%r8w, regByte2Number2(%rip)
	jmp	.L57
.L50:
	movw	%r8w, regByte2Number3(%rip)
	jmp	.L57
.L49:
	movw	%r8w, regByte2Number4(%rip)
	jmp	.L57
.L48:
	movl	%r8d, regByte4Number1(%rip)
	jmp	.L57
.L47:
	movl	%r8d, regByte4Number2(%rip)
	jmp	.L57
.L46:
	movl	%r8d, regByte4Number3(%rip)
	jmp	.L57
.L45:
	movl	%r8d, regByte4Number4(%rip)
	jmp	.L57
.L44:
	movq	%r8, regByte8Number1(%rip)
	jmp	.L57
.L43:
	movq	%r8, regByte8Number2(%rip)
	jmp	.L57
.L42:
	movq	%r8, regByte8Number3(%rip)
	jmp	.L57
.L40:
	movq	%r8, regByte8Number4(%rip)
	jmp	.L57
.L39:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4667:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4667-.LLSDACSB4667
.LLSDACSB4667:
.LLSDACSE4667:
	.section	.text$_ZN2TT3RunIddEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN2TT3RunIfdEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN2TT3RunIfdEEvPhRj
	.def	_ZN2TT3RunIfdEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2TT3RunIfdEEvPhRj
_ZN2TT3RunIfdEEvPhRj:
.LFB4661:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	pxor	%xmm0, %xmm0
	cvtss2sd	(%rcx), %xmm0
	cmpb	$15, %al
	ja	.L59
	movzbl	%al, %eax
	leaq	.L61(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L61:
	.long	.L76-.L61
	.long	.L75-.L61
	.long	.L74-.L61
	.long	.L73-.L61
	.long	.L72-.L61
	.long	.L71-.L61
	.long	.L70-.L61
	.long	.L69-.L61
	.long	.L68-.L61
	.long	.L67-.L61
	.long	.L66-.L61
	.long	.L65-.L61
	.long	.L64-.L61
	.long	.L63-.L61
	.long	.L62-.L61
	.long	.L60-.L61
	.section	.text$_ZN2TT3RunIfdEEvPhRj,"x"
	.linkonce discard
.L76:
	movq	%xmm0, %rax
	movb	%al, regByte1Number1(%rip)
.L77:
	addl	$1, (%rdx)
	addq	$40, %rsp
	ret
.L75:
	movq	%xmm0, %rax
	movb	%al, regByte1Number2(%rip)
	jmp	.L77
.L74:
	movq	%xmm0, %rax
	movb	%al, regByte1Number3(%rip)
	jmp	.L77
.L73:
	movq	%xmm0, %rax
	movb	%al, regByte1Number4(%rip)
	jmp	.L77
.L72:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L77
.L71:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L77
.L70:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L77
.L69:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L77
.L68:
	movd	%xmm0, regByte4Number1(%rip)
	jmp	.L77
.L67:
	movd	%xmm0, regByte4Number2(%rip)
	jmp	.L77
.L66:
	movd	%xmm0, regByte4Number3(%rip)
	jmp	.L77
.L65:
	movd	%xmm0, regByte4Number4(%rip)
	jmp	.L77
.L64:
	movsd	%xmm0, regByte8Number1(%rip)
	jmp	.L77
.L63:
	movsd	%xmm0, regByte8Number2(%rip)
	jmp	.L77
.L62:
	movsd	%xmm0, regByte8Number3(%rip)
	jmp	.L77
.L60:
	movsd	%xmm0, regByte8Number4(%rip)
	jmp	.L77
.L59:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4661:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4661-.LLSDACSB4661
.LLSDACSB4661:
.LLSDACSE4661:
	.section	.text$_ZN2TT3RunIfdEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN2TT3RunIydEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN2TT3RunIydEEvPhRj
	.def	_ZN2TT3RunIydEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2TT3RunIydEEvPhRj
_ZN2TT3RunIydEEvPhRj:
.LFB4655:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	js	.L79
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rcx, %xmm0
.L80:
	cmpb	$15, %al
	ja	.L81
	movzbl	%al, %eax
	leaq	.L83(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L83:
	.long	.L98-.L83
	.long	.L97-.L83
	.long	.L96-.L83
	.long	.L95-.L83
	.long	.L94-.L83
	.long	.L93-.L83
	.long	.L92-.L83
	.long	.L91-.L83
	.long	.L90-.L83
	.long	.L89-.L83
	.long	.L88-.L83
	.long	.L87-.L83
	.long	.L86-.L83
	.long	.L85-.L83
	.long	.L84-.L83
	.long	.L82-.L83
	.section	.text$_ZN2TT3RunIydEEvPhRj,"x"
	.linkonce discard
.L79:
	movq	%rcx, %r8
	shrq	%r8
	andl	$1, %ecx
	orq	%rcx, %r8
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%r8, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L80
.L98:
	movq	%xmm0, %rax
	movb	%al, regByte1Number1(%rip)
.L99:
	addl	$1, (%rdx)
	addq	$40, %rsp
	ret
.L97:
	movq	%xmm0, %rax
	movb	%al, regByte1Number2(%rip)
	jmp	.L99
.L96:
	movq	%xmm0, %rax
	movb	%al, regByte1Number3(%rip)
	jmp	.L99
.L95:
	movq	%xmm0, %rax
	movb	%al, regByte1Number4(%rip)
	jmp	.L99
.L94:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L99
.L93:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L99
.L92:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L99
.L91:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L99
.L90:
	movd	%xmm0, regByte4Number1(%rip)
	jmp	.L99
.L89:
	movd	%xmm0, regByte4Number2(%rip)
	jmp	.L99
.L88:
	movd	%xmm0, regByte4Number3(%rip)
	jmp	.L99
.L87:
	movd	%xmm0, regByte4Number4(%rip)
	jmp	.L99
.L86:
	movsd	%xmm0, regByte8Number1(%rip)
	jmp	.L99
.L85:
	movsd	%xmm0, regByte8Number2(%rip)
	jmp	.L99
.L84:
	movsd	%xmm0, regByte8Number3(%rip)
	jmp	.L99
.L82:
	movsd	%xmm0, regByte8Number4(%rip)
	jmp	.L99
.L81:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4655:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4655-.LLSDACSB4655
.LLSDACSB4655:
.LLSDACSE4655:
	.section	.text$_ZN2TT3RunIydEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN2TT3RunItdEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN2TT3RunItdEEvPhRj
	.def	_ZN2TT3RunItdEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2TT3RunItdEEvPhRj
_ZN2TT3RunItdEEvPhRj:
.LFB4643:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	movzwl	(%rcx), %ecx
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	cmpb	$15, %al
	ja	.L101
	movzbl	%al, %eax
	leaq	.L103(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L103:
	.long	.L118-.L103
	.long	.L117-.L103
	.long	.L116-.L103
	.long	.L115-.L103
	.long	.L114-.L103
	.long	.L113-.L103
	.long	.L112-.L103
	.long	.L111-.L103
	.long	.L110-.L103
	.long	.L109-.L103
	.long	.L108-.L103
	.long	.L107-.L103
	.long	.L106-.L103
	.long	.L105-.L103
	.long	.L104-.L103
	.long	.L102-.L103
	.section	.text$_ZN2TT3RunItdEEvPhRj,"x"
	.linkonce discard
.L118:
	movq	%xmm0, %rax
	movb	%al, regByte1Number1(%rip)
.L119:
	addl	$1, (%rdx)
	addq	$40, %rsp
	ret
.L117:
	movq	%xmm0, %rax
	movb	%al, regByte1Number2(%rip)
	jmp	.L119
.L116:
	movq	%xmm0, %rax
	movb	%al, regByte1Number3(%rip)
	jmp	.L119
.L115:
	movq	%xmm0, %rax
	movb	%al, regByte1Number4(%rip)
	jmp	.L119
.L114:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L119
.L113:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L119
.L112:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L119
.L111:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L119
.L110:
	movd	%xmm0, regByte4Number1(%rip)
	jmp	.L119
.L109:
	movd	%xmm0, regByte4Number2(%rip)
	jmp	.L119
.L108:
	movd	%xmm0, regByte4Number3(%rip)
	jmp	.L119
.L107:
	movd	%xmm0, regByte4Number4(%rip)
	jmp	.L119
.L106:
	movsd	%xmm0, regByte8Number1(%rip)
	jmp	.L119
.L105:
	movsd	%xmm0, regByte8Number2(%rip)
	jmp	.L119
.L104:
	movsd	%xmm0, regByte8Number3(%rip)
	jmp	.L119
.L102:
	movsd	%xmm0, regByte8Number4(%rip)
	jmp	.L119
.L101:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4643:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4643-.LLSDACSB4643
.LLSDACSB4643:
.LLSDACSE4643:
	.section	.text$_ZN2TT3RunItdEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3mov3MovEPhRj,"x"
	.linkonce discard
	.globl	_ZN3mov3MovEPhRj
	.def	_ZN3mov3MovEPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3mov3MovEPhRj
_ZN3mov3MovEPhRj:
.LFB3660:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzbl	(%rcx), %eax
	cmpb	$15, %al
	ja	.L121
	movzbl	%al, %eax
	leaq	.L123(%rip), %r8
	movslq	(%r8,%rax,4), %rax
	addq	%r8, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L123:
	.long	.L138-.L123
	.long	.L137-.L123
	.long	.L136-.L123
	.long	.L135-.L123
	.long	.L134-.L123
	.long	.L133-.L123
	.long	.L132-.L123
	.long	.L131-.L123
	.long	.L130-.L123
	.long	.L129-.L123
	.long	.L128-.L123
	.long	.L127-.L123
	.long	.L126-.L123
	.long	.L125-.L123
	.long	.L124-.L123
	.long	.L122-.L123
	.section	.text$_ZN3mov3MovEPhRj,"x"
	.linkonce discard
.L138:
	movzbl	1(%rcx), %eax
	movb	%al, regByte1Number1(%rip)
.L139:
	addl	$1, (%rdx)
	addq	$40, %rsp
	ret
.L137:
	movzbl	1(%rcx), %eax
	movb	%al, regByte1Number2(%rip)
	jmp	.L139
.L136:
	movzbl	1(%rcx), %eax
	movb	%al, regByte1Number3(%rip)
	jmp	.L139
.L135:
	movzbl	1(%rcx), %eax
	movb	%al, regByte1Number4(%rip)
	jmp	.L139
.L134:
	movzwl	1(%rcx), %eax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L139
.L133:
	movzwl	1(%rcx), %eax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L139
.L132:
	movzwl	1(%rcx), %eax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L139
.L131:
	movzwl	1(%rcx), %eax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L139
.L130:
	movl	1(%rcx), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L139
.L129:
	movl	1(%rcx), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L139
.L128:
	movl	1(%rcx), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L139
.L127:
	movl	1(%rcx), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L139
.L126:
	movq	1(%rcx), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L139
.L125:
	movq	1(%rcx), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L139
.L124:
	movq	1(%rcx), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L139
.L122:
	movq	1(%rcx), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L139
.L121:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3660:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3660-.LLSDACSB3660
.LLSDACSB3660:
.LLSDACSE3660:
	.section	.text$_ZN3mov3MovEPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN4load4LoadEPhRj,"x"
	.linkonce discard
	.globl	_ZN4load4LoadEPhRj
	.def	_ZN4load4LoadEPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4load4LoadEPhRj
_ZN4load4LoadEPhRj:
.LFB3665:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzbl	(%rcx), %eax
	movl	1(%rcx), %ecx
	leaq	_ZL6memory(%rip), %r8
	addq	%r8, %rcx
	cmpb	$15, %al
	ja	.L141
	movzbl	%al, %eax
	leaq	.L143(%rip), %r8
	movslq	(%r8,%rax,4), %rax
	addq	%r8, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L143:
	.long	.L158-.L143
	.long	.L157-.L143
	.long	.L156-.L143
	.long	.L155-.L143
	.long	.L154-.L143
	.long	.L153-.L143
	.long	.L152-.L143
	.long	.L151-.L143
	.long	.L150-.L143
	.long	.L149-.L143
	.long	.L148-.L143
	.long	.L147-.L143
	.long	.L146-.L143
	.long	.L145-.L143
	.long	.L144-.L143
	.long	.L142-.L143
	.section	.text$_ZN4load4LoadEPhRj,"x"
	.linkonce discard
.L158:
	movzbl	(%rcx), %eax
	movb	%al, regByte1Number1(%rip)
.L159:
	addl	$1, (%rdx)
	addq	$40, %rsp
	ret
.L157:
	movzbl	(%rcx), %eax
	movb	%al, regByte1Number2(%rip)
	jmp	.L159
.L156:
	movzbl	(%rcx), %eax
	movb	%al, regByte1Number3(%rip)
	jmp	.L159
.L155:
	movzbl	(%rcx), %eax
	movb	%al, regByte1Number4(%rip)
	jmp	.L159
.L154:
	movzwl	(%rcx), %eax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L159
.L153:
	movzwl	(%rcx), %eax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L159
.L152:
	movzwl	(%rcx), %eax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L159
.L151:
	movzwl	(%rcx), %eax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L159
.L150:
	movl	(%rcx), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L159
.L149:
	movl	(%rcx), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L159
.L148:
	movl	(%rcx), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L159
.L147:
	movl	(%rcx), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L159
.L146:
	movq	(%rcx), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L159
.L145:
	movq	(%rcx), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L159
.L144:
	movq	(%rcx), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L159
.L142:
	movq	(%rcx), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L159
.L141:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3665:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3665-.LLSDACSB3665
.LLSDACSB3665:
.LLSDACSE3665:
	.section	.text$_ZN4load4LoadEPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN5Equal3RunIdEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN5Equal3RunIdEEvPhRj
	.def	_ZN5Equal3RunIdEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Equal3RunIdEEvPhRj
_ZN5Equal3RunIdEEvPhRj:
.LFB4603:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rdx, %r8
	movzbl	2(%rcx), %edx
	leaq	regTable(%rip), %rax
	movzbl	(%rcx), %r9d
	movq	(%rax,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%rax,%rcx,8), %rax
	movsd	(%r9), %xmm0
	ucomisd	(%rax), %xmm0
	setnp	%al
	movl	$0, %ecx
	cmovne	%ecx, %eax
	movzbl	%al, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	cmpb	$15, %dl
	ja	.L161
	movzbl	%dl, %edx
	leaq	.L163(%rip), %rcx
	movslq	(%rcx,%rdx,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L163:
	.long	.L178-.L163
	.long	.L177-.L163
	.long	.L176-.L163
	.long	.L175-.L163
	.long	.L174-.L163
	.long	.L173-.L163
	.long	.L172-.L163
	.long	.L171-.L163
	.long	.L170-.L163
	.long	.L169-.L163
	.long	.L168-.L163
	.long	.L167-.L163
	.long	.L166-.L163
	.long	.L165-.L163
	.long	.L164-.L163
	.long	.L162-.L163
	.section	.text$_ZN5Equal3RunIdEEvPhRj,"x"
	.linkonce discard
.L178:
	movq	%xmm0, %rax
	movb	%al, regByte1Number1(%rip)
.L179:
	addl	$1, (%r8)
	addq	$40, %rsp
	ret
.L177:
	movq	%xmm0, %rax
	movb	%al, regByte1Number2(%rip)
	jmp	.L179
.L176:
	movq	%xmm0, %rax
	movb	%al, regByte1Number3(%rip)
	jmp	.L179
.L175:
	movq	%xmm0, %rax
	movb	%al, regByte1Number4(%rip)
	jmp	.L179
.L174:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L179
.L173:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L179
.L172:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L179
.L171:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L179
.L170:
	movd	%xmm0, regByte4Number1(%rip)
	jmp	.L179
.L169:
	movd	%xmm0, regByte4Number2(%rip)
	jmp	.L179
.L168:
	movd	%xmm0, regByte4Number3(%rip)
	jmp	.L179
.L167:
	movd	%xmm0, regByte4Number4(%rip)
	jmp	.L179
.L166:
	movsd	%xmm0, regByte8Number1(%rip)
	jmp	.L179
.L165:
	movsd	%xmm0, regByte8Number2(%rip)
	jmp	.L179
.L164:
	movsd	%xmm0, regByte8Number3(%rip)
	jmp	.L179
.L162:
	movsd	%xmm0, regByte8Number4(%rip)
	jmp	.L179
.L161:
	movzbl	%dl, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4603:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4603-.LLSDACSB4603
.LLSDACSB4603:
.LLSDACSE4603:
	.section	.text$_ZN5Equal3RunIdEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN5Small3RunIdEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN5Small3RunIdEEvPhRj
	.def	_ZN5Small3RunIdEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Small3RunIdEEvPhRj
_ZN5Small3RunIdEEvPhRj:
.LFB4597:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %rcx
	movsd	(%rcx), %xmm0
	comisd	(%r9), %xmm0
	seta	%cl
	movzbl	%cl, %ecx
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	cmpb	$15, %al
	ja	.L181
	movzbl	%al, %eax
	leaq	.L183(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L183:
	.long	.L198-.L183
	.long	.L197-.L183
	.long	.L196-.L183
	.long	.L195-.L183
	.long	.L194-.L183
	.long	.L193-.L183
	.long	.L192-.L183
	.long	.L191-.L183
	.long	.L190-.L183
	.long	.L189-.L183
	.long	.L188-.L183
	.long	.L187-.L183
	.long	.L186-.L183
	.long	.L185-.L183
	.long	.L184-.L183
	.long	.L182-.L183
	.section	.text$_ZN5Small3RunIdEEvPhRj,"x"
	.linkonce discard
.L198:
	movq	%xmm0, %rax
	movb	%al, regByte1Number1(%rip)
.L199:
	addl	$1, (%rdx)
	addq	$40, %rsp
	ret
.L197:
	movq	%xmm0, %rax
	movb	%al, regByte1Number2(%rip)
	jmp	.L199
.L196:
	movq	%xmm0, %rax
	movb	%al, regByte1Number3(%rip)
	jmp	.L199
.L195:
	movq	%xmm0, %rax
	movb	%al, regByte1Number4(%rip)
	jmp	.L199
.L194:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L199
.L193:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L199
.L192:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L199
.L191:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L199
.L190:
	movd	%xmm0, regByte4Number1(%rip)
	jmp	.L199
.L189:
	movd	%xmm0, regByte4Number2(%rip)
	jmp	.L199
.L188:
	movd	%xmm0, regByte4Number3(%rip)
	jmp	.L199
.L187:
	movd	%xmm0, regByte4Number4(%rip)
	jmp	.L199
.L186:
	movsd	%xmm0, regByte8Number1(%rip)
	jmp	.L199
.L185:
	movsd	%xmm0, regByte8Number2(%rip)
	jmp	.L199
.L184:
	movsd	%xmm0, regByte8Number3(%rip)
	jmp	.L199
.L182:
	movsd	%xmm0, regByte8Number4(%rip)
	jmp	.L199
.L181:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4597:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4597-.LLSDACSB4597
.LLSDACSB4597:
.LLSDACSE4597:
	.section	.text$_ZN5Small3RunIdEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3Big3RunIdEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN3Big3RunIdEEvPhRj
	.def	_ZN3Big3RunIdEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3Big3RunIdEEvPhRj
_ZN3Big3RunIdEEvPhRj:
.LFB4591:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %rcx
	movsd	(%r9), %xmm0
	comisd	(%rcx), %xmm0
	seta	%cl
	movzbl	%cl, %ecx
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	cmpb	$15, %al
	ja	.L201
	movzbl	%al, %eax
	leaq	.L203(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L203:
	.long	.L218-.L203
	.long	.L217-.L203
	.long	.L216-.L203
	.long	.L215-.L203
	.long	.L214-.L203
	.long	.L213-.L203
	.long	.L212-.L203
	.long	.L211-.L203
	.long	.L210-.L203
	.long	.L209-.L203
	.long	.L208-.L203
	.long	.L207-.L203
	.long	.L206-.L203
	.long	.L205-.L203
	.long	.L204-.L203
	.long	.L202-.L203
	.section	.text$_ZN3Big3RunIdEEvPhRj,"x"
	.linkonce discard
.L218:
	movq	%xmm0, %rax
	movb	%al, regByte1Number1(%rip)
.L219:
	addl	$1, (%rdx)
	addq	$40, %rsp
	ret
.L217:
	movq	%xmm0, %rax
	movb	%al, regByte1Number2(%rip)
	jmp	.L219
.L216:
	movq	%xmm0, %rax
	movb	%al, regByte1Number3(%rip)
	jmp	.L219
.L215:
	movq	%xmm0, %rax
	movb	%al, regByte1Number4(%rip)
	jmp	.L219
.L214:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L219
.L213:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L219
.L212:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L219
.L211:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L219
.L210:
	movd	%xmm0, regByte4Number1(%rip)
	jmp	.L219
.L209:
	movd	%xmm0, regByte4Number2(%rip)
	jmp	.L219
.L208:
	movd	%xmm0, regByte4Number3(%rip)
	jmp	.L219
.L207:
	movd	%xmm0, regByte4Number4(%rip)
	jmp	.L219
.L206:
	movsd	%xmm0, regByte8Number1(%rip)
	jmp	.L219
.L205:
	movsd	%xmm0, regByte8Number2(%rip)
	jmp	.L219
.L204:
	movsd	%xmm0, regByte8Number3(%rip)
	jmp	.L219
.L202:
	movsd	%xmm0, regByte8Number4(%rip)
	jmp	.L219
.L201:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4591:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4591-.LLSDACSB4591
.LLSDACSB4591:
.LLSDACSE4591:
	.section	.text$_ZN3Big3RunIdEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3Div3RunIdEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN3Div3RunIdEEvPhRj
	.def	_ZN3Div3RunIdEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3Div3RunIdEEvPhRj
_ZN3Div3RunIdEEvPhRj:
.LFB4585:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movq	(%r9), %xmm0
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %rcx
	divsd	(%rcx), %xmm0
	cmpb	$15, %al
	ja	.L221
	movzbl	%al, %eax
	leaq	.L223(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L223:
	.long	.L238-.L223
	.long	.L237-.L223
	.long	.L236-.L223
	.long	.L235-.L223
	.long	.L234-.L223
	.long	.L233-.L223
	.long	.L232-.L223
	.long	.L231-.L223
	.long	.L230-.L223
	.long	.L229-.L223
	.long	.L228-.L223
	.long	.L227-.L223
	.long	.L226-.L223
	.long	.L225-.L223
	.long	.L224-.L223
	.long	.L222-.L223
	.section	.text$_ZN3Div3RunIdEEvPhRj,"x"
	.linkonce discard
.L238:
	movq	%xmm0, %rax
	movb	%al, regByte1Number1(%rip)
.L239:
	addl	$1, (%rdx)
	addq	$40, %rsp
	ret
.L237:
	movq	%xmm0, %rax
	movb	%al, regByte1Number2(%rip)
	jmp	.L239
.L236:
	movq	%xmm0, %rax
	movb	%al, regByte1Number3(%rip)
	jmp	.L239
.L235:
	movq	%xmm0, %rax
	movb	%al, regByte1Number4(%rip)
	jmp	.L239
.L234:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L239
.L233:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L239
.L232:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L239
.L231:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L239
.L230:
	movd	%xmm0, regByte4Number1(%rip)
	jmp	.L239
.L229:
	movd	%xmm0, regByte4Number2(%rip)
	jmp	.L239
.L228:
	movd	%xmm0, regByte4Number3(%rip)
	jmp	.L239
.L227:
	movd	%xmm0, regByte4Number4(%rip)
	jmp	.L239
.L226:
	movsd	%xmm0, regByte8Number1(%rip)
	jmp	.L239
.L225:
	movsd	%xmm0, regByte8Number2(%rip)
	jmp	.L239
.L224:
	movsd	%xmm0, regByte8Number3(%rip)
	jmp	.L239
.L222:
	movsd	%xmm0, regByte8Number4(%rip)
	jmp	.L239
.L221:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4585:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4585-.LLSDACSB4585
.LLSDACSB4585:
.LLSDACSE4585:
	.section	.text$_ZN3Div3RunIdEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3Mul3RunIdEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN3Mul3RunIdEEvPhRj
	.def	_ZN3Mul3RunIdEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3Mul3RunIdEEvPhRj
_ZN3Mul3RunIdEEvPhRj:
.LFB4579:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %rcx
	movq	(%rcx), %xmm0
	mulsd	(%r9), %xmm0
	cmpb	$15, %al
	ja	.L241
	movzbl	%al, %eax
	leaq	.L243(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L243:
	.long	.L258-.L243
	.long	.L257-.L243
	.long	.L256-.L243
	.long	.L255-.L243
	.long	.L254-.L243
	.long	.L253-.L243
	.long	.L252-.L243
	.long	.L251-.L243
	.long	.L250-.L243
	.long	.L249-.L243
	.long	.L248-.L243
	.long	.L247-.L243
	.long	.L246-.L243
	.long	.L245-.L243
	.long	.L244-.L243
	.long	.L242-.L243
	.section	.text$_ZN3Mul3RunIdEEvPhRj,"x"
	.linkonce discard
.L258:
	movq	%xmm0, %rax
	movb	%al, regByte1Number1(%rip)
.L259:
	addl	$1, (%rdx)
	addq	$40, %rsp
	ret
.L257:
	movq	%xmm0, %rax
	movb	%al, regByte1Number2(%rip)
	jmp	.L259
.L256:
	movq	%xmm0, %rax
	movb	%al, regByte1Number3(%rip)
	jmp	.L259
.L255:
	movq	%xmm0, %rax
	movb	%al, regByte1Number4(%rip)
	jmp	.L259
.L254:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L259
.L253:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L259
.L252:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L259
.L251:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L259
.L250:
	movd	%xmm0, regByte4Number1(%rip)
	jmp	.L259
.L249:
	movd	%xmm0, regByte4Number2(%rip)
	jmp	.L259
.L248:
	movd	%xmm0, regByte4Number3(%rip)
	jmp	.L259
.L247:
	movd	%xmm0, regByte4Number4(%rip)
	jmp	.L259
.L246:
	movsd	%xmm0, regByte8Number1(%rip)
	jmp	.L259
.L245:
	movsd	%xmm0, regByte8Number2(%rip)
	jmp	.L259
.L244:
	movsd	%xmm0, regByte8Number3(%rip)
	jmp	.L259
.L242:
	movsd	%xmm0, regByte8Number4(%rip)
	jmp	.L259
.L241:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4579:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4579-.LLSDACSB4579
.LLSDACSB4579:
.LLSDACSE4579:
	.section	.text$_ZN3Mul3RunIdEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3Sub3RunIdEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN3Sub3RunIdEEvPhRj
	.def	_ZN3Sub3RunIdEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3Sub3RunIdEEvPhRj
_ZN3Sub3RunIdEEvPhRj:
.LFB4573:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movq	(%r9), %xmm0
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %rcx
	subsd	(%rcx), %xmm0
	cmpb	$15, %al
	ja	.L261
	movzbl	%al, %eax
	leaq	.L263(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L263:
	.long	.L278-.L263
	.long	.L277-.L263
	.long	.L276-.L263
	.long	.L275-.L263
	.long	.L274-.L263
	.long	.L273-.L263
	.long	.L272-.L263
	.long	.L271-.L263
	.long	.L270-.L263
	.long	.L269-.L263
	.long	.L268-.L263
	.long	.L267-.L263
	.long	.L266-.L263
	.long	.L265-.L263
	.long	.L264-.L263
	.long	.L262-.L263
	.section	.text$_ZN3Sub3RunIdEEvPhRj,"x"
	.linkonce discard
.L278:
	movq	%xmm0, %rax
	movb	%al, regByte1Number1(%rip)
.L279:
	addl	$1, (%rdx)
	addq	$40, %rsp
	ret
.L277:
	movq	%xmm0, %rax
	movb	%al, regByte1Number2(%rip)
	jmp	.L279
.L276:
	movq	%xmm0, %rax
	movb	%al, regByte1Number3(%rip)
	jmp	.L279
.L275:
	movq	%xmm0, %rax
	movb	%al, regByte1Number4(%rip)
	jmp	.L279
.L274:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L279
.L273:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L279
.L272:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L279
.L271:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L279
.L270:
	movd	%xmm0, regByte4Number1(%rip)
	jmp	.L279
.L269:
	movd	%xmm0, regByte4Number2(%rip)
	jmp	.L279
.L268:
	movd	%xmm0, regByte4Number3(%rip)
	jmp	.L279
.L267:
	movd	%xmm0, regByte4Number4(%rip)
	jmp	.L279
.L266:
	movsd	%xmm0, regByte8Number1(%rip)
	jmp	.L279
.L265:
	movsd	%xmm0, regByte8Number2(%rip)
	jmp	.L279
.L264:
	movsd	%xmm0, regByte8Number3(%rip)
	jmp	.L279
.L262:
	movsd	%xmm0, regByte8Number4(%rip)
	jmp	.L279
.L261:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4573:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4573-.LLSDACSB4573
.LLSDACSB4573:
.LLSDACSE4573:
	.section	.text$_ZN3Sub3RunIdEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3Add3RunIdEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN3Add3RunIdEEvPhRj
	.def	_ZN3Add3RunIdEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3Add3RunIdEEvPhRj
_ZN3Add3RunIdEEvPhRj:
.LFB4567:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %rcx
	movq	(%rcx), %xmm0
	addsd	(%r9), %xmm0
	cmpb	$15, %al
	ja	.L281
	movzbl	%al, %eax
	leaq	.L283(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L283:
	.long	.L298-.L283
	.long	.L297-.L283
	.long	.L296-.L283
	.long	.L295-.L283
	.long	.L294-.L283
	.long	.L293-.L283
	.long	.L292-.L283
	.long	.L291-.L283
	.long	.L290-.L283
	.long	.L289-.L283
	.long	.L288-.L283
	.long	.L287-.L283
	.long	.L286-.L283
	.long	.L285-.L283
	.long	.L284-.L283
	.long	.L282-.L283
	.section	.text$_ZN3Add3RunIdEEvPhRj,"x"
	.linkonce discard
.L298:
	movq	%xmm0, %rax
	movb	%al, regByte1Number1(%rip)
.L299:
	addl	$1, (%rdx)
	addq	$40, %rsp
	ret
.L297:
	movq	%xmm0, %rax
	movb	%al, regByte1Number2(%rip)
	jmp	.L299
.L296:
	movq	%xmm0, %rax
	movb	%al, regByte1Number3(%rip)
	jmp	.L299
.L295:
	movq	%xmm0, %rax
	movb	%al, regByte1Number4(%rip)
	jmp	.L299
.L294:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L299
.L293:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L299
.L292:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L299
.L291:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L299
.L290:
	movd	%xmm0, regByte4Number1(%rip)
	jmp	.L299
.L289:
	movd	%xmm0, regByte4Number2(%rip)
	jmp	.L299
.L288:
	movd	%xmm0, regByte4Number3(%rip)
	jmp	.L299
.L287:
	movd	%xmm0, regByte4Number4(%rip)
	jmp	.L299
.L286:
	movsd	%xmm0, regByte8Number1(%rip)
	jmp	.L299
.L285:
	movsd	%xmm0, regByte8Number2(%rip)
	jmp	.L299
.L284:
	movsd	%xmm0, regByte8Number3(%rip)
	jmp	.L299
.L282:
	movsd	%xmm0, regByte8Number4(%rip)
	jmp	.L299
.L281:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4567:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4567-.LLSDACSB4567
.LLSDACSB4567:
.LLSDACSE4567:
	.section	.text$_ZN3Add3RunIdEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN2TT3RunIdhEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN2TT3RunIdhEEvPhRj
	.def	_ZN2TT3RunIdhEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2TT3RunIdhEEvPhRj
_ZN2TT3RunIdhEEvPhRj:
.LFB4662:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	cvttsd2sil	(%rcx), %r8d
	cmpb	$15, %al
	ja	.L301
	movzbl	%al, %eax
	leaq	.L303(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L303:
	.long	.L318-.L303
	.long	.L317-.L303
	.long	.L316-.L303
	.long	.L315-.L303
	.long	.L314-.L303
	.long	.L313-.L303
	.long	.L312-.L303
	.long	.L311-.L303
	.long	.L310-.L303
	.long	.L309-.L303
	.long	.L308-.L303
	.long	.L307-.L303
	.long	.L306-.L303
	.long	.L305-.L303
	.long	.L304-.L303
	.long	.L302-.L303
	.section	.text$_ZN2TT3RunIdhEEvPhRj,"x"
	.linkonce discard
.L318:
	movb	%r8b, regByte1Number1(%rip)
.L319:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L317:
	movb	%r8b, regByte1Number2(%rip)
	jmp	.L319
.L316:
	movb	%r8b, regByte1Number3(%rip)
	jmp	.L319
.L315:
	movb	%r8b, regByte1Number4(%rip)
	jmp	.L319
.L314:
	movb	%r8b, 47(%rsp)
	movzwl	47(%rsp), %eax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L319
.L313:
	movb	%r8b, 46(%rsp)
	movzwl	46(%rsp), %eax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L319
.L312:
	movb	%r8b, 45(%rsp)
	movzwl	45(%rsp), %eax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L319
.L311:
	movb	%r8b, 44(%rsp)
	movzwl	44(%rsp), %eax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L319
.L310:
	movb	%r8b, 43(%rsp)
	movl	43(%rsp), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L319
.L309:
	movb	%r8b, 42(%rsp)
	movl	42(%rsp), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L319
.L308:
	movb	%r8b, 41(%rsp)
	movl	41(%rsp), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L319
.L307:
	movb	%r8b, 40(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L319
.L306:
	movb	%r8b, 39(%rsp)
	movq	39(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L319
.L305:
	movb	%r8b, 38(%rsp)
	movq	38(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L319
.L304:
	movb	%r8b, 37(%rsp)
	movq	37(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L319
.L302:
	movb	%r8b, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L319
.L301:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4662:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4662-.LLSDACSB4662
.LLSDACSB4662:
.LLSDACSE4662:
	.section	.text$_ZN2TT3RunIdhEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN2TT3RunIdtEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN2TT3RunIdtEEvPhRj
	.def	_ZN2TT3RunIdtEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2TT3RunIdtEEvPhRj
_ZN2TT3RunIdtEEvPhRj:
.LFB4663:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	cvttsd2sil	(%rcx), %r8d
	cmpb	$15, %al
	ja	.L321
	movzbl	%al, %eax
	leaq	.L323(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L323:
	.long	.L338-.L323
	.long	.L337-.L323
	.long	.L336-.L323
	.long	.L335-.L323
	.long	.L334-.L323
	.long	.L333-.L323
	.long	.L332-.L323
	.long	.L331-.L323
	.long	.L330-.L323
	.long	.L329-.L323
	.long	.L328-.L323
	.long	.L327-.L323
	.long	.L326-.L323
	.long	.L325-.L323
	.long	.L324-.L323
	.long	.L322-.L323
	.section	.text$_ZN2TT3RunIdtEEvPhRj,"x"
	.linkonce discard
.L338:
	movb	%r8b, regByte1Number1(%rip)
.L339:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L337:
	movb	%r8b, regByte1Number2(%rip)
	jmp	.L339
.L336:
	movb	%r8b, regByte1Number3(%rip)
	jmp	.L339
.L335:
	movb	%r8b, regByte1Number4(%rip)
	jmp	.L339
.L334:
	movw	%r8w, regByte2Number1(%rip)
	jmp	.L339
.L333:
	movw	%r8w, regByte2Number2(%rip)
	jmp	.L339
.L332:
	movw	%r8w, regByte2Number3(%rip)
	jmp	.L339
.L331:
	movw	%r8w, regByte2Number4(%rip)
	jmp	.L339
.L330:
	movw	%r8w, 46(%rsp)
	movl	46(%rsp), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L339
.L329:
	movw	%r8w, 44(%rsp)
	movl	44(%rsp), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L339
.L328:
	movw	%r8w, 42(%rsp)
	movl	42(%rsp), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L339
.L327:
	movw	%r8w, 40(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L339
.L326:
	movw	%r8w, 38(%rsp)
	movq	38(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L339
.L325:
	movw	%r8w, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L339
.L324:
	movw	%r8w, 34(%rsp)
	movq	34(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L339
.L322:
	movw	%r8w, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L339
.L321:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4663:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4663-.LLSDACSB4663
.LLSDACSB4663:
.LLSDACSE4663:
	.section	.text$_ZN2TT3RunIdtEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN2TT3RunIdjEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN2TT3RunIdjEEvPhRj
	.def	_ZN2TT3RunIdjEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2TT3RunIdjEEvPhRj
_ZN2TT3RunIdjEEvPhRj:
.LFB4664:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	cvttsd2siq	(%rcx), %r8
	cmpb	$15, %al
	ja	.L341
	movzbl	%al, %eax
	leaq	.L343(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L343:
	.long	.L358-.L343
	.long	.L357-.L343
	.long	.L356-.L343
	.long	.L355-.L343
	.long	.L354-.L343
	.long	.L353-.L343
	.long	.L352-.L343
	.long	.L351-.L343
	.long	.L350-.L343
	.long	.L349-.L343
	.long	.L348-.L343
	.long	.L347-.L343
	.long	.L346-.L343
	.long	.L345-.L343
	.long	.L344-.L343
	.long	.L342-.L343
	.section	.text$_ZN2TT3RunIdjEEvPhRj,"x"
	.linkonce discard
.L358:
	movb	%r8b, regByte1Number1(%rip)
.L359:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L357:
	movb	%r8b, regByte1Number2(%rip)
	jmp	.L359
.L356:
	movb	%r8b, regByte1Number3(%rip)
	jmp	.L359
.L355:
	movb	%r8b, regByte1Number4(%rip)
	jmp	.L359
.L354:
	movw	%r8w, regByte2Number1(%rip)
	jmp	.L359
.L353:
	movw	%r8w, regByte2Number2(%rip)
	jmp	.L359
.L352:
	movw	%r8w, regByte2Number3(%rip)
	jmp	.L359
.L351:
	movw	%r8w, regByte2Number4(%rip)
	jmp	.L359
.L350:
	movl	%r8d, regByte4Number1(%rip)
	jmp	.L359
.L349:
	movl	%r8d, regByte4Number2(%rip)
	jmp	.L359
.L348:
	movl	%r8d, regByte4Number3(%rip)
	jmp	.L359
.L347:
	movl	%r8d, regByte4Number4(%rip)
	jmp	.L359
.L346:
	movl	%r8d, 44(%rsp)
	movq	44(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L359
.L345:
	movl	%r8d, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L359
.L344:
	movl	%r8d, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L359
.L342:
	movl	%r8d, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L359
.L341:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4664:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4664-.LLSDACSB4664
.LLSDACSB4664:
.LLSDACSE4664:
	.section	.text$_ZN2TT3RunIdjEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN2TT3RunIdyEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN2TT3RunIdyEEvPhRj
	.def	_ZN2TT3RunIdyEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2TT3RunIdyEEvPhRj
_ZN2TT3RunIdyEEvPhRj:
.LFB4665:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	movq	(%rcx), %xmm0
	comisd	.LC3(%rip), %xmm0
	jnb	.L361
	cvttsd2siq	%xmm0, %r8
.L362:
	cmpb	$15, %al
	ja	.L363
	movzbl	%al, %eax
	leaq	.L365(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L365:
	.long	.L380-.L365
	.long	.L379-.L365
	.long	.L378-.L365
	.long	.L377-.L365
	.long	.L376-.L365
	.long	.L375-.L365
	.long	.L374-.L365
	.long	.L373-.L365
	.long	.L372-.L365
	.long	.L371-.L365
	.long	.L370-.L365
	.long	.L369-.L365
	.long	.L368-.L365
	.long	.L367-.L365
	.long	.L366-.L365
	.long	.L364-.L365
	.section	.text$_ZN2TT3RunIdyEEvPhRj,"x"
	.linkonce discard
.L361:
	subsd	.LC3(%rip), %xmm0
	cvttsd2siq	%xmm0, %r8
	btcq	$63, %r8
	jmp	.L362
.L380:
	movb	%r8b, regByte1Number1(%rip)
.L381:
	addl	$1, (%rdx)
	addq	$40, %rsp
	ret
.L379:
	movb	%r8b, regByte1Number2(%rip)
	jmp	.L381
.L378:
	movb	%r8b, regByte1Number3(%rip)
	jmp	.L381
.L377:
	movb	%r8b, regByte1Number4(%rip)
	jmp	.L381
.L376:
	movw	%r8w, regByte2Number1(%rip)
	jmp	.L381
.L375:
	movw	%r8w, regByte2Number2(%rip)
	jmp	.L381
.L374:
	movw	%r8w, regByte2Number3(%rip)
	jmp	.L381
.L373:
	movw	%r8w, regByte2Number4(%rip)
	jmp	.L381
.L372:
	movl	%r8d, regByte4Number1(%rip)
	jmp	.L381
.L371:
	movl	%r8d, regByte4Number2(%rip)
	jmp	.L381
.L370:
	movl	%r8d, regByte4Number3(%rip)
	jmp	.L381
.L369:
	movl	%r8d, regByte4Number4(%rip)
	jmp	.L381
.L368:
	movq	%r8, regByte8Number1(%rip)
	jmp	.L381
.L367:
	movq	%r8, regByte8Number2(%rip)
	jmp	.L381
.L366:
	movq	%r8, regByte8Number3(%rip)
	jmp	.L381
.L364:
	movq	%r8, regByte8Number4(%rip)
	jmp	.L381
.L363:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4665:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4665-.LLSDACSB4665
.LLSDACSB4665:
.LLSDACSE4665:
	.section	.text$_ZN2TT3RunIdyEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN2TT3RunIdfEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN2TT3RunIdfEEvPhRj
	.def	_ZN2TT3RunIdfEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2TT3RunIdfEEvPhRj
_ZN2TT3RunIdfEEvPhRj:
.LFB4666:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	pxor	%xmm0, %xmm0
	cvtsd2ss	(%rcx), %xmm0
	cmpb	$15, %al
	ja	.L383
	movzbl	%al, %eax
	leaq	.L385(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L385:
	.long	.L400-.L385
	.long	.L399-.L385
	.long	.L398-.L385
	.long	.L397-.L385
	.long	.L396-.L385
	.long	.L395-.L385
	.long	.L394-.L385
	.long	.L393-.L385
	.long	.L392-.L385
	.long	.L391-.L385
	.long	.L390-.L385
	.long	.L389-.L385
	.long	.L388-.L385
	.long	.L387-.L385
	.long	.L386-.L385
	.long	.L384-.L385
	.section	.text$_ZN2TT3RunIdfEEvPhRj,"x"
	.linkonce discard
.L400:
	movd	%xmm0, %eax
	movb	%al, regByte1Number1(%rip)
.L401:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L399:
	movd	%xmm0, %eax
	movb	%al, regByte1Number2(%rip)
	jmp	.L401
.L398:
	movd	%xmm0, %eax
	movb	%al, regByte1Number3(%rip)
	jmp	.L401
.L397:
	movd	%xmm0, %eax
	movb	%al, regByte1Number4(%rip)
	jmp	.L401
.L396:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L401
.L395:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L401
.L394:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L401
.L393:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L401
.L392:
	movss	%xmm0, regByte4Number1(%rip)
	jmp	.L401
.L391:
	movss	%xmm0, regByte4Number2(%rip)
	jmp	.L401
.L390:
	movss	%xmm0, regByte4Number3(%rip)
	jmp	.L401
.L389:
	movss	%xmm0, regByte4Number4(%rip)
	jmp	.L401
.L388:
	movss	%xmm0, 44(%rsp)
	movq	44(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L401
.L387:
	movss	%xmm0, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L401
.L386:
	movss	%xmm0, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L401
.L384:
	movss	%xmm0, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L401
.L383:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4666:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4666-.LLSDACSB4666
.LLSDACSB4666:
.LLSDACSE4666:
	.section	.text$_ZN2TT3RunIdfEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN5Equal3RunIfEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN5Equal3RunIfEEvPhRj
	.def	_ZN5Equal3RunIfEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Equal3RunIfEEvPhRj
_ZN5Equal3RunIfEEvPhRj:
.LFB4602:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	%rdx, %r8
	movzbl	2(%rcx), %edx
	leaq	regTable(%rip), %rax
	movzbl	(%rcx), %r9d
	movq	(%rax,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%rax,%rcx,8), %rax
	movss	(%r9), %xmm0
	ucomiss	(%rax), %xmm0
	setnp	%al
	movl	$0, %ecx
	cmovne	%ecx, %eax
	movzbl	%al, %eax
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	cmpb	$15, %dl
	ja	.L403
	movzbl	%dl, %edx
	leaq	.L405(%rip), %rcx
	movslq	(%rcx,%rdx,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L405:
	.long	.L420-.L405
	.long	.L419-.L405
	.long	.L418-.L405
	.long	.L417-.L405
	.long	.L416-.L405
	.long	.L415-.L405
	.long	.L414-.L405
	.long	.L413-.L405
	.long	.L412-.L405
	.long	.L411-.L405
	.long	.L410-.L405
	.long	.L409-.L405
	.long	.L408-.L405
	.long	.L407-.L405
	.long	.L406-.L405
	.long	.L404-.L405
	.section	.text$_ZN5Equal3RunIfEEvPhRj,"x"
	.linkonce discard
.L420:
	movd	%xmm0, %eax
	movb	%al, regByte1Number1(%rip)
.L421:
	addl	$1, (%r8)
	addq	$56, %rsp
	ret
.L419:
	movd	%xmm0, %eax
	movb	%al, regByte1Number2(%rip)
	jmp	.L421
.L418:
	movd	%xmm0, %eax
	movb	%al, regByte1Number3(%rip)
	jmp	.L421
.L417:
	movd	%xmm0, %eax
	movb	%al, regByte1Number4(%rip)
	jmp	.L421
.L416:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L421
.L415:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L421
.L414:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L421
.L413:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L421
.L412:
	movss	%xmm0, regByte4Number1(%rip)
	jmp	.L421
.L411:
	movss	%xmm0, regByte4Number2(%rip)
	jmp	.L421
.L410:
	movss	%xmm0, regByte4Number3(%rip)
	jmp	.L421
.L409:
	movss	%xmm0, regByte4Number4(%rip)
	jmp	.L421
.L408:
	movss	%xmm0, 44(%rsp)
	movq	44(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L421
.L407:
	movss	%xmm0, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L421
.L406:
	movss	%xmm0, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L421
.L404:
	movss	%xmm0, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L421
.L403:
	movzbl	%dl, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4602:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4602-.LLSDACSB4602
.LLSDACSB4602:
.LLSDACSE4602:
	.section	.text$_ZN5Equal3RunIfEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN5Small3RunIfEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN5Small3RunIfEEvPhRj
	.def	_ZN5Small3RunIfEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Small3RunIfEEvPhRj
_ZN5Small3RunIfEEvPhRj:
.LFB4596:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %rcx
	movss	(%rcx), %xmm0
	comiss	(%r9), %xmm0
	seta	%cl
	movzbl	%cl, %ecx
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
	cmpb	$15, %al
	ja	.L423
	movzbl	%al, %eax
	leaq	.L425(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L425:
	.long	.L440-.L425
	.long	.L439-.L425
	.long	.L438-.L425
	.long	.L437-.L425
	.long	.L436-.L425
	.long	.L435-.L425
	.long	.L434-.L425
	.long	.L433-.L425
	.long	.L432-.L425
	.long	.L431-.L425
	.long	.L430-.L425
	.long	.L429-.L425
	.long	.L428-.L425
	.long	.L427-.L425
	.long	.L426-.L425
	.long	.L424-.L425
	.section	.text$_ZN5Small3RunIfEEvPhRj,"x"
	.linkonce discard
.L440:
	movd	%xmm0, %eax
	movb	%al, regByte1Number1(%rip)
.L441:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L439:
	movd	%xmm0, %eax
	movb	%al, regByte1Number2(%rip)
	jmp	.L441
.L438:
	movd	%xmm0, %eax
	movb	%al, regByte1Number3(%rip)
	jmp	.L441
.L437:
	movd	%xmm0, %eax
	movb	%al, regByte1Number4(%rip)
	jmp	.L441
.L436:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L441
.L435:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L441
.L434:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L441
.L433:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L441
.L432:
	movss	%xmm0, regByte4Number1(%rip)
	jmp	.L441
.L431:
	movss	%xmm0, regByte4Number2(%rip)
	jmp	.L441
.L430:
	movss	%xmm0, regByte4Number3(%rip)
	jmp	.L441
.L429:
	movss	%xmm0, regByte4Number4(%rip)
	jmp	.L441
.L428:
	movss	%xmm0, 44(%rsp)
	movq	44(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L441
.L427:
	movss	%xmm0, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L441
.L426:
	movss	%xmm0, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L441
.L424:
	movss	%xmm0, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L441
.L423:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4596:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4596-.LLSDACSB4596
.LLSDACSB4596:
.LLSDACSE4596:
	.section	.text$_ZN5Small3RunIfEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3Big3RunIfEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN3Big3RunIfEEvPhRj
	.def	_ZN3Big3RunIfEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3Big3RunIfEEvPhRj
_ZN3Big3RunIfEEvPhRj:
.LFB4590:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %rcx
	movss	(%r9), %xmm0
	comiss	(%rcx), %xmm0
	seta	%cl
	movzbl	%cl, %ecx
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
	cmpb	$15, %al
	ja	.L443
	movzbl	%al, %eax
	leaq	.L445(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L445:
	.long	.L460-.L445
	.long	.L459-.L445
	.long	.L458-.L445
	.long	.L457-.L445
	.long	.L456-.L445
	.long	.L455-.L445
	.long	.L454-.L445
	.long	.L453-.L445
	.long	.L452-.L445
	.long	.L451-.L445
	.long	.L450-.L445
	.long	.L449-.L445
	.long	.L448-.L445
	.long	.L447-.L445
	.long	.L446-.L445
	.long	.L444-.L445
	.section	.text$_ZN3Big3RunIfEEvPhRj,"x"
	.linkonce discard
.L460:
	movd	%xmm0, %eax
	movb	%al, regByte1Number1(%rip)
.L461:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L459:
	movd	%xmm0, %eax
	movb	%al, regByte1Number2(%rip)
	jmp	.L461
.L458:
	movd	%xmm0, %eax
	movb	%al, regByte1Number3(%rip)
	jmp	.L461
.L457:
	movd	%xmm0, %eax
	movb	%al, regByte1Number4(%rip)
	jmp	.L461
.L456:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L461
.L455:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L461
.L454:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L461
.L453:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L461
.L452:
	movss	%xmm0, regByte4Number1(%rip)
	jmp	.L461
.L451:
	movss	%xmm0, regByte4Number2(%rip)
	jmp	.L461
.L450:
	movss	%xmm0, regByte4Number3(%rip)
	jmp	.L461
.L449:
	movss	%xmm0, regByte4Number4(%rip)
	jmp	.L461
.L448:
	movss	%xmm0, 44(%rsp)
	movq	44(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L461
.L447:
	movss	%xmm0, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L461
.L446:
	movss	%xmm0, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L461
.L444:
	movss	%xmm0, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L461
.L443:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4590:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4590-.LLSDACSB4590
.LLSDACSB4590:
.LLSDACSE4590:
	.section	.text$_ZN3Big3RunIfEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3Div3RunIfEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN3Div3RunIfEEvPhRj
	.def	_ZN3Div3RunIfEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3Div3RunIfEEvPhRj
_ZN3Div3RunIfEEvPhRj:
.LFB4584:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movd	(%r9), %xmm0
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %rcx
	divss	(%rcx), %xmm0
	cmpb	$15, %al
	ja	.L463
	movzbl	%al, %eax
	leaq	.L465(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L465:
	.long	.L480-.L465
	.long	.L479-.L465
	.long	.L478-.L465
	.long	.L477-.L465
	.long	.L476-.L465
	.long	.L475-.L465
	.long	.L474-.L465
	.long	.L473-.L465
	.long	.L472-.L465
	.long	.L471-.L465
	.long	.L470-.L465
	.long	.L469-.L465
	.long	.L468-.L465
	.long	.L467-.L465
	.long	.L466-.L465
	.long	.L464-.L465
	.section	.text$_ZN3Div3RunIfEEvPhRj,"x"
	.linkonce discard
.L480:
	movd	%xmm0, %eax
	movb	%al, regByte1Number1(%rip)
.L481:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L479:
	movd	%xmm0, %eax
	movb	%al, regByte1Number2(%rip)
	jmp	.L481
.L478:
	movd	%xmm0, %eax
	movb	%al, regByte1Number3(%rip)
	jmp	.L481
.L477:
	movd	%xmm0, %eax
	movb	%al, regByte1Number4(%rip)
	jmp	.L481
.L476:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L481
.L475:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L481
.L474:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L481
.L473:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L481
.L472:
	movss	%xmm0, regByte4Number1(%rip)
	jmp	.L481
.L471:
	movss	%xmm0, regByte4Number2(%rip)
	jmp	.L481
.L470:
	movss	%xmm0, regByte4Number3(%rip)
	jmp	.L481
.L469:
	movss	%xmm0, regByte4Number4(%rip)
	jmp	.L481
.L468:
	movss	%xmm0, 44(%rsp)
	movq	44(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L481
.L467:
	movss	%xmm0, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L481
.L466:
	movss	%xmm0, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L481
.L464:
	movss	%xmm0, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L481
.L463:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4584:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4584-.LLSDACSB4584
.LLSDACSB4584:
.LLSDACSE4584:
	.section	.text$_ZN3Div3RunIfEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3Mul3RunIfEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN3Mul3RunIfEEvPhRj
	.def	_ZN3Mul3RunIfEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3Mul3RunIfEEvPhRj
_ZN3Mul3RunIfEEvPhRj:
.LFB4578:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %rcx
	movd	(%rcx), %xmm0
	mulss	(%r9), %xmm0
	cmpb	$15, %al
	ja	.L483
	movzbl	%al, %eax
	leaq	.L485(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L485:
	.long	.L500-.L485
	.long	.L499-.L485
	.long	.L498-.L485
	.long	.L497-.L485
	.long	.L496-.L485
	.long	.L495-.L485
	.long	.L494-.L485
	.long	.L493-.L485
	.long	.L492-.L485
	.long	.L491-.L485
	.long	.L490-.L485
	.long	.L489-.L485
	.long	.L488-.L485
	.long	.L487-.L485
	.long	.L486-.L485
	.long	.L484-.L485
	.section	.text$_ZN3Mul3RunIfEEvPhRj,"x"
	.linkonce discard
.L500:
	movd	%xmm0, %eax
	movb	%al, regByte1Number1(%rip)
.L501:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L499:
	movd	%xmm0, %eax
	movb	%al, regByte1Number2(%rip)
	jmp	.L501
.L498:
	movd	%xmm0, %eax
	movb	%al, regByte1Number3(%rip)
	jmp	.L501
.L497:
	movd	%xmm0, %eax
	movb	%al, regByte1Number4(%rip)
	jmp	.L501
.L496:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L501
.L495:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L501
.L494:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L501
.L493:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L501
.L492:
	movss	%xmm0, regByte4Number1(%rip)
	jmp	.L501
.L491:
	movss	%xmm0, regByte4Number2(%rip)
	jmp	.L501
.L490:
	movss	%xmm0, regByte4Number3(%rip)
	jmp	.L501
.L489:
	movss	%xmm0, regByte4Number4(%rip)
	jmp	.L501
.L488:
	movss	%xmm0, 44(%rsp)
	movq	44(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L501
.L487:
	movss	%xmm0, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L501
.L486:
	movss	%xmm0, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L501
.L484:
	movss	%xmm0, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L501
.L483:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4578:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4578-.LLSDACSB4578
.LLSDACSB4578:
.LLSDACSE4578:
	.section	.text$_ZN3Mul3RunIfEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3Sub3RunIfEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN3Sub3RunIfEEvPhRj
	.def	_ZN3Sub3RunIfEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3Sub3RunIfEEvPhRj
_ZN3Sub3RunIfEEvPhRj:
.LFB4572:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movd	(%r9), %xmm0
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %rcx
	subss	(%rcx), %xmm0
	cmpb	$15, %al
	ja	.L503
	movzbl	%al, %eax
	leaq	.L505(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L505:
	.long	.L520-.L505
	.long	.L519-.L505
	.long	.L518-.L505
	.long	.L517-.L505
	.long	.L516-.L505
	.long	.L515-.L505
	.long	.L514-.L505
	.long	.L513-.L505
	.long	.L512-.L505
	.long	.L511-.L505
	.long	.L510-.L505
	.long	.L509-.L505
	.long	.L508-.L505
	.long	.L507-.L505
	.long	.L506-.L505
	.long	.L504-.L505
	.section	.text$_ZN3Sub3RunIfEEvPhRj,"x"
	.linkonce discard
.L520:
	movd	%xmm0, %eax
	movb	%al, regByte1Number1(%rip)
.L521:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L519:
	movd	%xmm0, %eax
	movb	%al, regByte1Number2(%rip)
	jmp	.L521
.L518:
	movd	%xmm0, %eax
	movb	%al, regByte1Number3(%rip)
	jmp	.L521
.L517:
	movd	%xmm0, %eax
	movb	%al, regByte1Number4(%rip)
	jmp	.L521
.L516:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L521
.L515:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L521
.L514:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L521
.L513:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L521
.L512:
	movss	%xmm0, regByte4Number1(%rip)
	jmp	.L521
.L511:
	movss	%xmm0, regByte4Number2(%rip)
	jmp	.L521
.L510:
	movss	%xmm0, regByte4Number3(%rip)
	jmp	.L521
.L509:
	movss	%xmm0, regByte4Number4(%rip)
	jmp	.L521
.L508:
	movss	%xmm0, 44(%rsp)
	movq	44(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L521
.L507:
	movss	%xmm0, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L521
.L506:
	movss	%xmm0, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L521
.L504:
	movss	%xmm0, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L521
.L503:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4572:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4572-.LLSDACSB4572
.LLSDACSB4572:
.LLSDACSE4572:
	.section	.text$_ZN3Sub3RunIfEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3Add3RunIfEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN3Add3RunIfEEvPhRj
	.def	_ZN3Add3RunIfEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3Add3RunIfEEvPhRj
_ZN3Add3RunIfEEvPhRj:
.LFB4566:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %rcx
	movd	(%rcx), %xmm0
	addss	(%r9), %xmm0
	cmpb	$15, %al
	ja	.L523
	movzbl	%al, %eax
	leaq	.L525(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L525:
	.long	.L540-.L525
	.long	.L539-.L525
	.long	.L538-.L525
	.long	.L537-.L525
	.long	.L536-.L525
	.long	.L535-.L525
	.long	.L534-.L525
	.long	.L533-.L525
	.long	.L532-.L525
	.long	.L531-.L525
	.long	.L530-.L525
	.long	.L529-.L525
	.long	.L528-.L525
	.long	.L527-.L525
	.long	.L526-.L525
	.long	.L524-.L525
	.section	.text$_ZN3Add3RunIfEEvPhRj,"x"
	.linkonce discard
.L540:
	movd	%xmm0, %eax
	movb	%al, regByte1Number1(%rip)
.L541:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L539:
	movd	%xmm0, %eax
	movb	%al, regByte1Number2(%rip)
	jmp	.L541
.L538:
	movd	%xmm0, %eax
	movb	%al, regByte1Number3(%rip)
	jmp	.L541
.L537:
	movd	%xmm0, %eax
	movb	%al, regByte1Number4(%rip)
	jmp	.L541
.L536:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L541
.L535:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L541
.L534:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L541
.L533:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L541
.L532:
	movss	%xmm0, regByte4Number1(%rip)
	jmp	.L541
.L531:
	movss	%xmm0, regByte4Number2(%rip)
	jmp	.L541
.L530:
	movss	%xmm0, regByte4Number3(%rip)
	jmp	.L541
.L529:
	movss	%xmm0, regByte4Number4(%rip)
	jmp	.L541
.L528:
	movss	%xmm0, 44(%rsp)
	movq	44(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L541
.L527:
	movss	%xmm0, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L541
.L526:
	movss	%xmm0, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L541
.L524:
	movss	%xmm0, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L541
.L523:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4566:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4566-.LLSDACSB4566
.LLSDACSB4566:
.LLSDACSE4566:
	.section	.text$_ZN3Add3RunIfEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN2TT3RunIfhEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN2TT3RunIfhEEvPhRj
	.def	_ZN2TT3RunIfhEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2TT3RunIfhEEvPhRj
_ZN2TT3RunIfhEEvPhRj:
.LFB4656:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	cvttss2sil	(%rcx), %r8d
	cmpb	$15, %al
	ja	.L543
	movzbl	%al, %eax
	leaq	.L545(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L545:
	.long	.L560-.L545
	.long	.L559-.L545
	.long	.L558-.L545
	.long	.L557-.L545
	.long	.L556-.L545
	.long	.L555-.L545
	.long	.L554-.L545
	.long	.L553-.L545
	.long	.L552-.L545
	.long	.L551-.L545
	.long	.L550-.L545
	.long	.L549-.L545
	.long	.L548-.L545
	.long	.L547-.L545
	.long	.L546-.L545
	.long	.L544-.L545
	.section	.text$_ZN2TT3RunIfhEEvPhRj,"x"
	.linkonce discard
.L560:
	movb	%r8b, regByte1Number1(%rip)
.L561:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L559:
	movb	%r8b, regByte1Number2(%rip)
	jmp	.L561
.L558:
	movb	%r8b, regByte1Number3(%rip)
	jmp	.L561
.L557:
	movb	%r8b, regByte1Number4(%rip)
	jmp	.L561
.L556:
	movb	%r8b, 47(%rsp)
	movzwl	47(%rsp), %eax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L561
.L555:
	movb	%r8b, 46(%rsp)
	movzwl	46(%rsp), %eax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L561
.L554:
	movb	%r8b, 45(%rsp)
	movzwl	45(%rsp), %eax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L561
.L553:
	movb	%r8b, 44(%rsp)
	movzwl	44(%rsp), %eax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L561
.L552:
	movb	%r8b, 43(%rsp)
	movl	43(%rsp), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L561
.L551:
	movb	%r8b, 42(%rsp)
	movl	42(%rsp), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L561
.L550:
	movb	%r8b, 41(%rsp)
	movl	41(%rsp), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L561
.L549:
	movb	%r8b, 40(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L561
.L548:
	movb	%r8b, 39(%rsp)
	movq	39(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L561
.L547:
	movb	%r8b, 38(%rsp)
	movq	38(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L561
.L546:
	movb	%r8b, 37(%rsp)
	movq	37(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L561
.L544:
	movb	%r8b, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L561
.L543:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4656:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4656-.LLSDACSB4656
.LLSDACSB4656:
.LLSDACSE4656:
	.section	.text$_ZN2TT3RunIfhEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN2TT3RunIftEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN2TT3RunIftEEvPhRj
	.def	_ZN2TT3RunIftEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2TT3RunIftEEvPhRj
_ZN2TT3RunIftEEvPhRj:
.LFB4657:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	cvttss2sil	(%rcx), %r8d
	cmpb	$15, %al
	ja	.L563
	movzbl	%al, %eax
	leaq	.L565(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L565:
	.long	.L580-.L565
	.long	.L579-.L565
	.long	.L578-.L565
	.long	.L577-.L565
	.long	.L576-.L565
	.long	.L575-.L565
	.long	.L574-.L565
	.long	.L573-.L565
	.long	.L572-.L565
	.long	.L571-.L565
	.long	.L570-.L565
	.long	.L569-.L565
	.long	.L568-.L565
	.long	.L567-.L565
	.long	.L566-.L565
	.long	.L564-.L565
	.section	.text$_ZN2TT3RunIftEEvPhRj,"x"
	.linkonce discard
.L580:
	movb	%r8b, regByte1Number1(%rip)
.L581:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L579:
	movb	%r8b, regByte1Number2(%rip)
	jmp	.L581
.L578:
	movb	%r8b, regByte1Number3(%rip)
	jmp	.L581
.L577:
	movb	%r8b, regByte1Number4(%rip)
	jmp	.L581
.L576:
	movw	%r8w, regByte2Number1(%rip)
	jmp	.L581
.L575:
	movw	%r8w, regByte2Number2(%rip)
	jmp	.L581
.L574:
	movw	%r8w, regByte2Number3(%rip)
	jmp	.L581
.L573:
	movw	%r8w, regByte2Number4(%rip)
	jmp	.L581
.L572:
	movw	%r8w, 46(%rsp)
	movl	46(%rsp), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L581
.L571:
	movw	%r8w, 44(%rsp)
	movl	44(%rsp), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L581
.L570:
	movw	%r8w, 42(%rsp)
	movl	42(%rsp), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L581
.L569:
	movw	%r8w, 40(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L581
.L568:
	movw	%r8w, 38(%rsp)
	movq	38(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L581
.L567:
	movw	%r8w, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L581
.L566:
	movw	%r8w, 34(%rsp)
	movq	34(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L581
.L564:
	movw	%r8w, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L581
.L563:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4657:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4657-.LLSDACSB4657
.LLSDACSB4657:
.LLSDACSE4657:
	.section	.text$_ZN2TT3RunIftEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN2TT3RunIfjEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN2TT3RunIfjEEvPhRj
	.def	_ZN2TT3RunIfjEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2TT3RunIfjEEvPhRj
_ZN2TT3RunIfjEEvPhRj:
.LFB4658:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	cvttss2siq	(%rcx), %r8
	cmpb	$15, %al
	ja	.L583
	movzbl	%al, %eax
	leaq	.L585(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L585:
	.long	.L600-.L585
	.long	.L599-.L585
	.long	.L598-.L585
	.long	.L597-.L585
	.long	.L596-.L585
	.long	.L595-.L585
	.long	.L594-.L585
	.long	.L593-.L585
	.long	.L592-.L585
	.long	.L591-.L585
	.long	.L590-.L585
	.long	.L589-.L585
	.long	.L588-.L585
	.long	.L587-.L585
	.long	.L586-.L585
	.long	.L584-.L585
	.section	.text$_ZN2TT3RunIfjEEvPhRj,"x"
	.linkonce discard
.L600:
	movb	%r8b, regByte1Number1(%rip)
.L601:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L599:
	movb	%r8b, regByte1Number2(%rip)
	jmp	.L601
.L598:
	movb	%r8b, regByte1Number3(%rip)
	jmp	.L601
.L597:
	movb	%r8b, regByte1Number4(%rip)
	jmp	.L601
.L596:
	movw	%r8w, regByte2Number1(%rip)
	jmp	.L601
.L595:
	movw	%r8w, regByte2Number2(%rip)
	jmp	.L601
.L594:
	movw	%r8w, regByte2Number3(%rip)
	jmp	.L601
.L593:
	movw	%r8w, regByte2Number4(%rip)
	jmp	.L601
.L592:
	movl	%r8d, regByte4Number1(%rip)
	jmp	.L601
.L591:
	movl	%r8d, regByte4Number2(%rip)
	jmp	.L601
.L590:
	movl	%r8d, regByte4Number3(%rip)
	jmp	.L601
.L589:
	movl	%r8d, regByte4Number4(%rip)
	jmp	.L601
.L588:
	movl	%r8d, 44(%rsp)
	movq	44(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L601
.L587:
	movl	%r8d, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L601
.L586:
	movl	%r8d, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L601
.L584:
	movl	%r8d, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L601
.L583:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4658:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4658-.LLSDACSB4658
.LLSDACSB4658:
.LLSDACSE4658:
	.section	.text$_ZN2TT3RunIfjEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN2TT3RunIfyEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN2TT3RunIfyEEvPhRj
	.def	_ZN2TT3RunIfyEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2TT3RunIfyEEvPhRj
_ZN2TT3RunIfyEEvPhRj:
.LFB4659:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	movd	(%rcx), %xmm0
	comiss	.LC4(%rip), %xmm0
	jnb	.L603
	cvttss2siq	%xmm0, %r8
.L604:
	cmpb	$15, %al
	ja	.L605
	movzbl	%al, %eax
	leaq	.L607(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L607:
	.long	.L622-.L607
	.long	.L621-.L607
	.long	.L620-.L607
	.long	.L619-.L607
	.long	.L618-.L607
	.long	.L617-.L607
	.long	.L616-.L607
	.long	.L615-.L607
	.long	.L614-.L607
	.long	.L613-.L607
	.long	.L612-.L607
	.long	.L611-.L607
	.long	.L610-.L607
	.long	.L609-.L607
	.long	.L608-.L607
	.long	.L606-.L607
	.section	.text$_ZN2TT3RunIfyEEvPhRj,"x"
	.linkonce discard
.L603:
	subss	.LC4(%rip), %xmm0
	cvttss2siq	%xmm0, %r8
	btcq	$63, %r8
	jmp	.L604
.L622:
	movb	%r8b, regByte1Number1(%rip)
.L623:
	addl	$1, (%rdx)
	addq	$40, %rsp
	ret
.L621:
	movb	%r8b, regByte1Number2(%rip)
	jmp	.L623
.L620:
	movb	%r8b, regByte1Number3(%rip)
	jmp	.L623
.L619:
	movb	%r8b, regByte1Number4(%rip)
	jmp	.L623
.L618:
	movw	%r8w, regByte2Number1(%rip)
	jmp	.L623
.L617:
	movw	%r8w, regByte2Number2(%rip)
	jmp	.L623
.L616:
	movw	%r8w, regByte2Number3(%rip)
	jmp	.L623
.L615:
	movw	%r8w, regByte2Number4(%rip)
	jmp	.L623
.L614:
	movl	%r8d, regByte4Number1(%rip)
	jmp	.L623
.L613:
	movl	%r8d, regByte4Number2(%rip)
	jmp	.L623
.L612:
	movl	%r8d, regByte4Number3(%rip)
	jmp	.L623
.L611:
	movl	%r8d, regByte4Number4(%rip)
	jmp	.L623
.L610:
	movq	%r8, regByte8Number1(%rip)
	jmp	.L623
.L609:
	movq	%r8, regByte8Number2(%rip)
	jmp	.L623
.L608:
	movq	%r8, regByte8Number3(%rip)
	jmp	.L623
.L606:
	movq	%r8, regByte8Number4(%rip)
	jmp	.L623
.L605:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4659:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4659-.LLSDACSB4659
.LLSDACSB4659:
.LLSDACSE4659:
	.section	.text$_ZN2TT3RunIfyEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN2TT3RunIffEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN2TT3RunIffEEvPhRj
	.def	_ZN2TT3RunIffEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2TT3RunIffEEvPhRj
_ZN2TT3RunIffEEvPhRj:
.LFB4660:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	movl	(%rcx), %r8d
	cmpb	$15, %al
	ja	.L625
	movzbl	%al, %eax
	leaq	.L627(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L627:
	.long	.L642-.L627
	.long	.L641-.L627
	.long	.L640-.L627
	.long	.L639-.L627
	.long	.L638-.L627
	.long	.L637-.L627
	.long	.L636-.L627
	.long	.L635-.L627
	.long	.L634-.L627
	.long	.L633-.L627
	.long	.L632-.L627
	.long	.L631-.L627
	.long	.L630-.L627
	.long	.L629-.L627
	.long	.L628-.L627
	.long	.L626-.L627
	.section	.text$_ZN2TT3RunIffEEvPhRj,"x"
	.linkonce discard
.L642:
	movb	%r8b, regByte1Number1(%rip)
.L643:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L641:
	movb	%r8b, regByte1Number2(%rip)
	jmp	.L643
.L640:
	movb	%r8b, regByte1Number3(%rip)
	jmp	.L643
.L639:
	movb	%r8b, regByte1Number4(%rip)
	jmp	.L643
.L638:
	movw	%r8w, regByte2Number1(%rip)
	jmp	.L643
.L637:
	movw	%r8w, regByte2Number2(%rip)
	jmp	.L643
.L636:
	movw	%r8w, regByte2Number3(%rip)
	jmp	.L643
.L635:
	movw	%r8w, regByte2Number4(%rip)
	jmp	.L643
.L634:
	movl	%r8d, regByte4Number1(%rip)
	jmp	.L643
.L633:
	movl	%r8d, regByte4Number2(%rip)
	jmp	.L643
.L632:
	movl	%r8d, regByte4Number3(%rip)
	jmp	.L643
.L631:
	movl	%r8d, regByte4Number4(%rip)
	jmp	.L643
.L630:
	movl	%r8d, 44(%rsp)
	movq	44(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L643
.L629:
	movl	%r8d, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L643
.L628:
	movl	%r8d, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L643
.L626:
	movl	%r8d, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L643
.L625:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4660:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4660-.LLSDACSB4660
.LLSDACSB4660:
.LLSDACSE4660:
	.section	.text$_ZN2TT3RunIffEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN10LogicalNot3RunIyEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN10LogicalNot3RunIyEEvPhRj
	.def	_ZN10LogicalNot3RunIyEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10LogicalNot3RunIyEEvPhRj
_ZN10LogicalNot3RunIyEEvPhRj:
.LFB4631:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	cmpq	$0, (%rcx)
	sete	%r8b
	sete	%r9b
	movzbl	%r9b, %r9d
	cmpb	$15, %al
	ja	.L645
	movzbl	%al, %eax
	leaq	.L647(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L647:
	.long	.L662-.L647
	.long	.L661-.L647
	.long	.L660-.L647
	.long	.L659-.L647
	.long	.L658-.L647
	.long	.L657-.L647
	.long	.L656-.L647
	.long	.L655-.L647
	.long	.L654-.L647
	.long	.L653-.L647
	.long	.L652-.L647
	.long	.L651-.L647
	.long	.L650-.L647
	.long	.L649-.L647
	.long	.L648-.L647
	.long	.L646-.L647
	.section	.text$_ZN10LogicalNot3RunIyEEvPhRj,"x"
	.linkonce discard
.L662:
	movb	%r8b, regByte1Number1(%rip)
.L663:
	addl	$1, (%rdx)
	addq	$40, %rsp
	ret
.L661:
	movb	%r8b, regByte1Number2(%rip)
	jmp	.L663
.L660:
	movb	%r8b, regByte1Number3(%rip)
	jmp	.L663
.L659:
	movb	%r8b, regByte1Number4(%rip)
	jmp	.L663
.L658:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number1(%rip)
	jmp	.L663
.L657:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number2(%rip)
	jmp	.L663
.L656:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number3(%rip)
	jmp	.L663
.L655:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number4(%rip)
	jmp	.L663
.L654:
	movzbl	%r8b, %r8d
	movl	%r8d, regByte4Number1(%rip)
	jmp	.L663
.L653:
	movzbl	%r8b, %r8d
	movl	%r8d, regByte4Number2(%rip)
	jmp	.L663
.L652:
	movzbl	%r8b, %r8d
	movl	%r8d, regByte4Number3(%rip)
	jmp	.L663
.L651:
	movzbl	%r8b, %r8d
	movl	%r8d, regByte4Number4(%rip)
	jmp	.L663
.L650:
	movq	%r9, regByte8Number1(%rip)
	jmp	.L663
.L649:
	movq	%r9, regByte8Number2(%rip)
	jmp	.L663
.L648:
	movq	%r9, regByte8Number3(%rip)
	jmp	.L663
.L646:
	movq	%r9, regByte8Number4(%rip)
	jmp	.L663
.L645:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4631:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4631-.LLSDACSB4631
.LLSDACSB4631:
.LLSDACSE4631:
	.section	.text$_ZN10LogicalNot3RunIyEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN9LogicalOr3RunIyEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN9LogicalOr3RunIyEEvPhRj
	.def	_ZN9LogicalOr3RunIyEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9LogicalOr3RunIyEEvPhRj
_ZN9LogicalOr3RunIyEEvPhRj:
.LFB4627:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %r8
	movq	(%r9), %rcx
	orq	(%r8), %rcx
	setne	%r8b
	setne	%r9b
	movzbl	%r9b, %r9d
	cmpb	$15, %al
	ja	.L665
	movzbl	%al, %eax
	leaq	.L667(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L667:
	.long	.L682-.L667
	.long	.L681-.L667
	.long	.L680-.L667
	.long	.L679-.L667
	.long	.L678-.L667
	.long	.L677-.L667
	.long	.L676-.L667
	.long	.L675-.L667
	.long	.L674-.L667
	.long	.L673-.L667
	.long	.L672-.L667
	.long	.L671-.L667
	.long	.L670-.L667
	.long	.L669-.L667
	.long	.L668-.L667
	.long	.L666-.L667
	.section	.text$_ZN9LogicalOr3RunIyEEvPhRj,"x"
	.linkonce discard
.L682:
	movb	%r8b, regByte1Number1(%rip)
.L683:
	addl	$1, (%rdx)
	addq	$40, %rsp
	ret
.L681:
	movb	%r8b, regByte1Number2(%rip)
	jmp	.L683
.L680:
	movb	%r8b, regByte1Number3(%rip)
	jmp	.L683
.L679:
	movb	%r8b, regByte1Number4(%rip)
	jmp	.L683
.L678:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number1(%rip)
	jmp	.L683
.L677:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number2(%rip)
	jmp	.L683
.L676:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number3(%rip)
	jmp	.L683
.L675:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number4(%rip)
	jmp	.L683
.L674:
	movzbl	%r8b, %r8d
	movl	%r8d, regByte4Number1(%rip)
	jmp	.L683
.L673:
	movzbl	%r8b, %r8d
	movl	%r8d, regByte4Number2(%rip)
	jmp	.L683
.L672:
	movzbl	%r8b, %r8d
	movl	%r8d, regByte4Number3(%rip)
	jmp	.L683
.L671:
	movzbl	%r8b, %r8d
	movl	%r8d, regByte4Number4(%rip)
	jmp	.L683
.L670:
	movq	%r9, regByte8Number1(%rip)
	jmp	.L683
.L669:
	movq	%r9, regByte8Number2(%rip)
	jmp	.L683
.L668:
	movq	%r9, regByte8Number3(%rip)
	jmp	.L683
.L666:
	movq	%r9, regByte8Number4(%rip)
	jmp	.L683
.L665:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4627:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4627-.LLSDACSB4627
.LLSDACSB4627:
.LLSDACSE4627:
	.section	.text$_ZN9LogicalOr3RunIyEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN10LogicalAnd3RunIyEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN10LogicalAnd3RunIyEEvPhRj
	.def	_ZN10LogicalAnd3RunIyEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10LogicalAnd3RunIyEEvPhRj
_ZN10LogicalAnd3RunIyEEvPhRj:
.LFB4623:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rdx, %r8
	movzbl	2(%rcx), %edx
	leaq	regTable(%rip), %r9
	movzbl	(%rcx), %eax
	movq	(%r9,%rax,8), %rax
	cmpq	$0, (%rax)
	setne	%al
	movzbl	1(%rcx), %ecx
	movq	(%r9,%rcx,8), %rcx
	cmpq	$0, (%rcx)
	setne	%cl
	andl	%ecx, %eax
	movzbl	%al, %r9d
	cmpb	$15, %dl
	ja	.L685
	movzbl	%dl, %edx
	leaq	.L687(%rip), %rcx
	movslq	(%rcx,%rdx,4), %rdx
	addq	%rcx, %rdx
	jmp	*%rdx
	.section .rdata,"dr"
	.align 4
.L687:
	.long	.L702-.L687
	.long	.L701-.L687
	.long	.L700-.L687
	.long	.L699-.L687
	.long	.L698-.L687
	.long	.L697-.L687
	.long	.L696-.L687
	.long	.L695-.L687
	.long	.L694-.L687
	.long	.L693-.L687
	.long	.L692-.L687
	.long	.L691-.L687
	.long	.L690-.L687
	.long	.L689-.L687
	.long	.L688-.L687
	.long	.L686-.L687
	.section	.text$_ZN10LogicalAnd3RunIyEEvPhRj,"x"
	.linkonce discard
.L702:
	movb	%al, regByte1Number1(%rip)
.L703:
	addl	$1, (%r8)
	addq	$40, %rsp
	ret
.L701:
	movb	%al, regByte1Number2(%rip)
	jmp	.L703
.L700:
	movb	%al, regByte1Number3(%rip)
	jmp	.L703
.L699:
	movb	%al, regByte1Number4(%rip)
	jmp	.L703
.L698:
	movzbl	%al, %eax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L703
.L697:
	movzbl	%al, %eax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L703
.L696:
	movzbl	%al, %eax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L703
.L695:
	movzbl	%al, %eax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L703
.L694:
	movzbl	%al, %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L703
.L693:
	movzbl	%al, %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L703
.L692:
	movzbl	%al, %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L703
.L691:
	movzbl	%al, %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L703
.L690:
	movq	%r9, regByte8Number1(%rip)
	jmp	.L703
.L689:
	movq	%r9, regByte8Number2(%rip)
	jmp	.L703
.L688:
	movq	%r9, regByte8Number3(%rip)
	jmp	.L703
.L686:
	movq	%r9, regByte8Number4(%rip)
	jmp	.L703
.L685:
	movzbl	%dl, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4623:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4623-.LLSDACSB4623
.LLSDACSB4623:
.LLSDACSE4623:
	.section	.text$_ZN10LogicalAnd3RunIyEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3Xor3RunIyEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN3Xor3RunIyEEvPhRj
	.def	_ZN3Xor3RunIyEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3Xor3RunIyEEvPhRj
_ZN3Xor3RunIyEEvPhRj:
.LFB4619:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %r8
	movq	(%r9), %rcx
	xorq	(%r8), %rcx
	cmpb	$15, %al
	ja	.L705
	movzbl	%al, %eax
	leaq	.L707(%rip), %r8
	movslq	(%r8,%rax,4), %rax
	addq	%r8, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L707:
	.long	.L722-.L707
	.long	.L721-.L707
	.long	.L720-.L707
	.long	.L719-.L707
	.long	.L718-.L707
	.long	.L717-.L707
	.long	.L716-.L707
	.long	.L715-.L707
	.long	.L714-.L707
	.long	.L713-.L707
	.long	.L712-.L707
	.long	.L711-.L707
	.long	.L710-.L707
	.long	.L709-.L707
	.long	.L708-.L707
	.long	.L706-.L707
	.section	.text$_ZN3Xor3RunIyEEvPhRj,"x"
	.linkonce discard
.L722:
	movb	%cl, regByte1Number1(%rip)
.L723:
	addl	$1, (%rdx)
	addq	$40, %rsp
	ret
.L721:
	movb	%cl, regByte1Number2(%rip)
	jmp	.L723
.L720:
	movb	%cl, regByte1Number3(%rip)
	jmp	.L723
.L719:
	movb	%cl, regByte1Number4(%rip)
	jmp	.L723
.L718:
	movw	%cx, regByte2Number1(%rip)
	jmp	.L723
.L717:
	movw	%cx, regByte2Number2(%rip)
	jmp	.L723
.L716:
	movw	%cx, regByte2Number3(%rip)
	jmp	.L723
.L715:
	movw	%cx, regByte2Number4(%rip)
	jmp	.L723
.L714:
	movl	%ecx, regByte4Number1(%rip)
	jmp	.L723
.L713:
	movl	%ecx, regByte4Number2(%rip)
	jmp	.L723
.L712:
	movl	%ecx, regByte4Number3(%rip)
	jmp	.L723
.L711:
	movl	%ecx, regByte4Number4(%rip)
	jmp	.L723
.L710:
	movq	%rcx, regByte8Number1(%rip)
	jmp	.L723
.L709:
	movq	%rcx, regByte8Number2(%rip)
	jmp	.L723
.L708:
	movq	%rcx, regByte8Number3(%rip)
	jmp	.L723
.L706:
	movq	%rcx, regByte8Number4(%rip)
	jmp	.L723
.L705:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4619:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4619-.LLSDACSB4619
.LLSDACSB4619:
.LLSDACSE4619:
	.section	.text$_ZN3Xor3RunIyEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3Not3RunIyEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN3Not3RunIyEEvPhRj
	.def	_ZN3Not3RunIyEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3Not3RunIyEEvPhRj
_ZN3Not3RunIyEEvPhRj:
.LFB4615:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	movq	(%rcx), %rcx
	notq	%rcx
	cmpb	$15, %al
	ja	.L725
	movzbl	%al, %eax
	leaq	.L727(%rip), %r8
	movslq	(%r8,%rax,4), %rax
	addq	%r8, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L727:
	.long	.L742-.L727
	.long	.L741-.L727
	.long	.L740-.L727
	.long	.L739-.L727
	.long	.L738-.L727
	.long	.L737-.L727
	.long	.L736-.L727
	.long	.L735-.L727
	.long	.L734-.L727
	.long	.L733-.L727
	.long	.L732-.L727
	.long	.L731-.L727
	.long	.L730-.L727
	.long	.L729-.L727
	.long	.L728-.L727
	.long	.L726-.L727
	.section	.text$_ZN3Not3RunIyEEvPhRj,"x"
	.linkonce discard
.L742:
	movb	%cl, regByte1Number1(%rip)
.L743:
	addl	$1, (%rdx)
	addq	$40, %rsp
	ret
.L741:
	movb	%cl, regByte1Number2(%rip)
	jmp	.L743
.L740:
	movb	%cl, regByte1Number3(%rip)
	jmp	.L743
.L739:
	movb	%cl, regByte1Number4(%rip)
	jmp	.L743
.L738:
	movw	%cx, regByte2Number1(%rip)
	jmp	.L743
.L737:
	movw	%cx, regByte2Number2(%rip)
	jmp	.L743
.L736:
	movw	%cx, regByte2Number3(%rip)
	jmp	.L743
.L735:
	movw	%cx, regByte2Number4(%rip)
	jmp	.L743
.L734:
	movl	%ecx, regByte4Number1(%rip)
	jmp	.L743
.L733:
	movl	%ecx, regByte4Number2(%rip)
	jmp	.L743
.L732:
	movl	%ecx, regByte4Number3(%rip)
	jmp	.L743
.L731:
	movl	%ecx, regByte4Number4(%rip)
	jmp	.L743
.L730:
	movq	%rcx, regByte8Number1(%rip)
	jmp	.L743
.L729:
	movq	%rcx, regByte8Number2(%rip)
	jmp	.L743
.L728:
	movq	%rcx, regByte8Number3(%rip)
	jmp	.L743
.L726:
	movq	%rcx, regByte8Number4(%rip)
	jmp	.L743
.L725:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4615:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4615-.LLSDACSB4615
.LLSDACSB4615:
.LLSDACSE4615:
	.section	.text$_ZN3Not3RunIyEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN2Or3RunIyEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN2Or3RunIyEEvPhRj
	.def	_ZN2Or3RunIyEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2Or3RunIyEEvPhRj
_ZN2Or3RunIyEEvPhRj:
.LFB4611:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %r8
	movq	(%r9), %rcx
	orq	(%r8), %rcx
	cmpb	$15, %al
	ja	.L745
	movzbl	%al, %eax
	leaq	.L747(%rip), %r8
	movslq	(%r8,%rax,4), %rax
	addq	%r8, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L747:
	.long	.L762-.L747
	.long	.L761-.L747
	.long	.L760-.L747
	.long	.L759-.L747
	.long	.L758-.L747
	.long	.L757-.L747
	.long	.L756-.L747
	.long	.L755-.L747
	.long	.L754-.L747
	.long	.L753-.L747
	.long	.L752-.L747
	.long	.L751-.L747
	.long	.L750-.L747
	.long	.L749-.L747
	.long	.L748-.L747
	.long	.L746-.L747
	.section	.text$_ZN2Or3RunIyEEvPhRj,"x"
	.linkonce discard
.L762:
	movb	%cl, regByte1Number1(%rip)
.L763:
	addl	$1, (%rdx)
	addq	$40, %rsp
	ret
.L761:
	movb	%cl, regByte1Number2(%rip)
	jmp	.L763
.L760:
	movb	%cl, regByte1Number3(%rip)
	jmp	.L763
.L759:
	movb	%cl, regByte1Number4(%rip)
	jmp	.L763
.L758:
	movw	%cx, regByte2Number1(%rip)
	jmp	.L763
.L757:
	movw	%cx, regByte2Number2(%rip)
	jmp	.L763
.L756:
	movw	%cx, regByte2Number3(%rip)
	jmp	.L763
.L755:
	movw	%cx, regByte2Number4(%rip)
	jmp	.L763
.L754:
	movl	%ecx, regByte4Number1(%rip)
	jmp	.L763
.L753:
	movl	%ecx, regByte4Number2(%rip)
	jmp	.L763
.L752:
	movl	%ecx, regByte4Number3(%rip)
	jmp	.L763
.L751:
	movl	%ecx, regByte4Number4(%rip)
	jmp	.L763
.L750:
	movq	%rcx, regByte8Number1(%rip)
	jmp	.L763
.L749:
	movq	%rcx, regByte8Number2(%rip)
	jmp	.L763
.L748:
	movq	%rcx, regByte8Number3(%rip)
	jmp	.L763
.L746:
	movq	%rcx, regByte8Number4(%rip)
	jmp	.L763
.L745:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4611:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4611-.LLSDACSB4611
.LLSDACSB4611:
.LLSDACSE4611:
	.section	.text$_ZN2Or3RunIyEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3And3RunIyEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN3And3RunIyEEvPhRj
	.def	_ZN3And3RunIyEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3And3RunIyEEvPhRj
_ZN3And3RunIyEEvPhRj:
.LFB4607:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %r8
	movq	(%r9), %rcx
	andq	(%r8), %rcx
	cmpb	$15, %al
	ja	.L765
	movzbl	%al, %eax
	leaq	.L767(%rip), %r8
	movslq	(%r8,%rax,4), %rax
	addq	%r8, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L767:
	.long	.L782-.L767
	.long	.L781-.L767
	.long	.L780-.L767
	.long	.L779-.L767
	.long	.L778-.L767
	.long	.L777-.L767
	.long	.L776-.L767
	.long	.L775-.L767
	.long	.L774-.L767
	.long	.L773-.L767
	.long	.L772-.L767
	.long	.L771-.L767
	.long	.L770-.L767
	.long	.L769-.L767
	.long	.L768-.L767
	.long	.L766-.L767
	.section	.text$_ZN3And3RunIyEEvPhRj,"x"
	.linkonce discard
.L782:
	movb	%cl, regByte1Number1(%rip)
.L783:
	addl	$1, (%rdx)
	addq	$40, %rsp
	ret
.L781:
	movb	%cl, regByte1Number2(%rip)
	jmp	.L783
.L780:
	movb	%cl, regByte1Number3(%rip)
	jmp	.L783
.L779:
	movb	%cl, regByte1Number4(%rip)
	jmp	.L783
.L778:
	movw	%cx, regByte2Number1(%rip)
	jmp	.L783
.L777:
	movw	%cx, regByte2Number2(%rip)
	jmp	.L783
.L776:
	movw	%cx, regByte2Number3(%rip)
	jmp	.L783
.L775:
	movw	%cx, regByte2Number4(%rip)
	jmp	.L783
.L774:
	movl	%ecx, regByte4Number1(%rip)
	jmp	.L783
.L773:
	movl	%ecx, regByte4Number2(%rip)
	jmp	.L783
.L772:
	movl	%ecx, regByte4Number3(%rip)
	jmp	.L783
.L771:
	movl	%ecx, regByte4Number4(%rip)
	jmp	.L783
.L770:
	movq	%rcx, regByte8Number1(%rip)
	jmp	.L783
.L769:
	movq	%rcx, regByte8Number2(%rip)
	jmp	.L783
.L768:
	movq	%rcx, regByte8Number3(%rip)
	jmp	.L783
.L766:
	movq	%rcx, regByte8Number4(%rip)
	jmp	.L783
.L765:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4607:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4607-.LLSDACSB4607
.LLSDACSB4607:
.LLSDACSE4607:
	.section	.text$_ZN3And3RunIyEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN5Equal3RunIyEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN5Equal3RunIyEEvPhRj
	.def	_ZN5Equal3RunIyEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Equal3RunIyEEvPhRj
_ZN5Equal3RunIyEEvPhRj:
.LFB4601:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %rcx
	movq	(%rcx), %rcx
	cmpq	%rcx, (%r9)
	sete	%r8b
	sete	%r9b
	movzbl	%r9b, %r9d
	cmpb	$15, %al
	ja	.L785
	movzbl	%al, %eax
	leaq	.L787(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L787:
	.long	.L802-.L787
	.long	.L801-.L787
	.long	.L800-.L787
	.long	.L799-.L787
	.long	.L798-.L787
	.long	.L797-.L787
	.long	.L796-.L787
	.long	.L795-.L787
	.long	.L794-.L787
	.long	.L793-.L787
	.long	.L792-.L787
	.long	.L791-.L787
	.long	.L790-.L787
	.long	.L789-.L787
	.long	.L788-.L787
	.long	.L786-.L787
	.section	.text$_ZN5Equal3RunIyEEvPhRj,"x"
	.linkonce discard
.L802:
	movb	%r8b, regByte1Number1(%rip)
.L803:
	addl	$1, (%rdx)
	addq	$40, %rsp
	ret
.L801:
	movb	%r8b, regByte1Number2(%rip)
	jmp	.L803
.L800:
	movb	%r8b, regByte1Number3(%rip)
	jmp	.L803
.L799:
	movb	%r8b, regByte1Number4(%rip)
	jmp	.L803
.L798:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number1(%rip)
	jmp	.L803
.L797:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number2(%rip)
	jmp	.L803
.L796:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number3(%rip)
	jmp	.L803
.L795:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number4(%rip)
	jmp	.L803
.L794:
	movzbl	%r8b, %r8d
	movl	%r8d, regByte4Number1(%rip)
	jmp	.L803
.L793:
	movzbl	%r8b, %r8d
	movl	%r8d, regByte4Number2(%rip)
	jmp	.L803
.L792:
	movzbl	%r8b, %r8d
	movl	%r8d, regByte4Number3(%rip)
	jmp	.L803
.L791:
	movzbl	%r8b, %r8d
	movl	%r8d, regByte4Number4(%rip)
	jmp	.L803
.L790:
	movq	%r9, regByte8Number1(%rip)
	jmp	.L803
.L789:
	movq	%r9, regByte8Number2(%rip)
	jmp	.L803
.L788:
	movq	%r9, regByte8Number3(%rip)
	jmp	.L803
.L786:
	movq	%r9, regByte8Number4(%rip)
	jmp	.L803
.L785:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4601:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4601-.LLSDACSB4601
.LLSDACSB4601:
.LLSDACSE4601:
	.section	.text$_ZN5Equal3RunIyEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN5Small3RunIyEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN5Small3RunIyEEvPhRj
	.def	_ZN5Small3RunIyEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Small3RunIyEEvPhRj
_ZN5Small3RunIyEEvPhRj:
.LFB4595:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %rcx
	movq	(%rcx), %rcx
	cmpq	%rcx, (%r9)
	setb	%r8b
	setb	%r9b
	movzbl	%r9b, %r9d
	cmpb	$15, %al
	ja	.L805
	movzbl	%al, %eax
	leaq	.L807(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L807:
	.long	.L822-.L807
	.long	.L821-.L807
	.long	.L820-.L807
	.long	.L819-.L807
	.long	.L818-.L807
	.long	.L817-.L807
	.long	.L816-.L807
	.long	.L815-.L807
	.long	.L814-.L807
	.long	.L813-.L807
	.long	.L812-.L807
	.long	.L811-.L807
	.long	.L810-.L807
	.long	.L809-.L807
	.long	.L808-.L807
	.long	.L806-.L807
	.section	.text$_ZN5Small3RunIyEEvPhRj,"x"
	.linkonce discard
.L822:
	movb	%r8b, regByte1Number1(%rip)
.L823:
	addl	$1, (%rdx)
	addq	$40, %rsp
	ret
.L821:
	movb	%r8b, regByte1Number2(%rip)
	jmp	.L823
.L820:
	movb	%r8b, regByte1Number3(%rip)
	jmp	.L823
.L819:
	movb	%r8b, regByte1Number4(%rip)
	jmp	.L823
.L818:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number1(%rip)
	jmp	.L823
.L817:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number2(%rip)
	jmp	.L823
.L816:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number3(%rip)
	jmp	.L823
.L815:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number4(%rip)
	jmp	.L823
.L814:
	movzbl	%r8b, %r8d
	movl	%r8d, regByte4Number1(%rip)
	jmp	.L823
.L813:
	movzbl	%r8b, %r8d
	movl	%r8d, regByte4Number2(%rip)
	jmp	.L823
.L812:
	movzbl	%r8b, %r8d
	movl	%r8d, regByte4Number3(%rip)
	jmp	.L823
.L811:
	movzbl	%r8b, %r8d
	movl	%r8d, regByte4Number4(%rip)
	jmp	.L823
.L810:
	movq	%r9, regByte8Number1(%rip)
	jmp	.L823
.L809:
	movq	%r9, regByte8Number2(%rip)
	jmp	.L823
.L808:
	movq	%r9, regByte8Number3(%rip)
	jmp	.L823
.L806:
	movq	%r9, regByte8Number4(%rip)
	jmp	.L823
.L805:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4595:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4595-.LLSDACSB4595
.LLSDACSB4595:
.LLSDACSE4595:
	.section	.text$_ZN5Small3RunIyEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3Big3RunIyEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN3Big3RunIyEEvPhRj
	.def	_ZN3Big3RunIyEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3Big3RunIyEEvPhRj
_ZN3Big3RunIyEEvPhRj:
.LFB4589:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %rcx
	movq	(%r9), %r10
	cmpq	%r10, (%rcx)
	setb	%r8b
	setb	%r9b
	movzbl	%r9b, %r9d
	cmpb	$15, %al
	ja	.L825
	movzbl	%al, %eax
	leaq	.L827(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L827:
	.long	.L842-.L827
	.long	.L841-.L827
	.long	.L840-.L827
	.long	.L839-.L827
	.long	.L838-.L827
	.long	.L837-.L827
	.long	.L836-.L827
	.long	.L835-.L827
	.long	.L834-.L827
	.long	.L833-.L827
	.long	.L832-.L827
	.long	.L831-.L827
	.long	.L830-.L827
	.long	.L829-.L827
	.long	.L828-.L827
	.long	.L826-.L827
	.section	.text$_ZN3Big3RunIyEEvPhRj,"x"
	.linkonce discard
.L842:
	movb	%r8b, regByte1Number1(%rip)
.L843:
	addl	$1, (%rdx)
	addq	$40, %rsp
	ret
.L841:
	movb	%r8b, regByte1Number2(%rip)
	jmp	.L843
.L840:
	movb	%r8b, regByte1Number3(%rip)
	jmp	.L843
.L839:
	movb	%r8b, regByte1Number4(%rip)
	jmp	.L843
.L838:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number1(%rip)
	jmp	.L843
.L837:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number2(%rip)
	jmp	.L843
.L836:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number3(%rip)
	jmp	.L843
.L835:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number4(%rip)
	jmp	.L843
.L834:
	movzbl	%r8b, %r8d
	movl	%r8d, regByte4Number1(%rip)
	jmp	.L843
.L833:
	movzbl	%r8b, %r8d
	movl	%r8d, regByte4Number2(%rip)
	jmp	.L843
.L832:
	movzbl	%r8b, %r8d
	movl	%r8d, regByte4Number3(%rip)
	jmp	.L843
.L831:
	movzbl	%r8b, %r8d
	movl	%r8d, regByte4Number4(%rip)
	jmp	.L843
.L830:
	movq	%r9, regByte8Number1(%rip)
	jmp	.L843
.L829:
	movq	%r9, regByte8Number2(%rip)
	jmp	.L843
.L828:
	movq	%r9, regByte8Number3(%rip)
	jmp	.L843
.L826:
	movq	%r9, regByte8Number4(%rip)
	jmp	.L843
.L825:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4589:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4589-.LLSDACSB4589
.LLSDACSB4589:
.LLSDACSE4589:
	.section	.text$_ZN3Big3RunIyEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3Div3RunIyEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN3Div3RunIyEEvPhRj
	.def	_ZN3Div3RunIyEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3Div3RunIyEEvPhRj
_ZN3Div3RunIyEEvPhRj:
.LFB4583:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rdx, %r9
	movzbl	2(%rcx), %r8d
	leaq	regTable(%rip), %rax
	movzbl	(%rcx), %edx
	movq	(%rax,%rdx,8), %r10
	movzbl	1(%rcx), %edx
	movq	(%rax,%rdx,8), %rcx
	movq	(%r10), %rax
	movl	$0, %edx
	divq	(%rcx)
	cmpb	$15, %r8b
	ja	.L845
	movzbl	%r8b, %r8d
	leaq	.L847(%rip), %rcx
	movslq	(%rcx,%r8,4), %rdx
	addq	%rcx, %rdx
	jmp	*%rdx
	.section .rdata,"dr"
	.align 4
.L847:
	.long	.L862-.L847
	.long	.L861-.L847
	.long	.L860-.L847
	.long	.L859-.L847
	.long	.L858-.L847
	.long	.L857-.L847
	.long	.L856-.L847
	.long	.L855-.L847
	.long	.L854-.L847
	.long	.L853-.L847
	.long	.L852-.L847
	.long	.L851-.L847
	.long	.L850-.L847
	.long	.L849-.L847
	.long	.L848-.L847
	.long	.L846-.L847
	.section	.text$_ZN3Div3RunIyEEvPhRj,"x"
	.linkonce discard
.L862:
	movb	%al, regByte1Number1(%rip)
.L863:
	addl	$1, (%r9)
	addq	$40, %rsp
	ret
.L861:
	movb	%al, regByte1Number2(%rip)
	jmp	.L863
.L860:
	movb	%al, regByte1Number3(%rip)
	jmp	.L863
.L859:
	movb	%al, regByte1Number4(%rip)
	jmp	.L863
.L858:
	movw	%ax, regByte2Number1(%rip)
	jmp	.L863
.L857:
	movw	%ax, regByte2Number2(%rip)
	jmp	.L863
.L856:
	movw	%ax, regByte2Number3(%rip)
	jmp	.L863
.L855:
	movw	%ax, regByte2Number4(%rip)
	jmp	.L863
.L854:
	movl	%eax, regByte4Number1(%rip)
	jmp	.L863
.L853:
	movl	%eax, regByte4Number2(%rip)
	jmp	.L863
.L852:
	movl	%eax, regByte4Number3(%rip)
	jmp	.L863
.L851:
	movl	%eax, regByte4Number4(%rip)
	jmp	.L863
.L850:
	movq	%rax, regByte8Number1(%rip)
	jmp	.L863
.L849:
	movq	%rax, regByte8Number2(%rip)
	jmp	.L863
.L848:
	movq	%rax, regByte8Number3(%rip)
	jmp	.L863
.L846:
	movq	%rax, regByte8Number4(%rip)
	jmp	.L863
.L845:
	movzbl	%r8b, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4583:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4583-.LLSDACSB4583
.LLSDACSB4583:
.LLSDACSE4583:
	.section	.text$_ZN3Div3RunIyEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3Mul3RunIyEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN3Mul3RunIyEEvPhRj
	.def	_ZN3Mul3RunIyEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3Mul3RunIyEEvPhRj
_ZN3Mul3RunIyEEvPhRj:
.LFB4577:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %r8
	movq	(%r9), %rcx
	imulq	(%r8), %rcx
	cmpb	$15, %al
	ja	.L865
	movzbl	%al, %eax
	leaq	.L867(%rip), %r8
	movslq	(%r8,%rax,4), %rax
	addq	%r8, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L867:
	.long	.L882-.L867
	.long	.L881-.L867
	.long	.L880-.L867
	.long	.L879-.L867
	.long	.L878-.L867
	.long	.L877-.L867
	.long	.L876-.L867
	.long	.L875-.L867
	.long	.L874-.L867
	.long	.L873-.L867
	.long	.L872-.L867
	.long	.L871-.L867
	.long	.L870-.L867
	.long	.L869-.L867
	.long	.L868-.L867
	.long	.L866-.L867
	.section	.text$_ZN3Mul3RunIyEEvPhRj,"x"
	.linkonce discard
.L882:
	movb	%cl, regByte1Number1(%rip)
.L883:
	addl	$1, (%rdx)
	addq	$40, %rsp
	ret
.L881:
	movb	%cl, regByte1Number2(%rip)
	jmp	.L883
.L880:
	movb	%cl, regByte1Number3(%rip)
	jmp	.L883
.L879:
	movb	%cl, regByte1Number4(%rip)
	jmp	.L883
.L878:
	movw	%cx, regByte2Number1(%rip)
	jmp	.L883
.L877:
	movw	%cx, regByte2Number2(%rip)
	jmp	.L883
.L876:
	movw	%cx, regByte2Number3(%rip)
	jmp	.L883
.L875:
	movw	%cx, regByte2Number4(%rip)
	jmp	.L883
.L874:
	movl	%ecx, regByte4Number1(%rip)
	jmp	.L883
.L873:
	movl	%ecx, regByte4Number2(%rip)
	jmp	.L883
.L872:
	movl	%ecx, regByte4Number3(%rip)
	jmp	.L883
.L871:
	movl	%ecx, regByte4Number4(%rip)
	jmp	.L883
.L870:
	movq	%rcx, regByte8Number1(%rip)
	jmp	.L883
.L869:
	movq	%rcx, regByte8Number2(%rip)
	jmp	.L883
.L868:
	movq	%rcx, regByte8Number3(%rip)
	jmp	.L883
.L866:
	movq	%rcx, regByte8Number4(%rip)
	jmp	.L883
.L865:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4577:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4577-.LLSDACSB4577
.LLSDACSB4577:
.LLSDACSE4577:
	.section	.text$_ZN3Mul3RunIyEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3Sub3RunIyEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN3Sub3RunIyEEvPhRj
	.def	_ZN3Sub3RunIyEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3Sub3RunIyEEvPhRj
_ZN3Sub3RunIyEEvPhRj:
.LFB4571:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %r8
	movq	(%r9), %rcx
	subq	(%r8), %rcx
	cmpb	$15, %al
	ja	.L885
	movzbl	%al, %eax
	leaq	.L887(%rip), %r8
	movslq	(%r8,%rax,4), %rax
	addq	%r8, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L887:
	.long	.L902-.L887
	.long	.L901-.L887
	.long	.L900-.L887
	.long	.L899-.L887
	.long	.L898-.L887
	.long	.L897-.L887
	.long	.L896-.L887
	.long	.L895-.L887
	.long	.L894-.L887
	.long	.L893-.L887
	.long	.L892-.L887
	.long	.L891-.L887
	.long	.L890-.L887
	.long	.L889-.L887
	.long	.L888-.L887
	.long	.L886-.L887
	.section	.text$_ZN3Sub3RunIyEEvPhRj,"x"
	.linkonce discard
.L902:
	movb	%cl, regByte1Number1(%rip)
.L903:
	addl	$1, (%rdx)
	addq	$40, %rsp
	ret
.L901:
	movb	%cl, regByte1Number2(%rip)
	jmp	.L903
.L900:
	movb	%cl, regByte1Number3(%rip)
	jmp	.L903
.L899:
	movb	%cl, regByte1Number4(%rip)
	jmp	.L903
.L898:
	movw	%cx, regByte2Number1(%rip)
	jmp	.L903
.L897:
	movw	%cx, regByte2Number2(%rip)
	jmp	.L903
.L896:
	movw	%cx, regByte2Number3(%rip)
	jmp	.L903
.L895:
	movw	%cx, regByte2Number4(%rip)
	jmp	.L903
.L894:
	movl	%ecx, regByte4Number1(%rip)
	jmp	.L903
.L893:
	movl	%ecx, regByte4Number2(%rip)
	jmp	.L903
.L892:
	movl	%ecx, regByte4Number3(%rip)
	jmp	.L903
.L891:
	movl	%ecx, regByte4Number4(%rip)
	jmp	.L903
.L890:
	movq	%rcx, regByte8Number1(%rip)
	jmp	.L903
.L889:
	movq	%rcx, regByte8Number2(%rip)
	jmp	.L903
.L888:
	movq	%rcx, regByte8Number3(%rip)
	jmp	.L903
.L886:
	movq	%rcx, regByte8Number4(%rip)
	jmp	.L903
.L885:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4571:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4571-.LLSDACSB4571
.LLSDACSB4571:
.LLSDACSE4571:
	.section	.text$_ZN3Sub3RunIyEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3Add3RunIyEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN3Add3RunIyEEvPhRj
	.def	_ZN3Add3RunIyEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3Add3RunIyEEvPhRj
_ZN3Add3RunIyEEvPhRj:
.LFB4565:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %rcx
	movq	(%rcx), %rcx
	addq	(%r9), %rcx
	cmpb	$15, %al
	ja	.L905
	movzbl	%al, %eax
	leaq	.L907(%rip), %r8
	movslq	(%r8,%rax,4), %rax
	addq	%r8, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L907:
	.long	.L922-.L907
	.long	.L921-.L907
	.long	.L920-.L907
	.long	.L919-.L907
	.long	.L918-.L907
	.long	.L917-.L907
	.long	.L916-.L907
	.long	.L915-.L907
	.long	.L914-.L907
	.long	.L913-.L907
	.long	.L912-.L907
	.long	.L911-.L907
	.long	.L910-.L907
	.long	.L909-.L907
	.long	.L908-.L907
	.long	.L906-.L907
	.section	.text$_ZN3Add3RunIyEEvPhRj,"x"
	.linkonce discard
.L922:
	movb	%cl, regByte1Number1(%rip)
.L923:
	addl	$1, (%rdx)
	addq	$40, %rsp
	ret
.L921:
	movb	%cl, regByte1Number2(%rip)
	jmp	.L923
.L920:
	movb	%cl, regByte1Number3(%rip)
	jmp	.L923
.L919:
	movb	%cl, regByte1Number4(%rip)
	jmp	.L923
.L918:
	movw	%cx, regByte2Number1(%rip)
	jmp	.L923
.L917:
	movw	%cx, regByte2Number2(%rip)
	jmp	.L923
.L916:
	movw	%cx, regByte2Number3(%rip)
	jmp	.L923
.L915:
	movw	%cx, regByte2Number4(%rip)
	jmp	.L923
.L914:
	movl	%ecx, regByte4Number1(%rip)
	jmp	.L923
.L913:
	movl	%ecx, regByte4Number2(%rip)
	jmp	.L923
.L912:
	movl	%ecx, regByte4Number3(%rip)
	jmp	.L923
.L911:
	movl	%ecx, regByte4Number4(%rip)
	jmp	.L923
.L910:
	movq	%rcx, regByte8Number1(%rip)
	jmp	.L923
.L909:
	movq	%rcx, regByte8Number2(%rip)
	jmp	.L923
.L908:
	movq	%rcx, regByte8Number3(%rip)
	jmp	.L923
.L906:
	movq	%rcx, regByte8Number4(%rip)
	jmp	.L923
.L905:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4565:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4565-.LLSDACSB4565
.LLSDACSB4565:
.LLSDACSE4565:
	.section	.text$_ZN3Add3RunIyEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN2TT3RunIyhEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN2TT3RunIyhEEvPhRj
	.def	_ZN2TT3RunIyhEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2TT3RunIyhEEvPhRj
_ZN2TT3RunIyhEEvPhRj:
.LFB4650:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	movq	(%rcx), %r8
	cmpb	$15, %al
	ja	.L925
	movzbl	%al, %eax
	leaq	.L927(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L927:
	.long	.L942-.L927
	.long	.L941-.L927
	.long	.L940-.L927
	.long	.L939-.L927
	.long	.L938-.L927
	.long	.L937-.L927
	.long	.L936-.L927
	.long	.L935-.L927
	.long	.L934-.L927
	.long	.L933-.L927
	.long	.L932-.L927
	.long	.L931-.L927
	.long	.L930-.L927
	.long	.L929-.L927
	.long	.L928-.L927
	.long	.L926-.L927
	.section	.text$_ZN2TT3RunIyhEEvPhRj,"x"
	.linkonce discard
.L942:
	movb	%r8b, regByte1Number1(%rip)
.L943:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L941:
	movb	%r8b, regByte1Number2(%rip)
	jmp	.L943
.L940:
	movb	%r8b, regByte1Number3(%rip)
	jmp	.L943
.L939:
	movb	%r8b, regByte1Number4(%rip)
	jmp	.L943
.L938:
	movb	%r8b, 47(%rsp)
	movzwl	47(%rsp), %eax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L943
.L937:
	movb	%r8b, 46(%rsp)
	movzwl	46(%rsp), %eax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L943
.L936:
	movb	%r8b, 45(%rsp)
	movzwl	45(%rsp), %eax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L943
.L935:
	movb	%r8b, 44(%rsp)
	movzwl	44(%rsp), %eax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L943
.L934:
	movb	%r8b, 43(%rsp)
	movl	43(%rsp), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L943
.L933:
	movb	%r8b, 42(%rsp)
	movl	42(%rsp), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L943
.L932:
	movb	%r8b, 41(%rsp)
	movl	41(%rsp), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L943
.L931:
	movb	%r8b, 40(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L943
.L930:
	movb	%r8b, 39(%rsp)
	movq	39(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L943
.L929:
	movb	%r8b, 38(%rsp)
	movq	38(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L943
.L928:
	movb	%r8b, 37(%rsp)
	movq	37(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L943
.L926:
	movb	%r8b, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L943
.L925:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4650:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4650-.LLSDACSB4650
.LLSDACSB4650:
.LLSDACSE4650:
	.section	.text$_ZN2TT3RunIyhEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN2TT3RunIytEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN2TT3RunIytEEvPhRj
	.def	_ZN2TT3RunIytEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2TT3RunIytEEvPhRj
_ZN2TT3RunIytEEvPhRj:
.LFB4651:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	movq	(%rcx), %r8
	cmpb	$15, %al
	ja	.L945
	movzbl	%al, %eax
	leaq	.L947(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L947:
	.long	.L962-.L947
	.long	.L961-.L947
	.long	.L960-.L947
	.long	.L959-.L947
	.long	.L958-.L947
	.long	.L957-.L947
	.long	.L956-.L947
	.long	.L955-.L947
	.long	.L954-.L947
	.long	.L953-.L947
	.long	.L952-.L947
	.long	.L951-.L947
	.long	.L950-.L947
	.long	.L949-.L947
	.long	.L948-.L947
	.long	.L946-.L947
	.section	.text$_ZN2TT3RunIytEEvPhRj,"x"
	.linkonce discard
.L962:
	movb	%r8b, regByte1Number1(%rip)
.L963:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L961:
	movb	%r8b, regByte1Number2(%rip)
	jmp	.L963
.L960:
	movb	%r8b, regByte1Number3(%rip)
	jmp	.L963
.L959:
	movb	%r8b, regByte1Number4(%rip)
	jmp	.L963
.L958:
	movw	%r8w, regByte2Number1(%rip)
	jmp	.L963
.L957:
	movw	%r8w, regByte2Number2(%rip)
	jmp	.L963
.L956:
	movw	%r8w, regByte2Number3(%rip)
	jmp	.L963
.L955:
	movw	%r8w, regByte2Number4(%rip)
	jmp	.L963
.L954:
	movw	%r8w, 46(%rsp)
	movl	46(%rsp), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L963
.L953:
	movw	%r8w, 44(%rsp)
	movl	44(%rsp), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L963
.L952:
	movw	%r8w, 42(%rsp)
	movl	42(%rsp), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L963
.L951:
	movw	%r8w, 40(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L963
.L950:
	movw	%r8w, 38(%rsp)
	movq	38(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L963
.L949:
	movw	%r8w, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L963
.L948:
	movw	%r8w, 34(%rsp)
	movq	34(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L963
.L946:
	movw	%r8w, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L963
.L945:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4651:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4651-.LLSDACSB4651
.LLSDACSB4651:
.LLSDACSE4651:
	.section	.text$_ZN2TT3RunIytEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN2TT3RunIyjEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN2TT3RunIyjEEvPhRj
	.def	_ZN2TT3RunIyjEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2TT3RunIyjEEvPhRj
_ZN2TT3RunIyjEEvPhRj:
.LFB4652:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	movq	(%rcx), %r8
	cmpb	$15, %al
	ja	.L965
	movzbl	%al, %eax
	leaq	.L967(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L967:
	.long	.L982-.L967
	.long	.L981-.L967
	.long	.L980-.L967
	.long	.L979-.L967
	.long	.L978-.L967
	.long	.L977-.L967
	.long	.L976-.L967
	.long	.L975-.L967
	.long	.L974-.L967
	.long	.L973-.L967
	.long	.L972-.L967
	.long	.L971-.L967
	.long	.L970-.L967
	.long	.L969-.L967
	.long	.L968-.L967
	.long	.L966-.L967
	.section	.text$_ZN2TT3RunIyjEEvPhRj,"x"
	.linkonce discard
.L982:
	movb	%r8b, regByte1Number1(%rip)
.L983:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L981:
	movb	%r8b, regByte1Number2(%rip)
	jmp	.L983
.L980:
	movb	%r8b, regByte1Number3(%rip)
	jmp	.L983
.L979:
	movb	%r8b, regByte1Number4(%rip)
	jmp	.L983
.L978:
	movw	%r8w, regByte2Number1(%rip)
	jmp	.L983
.L977:
	movw	%r8w, regByte2Number2(%rip)
	jmp	.L983
.L976:
	movw	%r8w, regByte2Number3(%rip)
	jmp	.L983
.L975:
	movw	%r8w, regByte2Number4(%rip)
	jmp	.L983
.L974:
	movl	%r8d, regByte4Number1(%rip)
	jmp	.L983
.L973:
	movl	%r8d, regByte4Number2(%rip)
	jmp	.L983
.L972:
	movl	%r8d, regByte4Number3(%rip)
	jmp	.L983
.L971:
	movl	%r8d, regByte4Number4(%rip)
	jmp	.L983
.L970:
	movl	%r8d, 44(%rsp)
	movq	44(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L983
.L969:
	movl	%r8d, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L983
.L968:
	movl	%r8d, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L983
.L966:
	movl	%r8d, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L983
.L965:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4652:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4652-.LLSDACSB4652
.LLSDACSB4652:
.LLSDACSE4652:
	.section	.text$_ZN2TT3RunIyjEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN2TT3RunIyyEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN2TT3RunIyyEEvPhRj
	.def	_ZN2TT3RunIyyEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2TT3RunIyyEEvPhRj
_ZN2TT3RunIyyEEvPhRj:
.LFB4653:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	movq	(%rcx), %r8
	cmpb	$15, %al
	ja	.L985
	movzbl	%al, %eax
	leaq	.L987(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L987:
	.long	.L1002-.L987
	.long	.L1001-.L987
	.long	.L1000-.L987
	.long	.L999-.L987
	.long	.L998-.L987
	.long	.L997-.L987
	.long	.L996-.L987
	.long	.L995-.L987
	.long	.L994-.L987
	.long	.L993-.L987
	.long	.L992-.L987
	.long	.L991-.L987
	.long	.L990-.L987
	.long	.L989-.L987
	.long	.L988-.L987
	.long	.L986-.L987
	.section	.text$_ZN2TT3RunIyyEEvPhRj,"x"
	.linkonce discard
.L1002:
	movb	%r8b, regByte1Number1(%rip)
.L1003:
	addl	$1, (%rdx)
	addq	$40, %rsp
	ret
.L1001:
	movb	%r8b, regByte1Number2(%rip)
	jmp	.L1003
.L1000:
	movb	%r8b, regByte1Number3(%rip)
	jmp	.L1003
.L999:
	movb	%r8b, regByte1Number4(%rip)
	jmp	.L1003
.L998:
	movw	%r8w, regByte2Number1(%rip)
	jmp	.L1003
.L997:
	movw	%r8w, regByte2Number2(%rip)
	jmp	.L1003
.L996:
	movw	%r8w, regByte2Number3(%rip)
	jmp	.L1003
.L995:
	movw	%r8w, regByte2Number4(%rip)
	jmp	.L1003
.L994:
	movl	%r8d, regByte4Number1(%rip)
	jmp	.L1003
.L993:
	movl	%r8d, regByte4Number2(%rip)
	jmp	.L1003
.L992:
	movl	%r8d, regByte4Number3(%rip)
	jmp	.L1003
.L991:
	movl	%r8d, regByte4Number4(%rip)
	jmp	.L1003
.L990:
	movq	%r8, regByte8Number1(%rip)
	jmp	.L1003
.L989:
	movq	%r8, regByte8Number2(%rip)
	jmp	.L1003
.L988:
	movq	%r8, regByte8Number3(%rip)
	jmp	.L1003
.L986:
	movq	%r8, regByte8Number4(%rip)
	jmp	.L1003
.L985:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4653:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4653-.LLSDACSB4653
.LLSDACSB4653:
.LLSDACSE4653:
	.section	.text$_ZN2TT3RunIyyEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN2TT3RunIyfEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN2TT3RunIyfEEvPhRj
	.def	_ZN2TT3RunIyfEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2TT3RunIyfEEvPhRj
_ZN2TT3RunIyfEEvPhRj:
.LFB4654:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	js	.L1005
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rcx, %xmm0
.L1006:
	cmpb	$15, %al
	ja	.L1007
	movzbl	%al, %eax
	leaq	.L1009(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1009:
	.long	.L1024-.L1009
	.long	.L1023-.L1009
	.long	.L1022-.L1009
	.long	.L1021-.L1009
	.long	.L1020-.L1009
	.long	.L1019-.L1009
	.long	.L1018-.L1009
	.long	.L1017-.L1009
	.long	.L1016-.L1009
	.long	.L1015-.L1009
	.long	.L1014-.L1009
	.long	.L1013-.L1009
	.long	.L1012-.L1009
	.long	.L1011-.L1009
	.long	.L1010-.L1009
	.long	.L1008-.L1009
	.section	.text$_ZN2TT3RunIyfEEvPhRj,"x"
	.linkonce discard
.L1005:
	movq	%rcx, %r8
	shrq	%r8
	andl	$1, %ecx
	orq	%rcx, %r8
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%r8, %xmm0
	addss	%xmm0, %xmm0
	jmp	.L1006
.L1024:
	movd	%xmm0, %eax
	movb	%al, regByte1Number1(%rip)
.L1025:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L1023:
	movd	%xmm0, %eax
	movb	%al, regByte1Number2(%rip)
	jmp	.L1025
.L1022:
	movd	%xmm0, %eax
	movb	%al, regByte1Number3(%rip)
	jmp	.L1025
.L1021:
	movd	%xmm0, %eax
	movb	%al, regByte1Number4(%rip)
	jmp	.L1025
.L1020:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L1025
.L1019:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L1025
.L1018:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L1025
.L1017:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L1025
.L1016:
	movss	%xmm0, regByte4Number1(%rip)
	jmp	.L1025
.L1015:
	movss	%xmm0, regByte4Number2(%rip)
	jmp	.L1025
.L1014:
	movss	%xmm0, regByte4Number3(%rip)
	jmp	.L1025
.L1013:
	movss	%xmm0, regByte4Number4(%rip)
	jmp	.L1025
.L1012:
	movss	%xmm0, 44(%rsp)
	movq	44(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1025
.L1011:
	movss	%xmm0, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1025
.L1010:
	movss	%xmm0, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1025
.L1008:
	movss	%xmm0, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1025
.L1007:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4654:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4654-.LLSDACSB4654
.LLSDACSB4654:
.LLSDACSE4654:
	.section	.text$_ZN2TT3RunIyfEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN10LogicalNot3RunItEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN10LogicalNot3RunItEEvPhRj
	.def	_ZN10LogicalNot3RunItEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10LogicalNot3RunItEEvPhRj
_ZN10LogicalNot3RunItEEvPhRj:
.LFB4629:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	cmpw	$0, (%rcx)
	sete	%r9b
	sete	%r8b
	movzbl	%r8b, %r8d
	cmpb	$15, %al
	ja	.L1027
	movzbl	%al, %eax
	leaq	.L1029(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1029:
	.long	.L1044-.L1029
	.long	.L1043-.L1029
	.long	.L1042-.L1029
	.long	.L1041-.L1029
	.long	.L1040-.L1029
	.long	.L1039-.L1029
	.long	.L1038-.L1029
	.long	.L1037-.L1029
	.long	.L1036-.L1029
	.long	.L1035-.L1029
	.long	.L1034-.L1029
	.long	.L1033-.L1029
	.long	.L1032-.L1029
	.long	.L1031-.L1029
	.long	.L1030-.L1029
	.long	.L1028-.L1029
	.section	.text$_ZN10LogicalNot3RunItEEvPhRj,"x"
	.linkonce discard
.L1044:
	movb	%r9b, regByte1Number1(%rip)
.L1045:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L1043:
	movb	%r9b, regByte1Number2(%rip)
	jmp	.L1045
.L1042:
	movb	%r9b, regByte1Number3(%rip)
	jmp	.L1045
.L1041:
	movb	%r9b, regByte1Number4(%rip)
	jmp	.L1045
.L1040:
	movw	%r8w, regByte2Number1(%rip)
	jmp	.L1045
.L1039:
	movw	%r8w, regByte2Number2(%rip)
	jmp	.L1045
.L1038:
	movw	%r8w, regByte2Number3(%rip)
	jmp	.L1045
.L1037:
	movw	%r8w, regByte2Number4(%rip)
	jmp	.L1045
.L1036:
	movw	%r8w, 46(%rsp)
	movl	46(%rsp), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L1045
.L1035:
	movw	%r8w, 44(%rsp)
	movl	44(%rsp), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L1045
.L1034:
	movw	%r8w, 42(%rsp)
	movl	42(%rsp), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L1045
.L1033:
	movw	%r8w, 40(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L1045
.L1032:
	movw	%r8w, 38(%rsp)
	movq	38(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1045
.L1031:
	movw	%r8w, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1045
.L1030:
	movw	%r8w, 34(%rsp)
	movq	34(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1045
.L1028:
	movw	%r8w, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1045
.L1027:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4629:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4629-.LLSDACSB4629
.LLSDACSB4629:
.LLSDACSE4629:
	.section	.text$_ZN10LogicalNot3RunItEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN9LogicalOr3RunItEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN9LogicalOr3RunItEEvPhRj
	.def	_ZN9LogicalOr3RunItEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9LogicalOr3RunItEEvPhRj
_ZN9LogicalOr3RunItEEvPhRj:
.LFB4625:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %r8
	movzwl	(%r9), %ecx
	orw	(%r8), %cx
	setne	%r9b
	setne	%r8b
	movzbl	%r8b, %r8d
	cmpb	$15, %al
	ja	.L1047
	movzbl	%al, %eax
	leaq	.L1049(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1049:
	.long	.L1064-.L1049
	.long	.L1063-.L1049
	.long	.L1062-.L1049
	.long	.L1061-.L1049
	.long	.L1060-.L1049
	.long	.L1059-.L1049
	.long	.L1058-.L1049
	.long	.L1057-.L1049
	.long	.L1056-.L1049
	.long	.L1055-.L1049
	.long	.L1054-.L1049
	.long	.L1053-.L1049
	.long	.L1052-.L1049
	.long	.L1051-.L1049
	.long	.L1050-.L1049
	.long	.L1048-.L1049
	.section	.text$_ZN9LogicalOr3RunItEEvPhRj,"x"
	.linkonce discard
.L1064:
	movb	%r9b, regByte1Number1(%rip)
.L1065:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L1063:
	movb	%r9b, regByte1Number2(%rip)
	jmp	.L1065
.L1062:
	movb	%r9b, regByte1Number3(%rip)
	jmp	.L1065
.L1061:
	movb	%r9b, regByte1Number4(%rip)
	jmp	.L1065
.L1060:
	movw	%r8w, regByte2Number1(%rip)
	jmp	.L1065
.L1059:
	movw	%r8w, regByte2Number2(%rip)
	jmp	.L1065
.L1058:
	movw	%r8w, regByte2Number3(%rip)
	jmp	.L1065
.L1057:
	movw	%r8w, regByte2Number4(%rip)
	jmp	.L1065
.L1056:
	movw	%r8w, 46(%rsp)
	movl	46(%rsp), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L1065
.L1055:
	movw	%r8w, 44(%rsp)
	movl	44(%rsp), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L1065
.L1054:
	movw	%r8w, 42(%rsp)
	movl	42(%rsp), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L1065
.L1053:
	movw	%r8w, 40(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L1065
.L1052:
	movw	%r8w, 38(%rsp)
	movq	38(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1065
.L1051:
	movw	%r8w, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1065
.L1050:
	movw	%r8w, 34(%rsp)
	movq	34(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1065
.L1048:
	movw	%r8w, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1065
.L1047:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4625:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4625-.LLSDACSB4625
.LLSDACSB4625:
.LLSDACSE4625:
	.section	.text$_ZN9LogicalOr3RunItEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN10LogicalAnd3RunItEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN10LogicalAnd3RunItEEvPhRj
	.def	_ZN10LogicalAnd3RunItEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10LogicalAnd3RunItEEvPhRj
_ZN10LogicalAnd3RunItEEvPhRj:
.LFB4621:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r9
	movzbl	(%rcx), %r8d
	movq	(%r9,%r8,8), %r8
	cmpw	$0, (%r8)
	setne	%r8b
	movzbl	1(%rcx), %ecx
	movq	(%r9,%rcx,8), %rcx
	cmpw	$0, (%rcx)
	setne	%cl
	andl	%r8d, %ecx
	movzbl	%cl, %r9d
	cmpb	$15, %al
	ja	.L1067
	movzbl	%al, %eax
	leaq	.L1069(%rip), %r8
	movslq	(%r8,%rax,4), %rax
	addq	%r8, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1069:
	.long	.L1084-.L1069
	.long	.L1083-.L1069
	.long	.L1082-.L1069
	.long	.L1081-.L1069
	.long	.L1080-.L1069
	.long	.L1079-.L1069
	.long	.L1078-.L1069
	.long	.L1077-.L1069
	.long	.L1076-.L1069
	.long	.L1075-.L1069
	.long	.L1074-.L1069
	.long	.L1073-.L1069
	.long	.L1072-.L1069
	.long	.L1071-.L1069
	.long	.L1070-.L1069
	.long	.L1068-.L1069
	.section	.text$_ZN10LogicalAnd3RunItEEvPhRj,"x"
	.linkonce discard
.L1084:
	movb	%cl, regByte1Number1(%rip)
.L1085:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L1083:
	movb	%cl, regByte1Number2(%rip)
	jmp	.L1085
.L1082:
	movb	%cl, regByte1Number3(%rip)
	jmp	.L1085
.L1081:
	movb	%cl, regByte1Number4(%rip)
	jmp	.L1085
.L1080:
	movw	%r9w, regByte2Number1(%rip)
	jmp	.L1085
.L1079:
	movw	%r9w, regByte2Number2(%rip)
	jmp	.L1085
.L1078:
	movw	%r9w, regByte2Number3(%rip)
	jmp	.L1085
.L1077:
	movw	%r9w, regByte2Number4(%rip)
	jmp	.L1085
.L1076:
	movw	%r9w, 46(%rsp)
	movl	46(%rsp), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L1085
.L1075:
	movw	%r9w, 44(%rsp)
	movl	44(%rsp), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L1085
.L1074:
	movw	%r9w, 42(%rsp)
	movl	42(%rsp), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L1085
.L1073:
	movw	%r9w, 40(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L1085
.L1072:
	movw	%r9w, 38(%rsp)
	movq	38(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1085
.L1071:
	movw	%r9w, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1085
.L1070:
	movw	%r9w, 34(%rsp)
	movq	34(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1085
.L1068:
	movw	%r9w, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1085
.L1067:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4621:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4621-.LLSDACSB4621
.LLSDACSB4621:
.LLSDACSE4621:
	.section	.text$_ZN10LogicalAnd3RunItEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3Xor3RunItEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN3Xor3RunItEEvPhRj
	.def	_ZN3Xor3RunItEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3Xor3RunItEEvPhRj
_ZN3Xor3RunItEEvPhRj:
.LFB4617:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %r8
	movzwl	(%r9), %ecx
	xorw	(%r8), %cx
	cmpb	$15, %al
	ja	.L1087
	movzbl	%al, %eax
	leaq	.L1089(%rip), %r8
	movslq	(%r8,%rax,4), %rax
	addq	%r8, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1089:
	.long	.L1104-.L1089
	.long	.L1103-.L1089
	.long	.L1102-.L1089
	.long	.L1101-.L1089
	.long	.L1100-.L1089
	.long	.L1099-.L1089
	.long	.L1098-.L1089
	.long	.L1097-.L1089
	.long	.L1096-.L1089
	.long	.L1095-.L1089
	.long	.L1094-.L1089
	.long	.L1093-.L1089
	.long	.L1092-.L1089
	.long	.L1091-.L1089
	.long	.L1090-.L1089
	.long	.L1088-.L1089
	.section	.text$_ZN3Xor3RunItEEvPhRj,"x"
	.linkonce discard
.L1104:
	movb	%cl, regByte1Number1(%rip)
.L1105:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L1103:
	movb	%cl, regByte1Number2(%rip)
	jmp	.L1105
.L1102:
	movb	%cl, regByte1Number3(%rip)
	jmp	.L1105
.L1101:
	movb	%cl, regByte1Number4(%rip)
	jmp	.L1105
.L1100:
	movw	%cx, regByte2Number1(%rip)
	jmp	.L1105
.L1099:
	movw	%cx, regByte2Number2(%rip)
	jmp	.L1105
.L1098:
	movw	%cx, regByte2Number3(%rip)
	jmp	.L1105
.L1097:
	movw	%cx, regByte2Number4(%rip)
	jmp	.L1105
.L1096:
	movw	%cx, 46(%rsp)
	movl	46(%rsp), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L1105
.L1095:
	movw	%cx, 44(%rsp)
	movl	44(%rsp), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L1105
.L1094:
	movw	%cx, 42(%rsp)
	movl	42(%rsp), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L1105
.L1093:
	movw	%cx, 40(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L1105
.L1092:
	movw	%cx, 38(%rsp)
	movq	38(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1105
.L1091:
	movw	%cx, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1105
.L1090:
	movw	%cx, 34(%rsp)
	movq	34(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1105
.L1088:
	movw	%cx, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1105
.L1087:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4617:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4617-.LLSDACSB4617
.LLSDACSB4617:
.LLSDACSE4617:
	.section	.text$_ZN3Xor3RunItEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3Not3RunItEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN3Not3RunItEEvPhRj
	.def	_ZN3Not3RunItEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3Not3RunItEEvPhRj
_ZN3Not3RunItEEvPhRj:
.LFB4613:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	movzwl	(%rcx), %ecx
	notl	%ecx
	cmpb	$15, %al
	ja	.L1107
	movzbl	%al, %eax
	leaq	.L1109(%rip), %r8
	movslq	(%r8,%rax,4), %rax
	addq	%r8, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1109:
	.long	.L1124-.L1109
	.long	.L1123-.L1109
	.long	.L1122-.L1109
	.long	.L1121-.L1109
	.long	.L1120-.L1109
	.long	.L1119-.L1109
	.long	.L1118-.L1109
	.long	.L1117-.L1109
	.long	.L1116-.L1109
	.long	.L1115-.L1109
	.long	.L1114-.L1109
	.long	.L1113-.L1109
	.long	.L1112-.L1109
	.long	.L1111-.L1109
	.long	.L1110-.L1109
	.long	.L1108-.L1109
	.section	.text$_ZN3Not3RunItEEvPhRj,"x"
	.linkonce discard
.L1124:
	movb	%cl, regByte1Number1(%rip)
.L1125:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L1123:
	movb	%cl, regByte1Number2(%rip)
	jmp	.L1125
.L1122:
	movb	%cl, regByte1Number3(%rip)
	jmp	.L1125
.L1121:
	movb	%cl, regByte1Number4(%rip)
	jmp	.L1125
.L1120:
	movw	%cx, regByte2Number1(%rip)
	jmp	.L1125
.L1119:
	movw	%cx, regByte2Number2(%rip)
	jmp	.L1125
.L1118:
	movw	%cx, regByte2Number3(%rip)
	jmp	.L1125
.L1117:
	movw	%cx, regByte2Number4(%rip)
	jmp	.L1125
.L1116:
	movw	%cx, 46(%rsp)
	movl	46(%rsp), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L1125
.L1115:
	movw	%cx, 44(%rsp)
	movl	44(%rsp), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L1125
.L1114:
	movw	%cx, 42(%rsp)
	movl	42(%rsp), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L1125
.L1113:
	movw	%cx, 40(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L1125
.L1112:
	movw	%cx, 38(%rsp)
	movq	38(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1125
.L1111:
	movw	%cx, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1125
.L1110:
	movw	%cx, 34(%rsp)
	movq	34(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1125
.L1108:
	movw	%cx, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1125
.L1107:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4613:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4613-.LLSDACSB4613
.LLSDACSB4613:
.LLSDACSE4613:
	.section	.text$_ZN3Not3RunItEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN2Or3RunItEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN2Or3RunItEEvPhRj
	.def	_ZN2Or3RunItEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2Or3RunItEEvPhRj
_ZN2Or3RunItEEvPhRj:
.LFB4609:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %r8
	movzwl	(%r9), %ecx
	orw	(%r8), %cx
	cmpb	$15, %al
	ja	.L1127
	movzbl	%al, %eax
	leaq	.L1129(%rip), %r8
	movslq	(%r8,%rax,4), %rax
	addq	%r8, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1129:
	.long	.L1144-.L1129
	.long	.L1143-.L1129
	.long	.L1142-.L1129
	.long	.L1141-.L1129
	.long	.L1140-.L1129
	.long	.L1139-.L1129
	.long	.L1138-.L1129
	.long	.L1137-.L1129
	.long	.L1136-.L1129
	.long	.L1135-.L1129
	.long	.L1134-.L1129
	.long	.L1133-.L1129
	.long	.L1132-.L1129
	.long	.L1131-.L1129
	.long	.L1130-.L1129
	.long	.L1128-.L1129
	.section	.text$_ZN2Or3RunItEEvPhRj,"x"
	.linkonce discard
.L1144:
	movb	%cl, regByte1Number1(%rip)
.L1145:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L1143:
	movb	%cl, regByte1Number2(%rip)
	jmp	.L1145
.L1142:
	movb	%cl, regByte1Number3(%rip)
	jmp	.L1145
.L1141:
	movb	%cl, regByte1Number4(%rip)
	jmp	.L1145
.L1140:
	movw	%cx, regByte2Number1(%rip)
	jmp	.L1145
.L1139:
	movw	%cx, regByte2Number2(%rip)
	jmp	.L1145
.L1138:
	movw	%cx, regByte2Number3(%rip)
	jmp	.L1145
.L1137:
	movw	%cx, regByte2Number4(%rip)
	jmp	.L1145
.L1136:
	movw	%cx, 46(%rsp)
	movl	46(%rsp), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L1145
.L1135:
	movw	%cx, 44(%rsp)
	movl	44(%rsp), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L1145
.L1134:
	movw	%cx, 42(%rsp)
	movl	42(%rsp), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L1145
.L1133:
	movw	%cx, 40(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L1145
.L1132:
	movw	%cx, 38(%rsp)
	movq	38(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1145
.L1131:
	movw	%cx, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1145
.L1130:
	movw	%cx, 34(%rsp)
	movq	34(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1145
.L1128:
	movw	%cx, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1145
.L1127:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4609:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4609-.LLSDACSB4609
.LLSDACSB4609:
.LLSDACSE4609:
	.section	.text$_ZN2Or3RunItEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3And3RunItEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN3And3RunItEEvPhRj
	.def	_ZN3And3RunItEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3And3RunItEEvPhRj
_ZN3And3RunItEEvPhRj:
.LFB4605:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %r8
	movzwl	(%r9), %ecx
	andw	(%r8), %cx
	cmpb	$15, %al
	ja	.L1147
	movzbl	%al, %eax
	leaq	.L1149(%rip), %r8
	movslq	(%r8,%rax,4), %rax
	addq	%r8, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1149:
	.long	.L1164-.L1149
	.long	.L1163-.L1149
	.long	.L1162-.L1149
	.long	.L1161-.L1149
	.long	.L1160-.L1149
	.long	.L1159-.L1149
	.long	.L1158-.L1149
	.long	.L1157-.L1149
	.long	.L1156-.L1149
	.long	.L1155-.L1149
	.long	.L1154-.L1149
	.long	.L1153-.L1149
	.long	.L1152-.L1149
	.long	.L1151-.L1149
	.long	.L1150-.L1149
	.long	.L1148-.L1149
	.section	.text$_ZN3And3RunItEEvPhRj,"x"
	.linkonce discard
.L1164:
	movb	%cl, regByte1Number1(%rip)
.L1165:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L1163:
	movb	%cl, regByte1Number2(%rip)
	jmp	.L1165
.L1162:
	movb	%cl, regByte1Number3(%rip)
	jmp	.L1165
.L1161:
	movb	%cl, regByte1Number4(%rip)
	jmp	.L1165
.L1160:
	movw	%cx, regByte2Number1(%rip)
	jmp	.L1165
.L1159:
	movw	%cx, regByte2Number2(%rip)
	jmp	.L1165
.L1158:
	movw	%cx, regByte2Number3(%rip)
	jmp	.L1165
.L1157:
	movw	%cx, regByte2Number4(%rip)
	jmp	.L1165
.L1156:
	movw	%cx, 46(%rsp)
	movl	46(%rsp), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L1165
.L1155:
	movw	%cx, 44(%rsp)
	movl	44(%rsp), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L1165
.L1154:
	movw	%cx, 42(%rsp)
	movl	42(%rsp), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L1165
.L1153:
	movw	%cx, 40(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L1165
.L1152:
	movw	%cx, 38(%rsp)
	movq	38(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1165
.L1151:
	movw	%cx, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1165
.L1150:
	movw	%cx, 34(%rsp)
	movq	34(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1165
.L1148:
	movw	%cx, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1165
.L1147:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4605:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4605-.LLSDACSB4605
.LLSDACSB4605:
.LLSDACSE4605:
	.section	.text$_ZN3And3RunItEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN5Equal3RunItEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN5Equal3RunItEEvPhRj
	.def	_ZN5Equal3RunItEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Equal3RunItEEvPhRj
_ZN5Equal3RunItEEvPhRj:
.LFB4599:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %rcx
	movzwl	(%rcx), %ecx
	cmpw	%cx, (%r9)
	sete	%r9b
	sete	%r8b
	movzbl	%r8b, %r8d
	cmpb	$15, %al
	ja	.L1167
	movzbl	%al, %eax
	leaq	.L1169(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1169:
	.long	.L1184-.L1169
	.long	.L1183-.L1169
	.long	.L1182-.L1169
	.long	.L1181-.L1169
	.long	.L1180-.L1169
	.long	.L1179-.L1169
	.long	.L1178-.L1169
	.long	.L1177-.L1169
	.long	.L1176-.L1169
	.long	.L1175-.L1169
	.long	.L1174-.L1169
	.long	.L1173-.L1169
	.long	.L1172-.L1169
	.long	.L1171-.L1169
	.long	.L1170-.L1169
	.long	.L1168-.L1169
	.section	.text$_ZN5Equal3RunItEEvPhRj,"x"
	.linkonce discard
.L1184:
	movb	%r9b, regByte1Number1(%rip)
.L1185:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L1183:
	movb	%r9b, regByte1Number2(%rip)
	jmp	.L1185
.L1182:
	movb	%r9b, regByte1Number3(%rip)
	jmp	.L1185
.L1181:
	movb	%r9b, regByte1Number4(%rip)
	jmp	.L1185
.L1180:
	movw	%r8w, regByte2Number1(%rip)
	jmp	.L1185
.L1179:
	movw	%r8w, regByte2Number2(%rip)
	jmp	.L1185
.L1178:
	movw	%r8w, regByte2Number3(%rip)
	jmp	.L1185
.L1177:
	movw	%r8w, regByte2Number4(%rip)
	jmp	.L1185
.L1176:
	movw	%r8w, 46(%rsp)
	movl	46(%rsp), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L1185
.L1175:
	movw	%r8w, 44(%rsp)
	movl	44(%rsp), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L1185
.L1174:
	movw	%r8w, 42(%rsp)
	movl	42(%rsp), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L1185
.L1173:
	movw	%r8w, 40(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L1185
.L1172:
	movw	%r8w, 38(%rsp)
	movq	38(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1185
.L1171:
	movw	%r8w, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1185
.L1170:
	movw	%r8w, 34(%rsp)
	movq	34(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1185
.L1168:
	movw	%r8w, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1185
.L1167:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4599:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4599-.LLSDACSB4599
.LLSDACSB4599:
.LLSDACSE4599:
	.section	.text$_ZN5Equal3RunItEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN5Small3RunItEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN5Small3RunItEEvPhRj
	.def	_ZN5Small3RunItEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Small3RunItEEvPhRj
_ZN5Small3RunItEEvPhRj:
.LFB4593:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %rcx
	movzwl	(%rcx), %ecx
	cmpw	%cx, (%r9)
	setb	%r9b
	setb	%r8b
	movzbl	%r8b, %r8d
	cmpb	$15, %al
	ja	.L1187
	movzbl	%al, %eax
	leaq	.L1189(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1189:
	.long	.L1204-.L1189
	.long	.L1203-.L1189
	.long	.L1202-.L1189
	.long	.L1201-.L1189
	.long	.L1200-.L1189
	.long	.L1199-.L1189
	.long	.L1198-.L1189
	.long	.L1197-.L1189
	.long	.L1196-.L1189
	.long	.L1195-.L1189
	.long	.L1194-.L1189
	.long	.L1193-.L1189
	.long	.L1192-.L1189
	.long	.L1191-.L1189
	.long	.L1190-.L1189
	.long	.L1188-.L1189
	.section	.text$_ZN5Small3RunItEEvPhRj,"x"
	.linkonce discard
.L1204:
	movb	%r9b, regByte1Number1(%rip)
.L1205:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L1203:
	movb	%r9b, regByte1Number2(%rip)
	jmp	.L1205
.L1202:
	movb	%r9b, regByte1Number3(%rip)
	jmp	.L1205
.L1201:
	movb	%r9b, regByte1Number4(%rip)
	jmp	.L1205
.L1200:
	movw	%r8w, regByte2Number1(%rip)
	jmp	.L1205
.L1199:
	movw	%r8w, regByte2Number2(%rip)
	jmp	.L1205
.L1198:
	movw	%r8w, regByte2Number3(%rip)
	jmp	.L1205
.L1197:
	movw	%r8w, regByte2Number4(%rip)
	jmp	.L1205
.L1196:
	movw	%r8w, 46(%rsp)
	movl	46(%rsp), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L1205
.L1195:
	movw	%r8w, 44(%rsp)
	movl	44(%rsp), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L1205
.L1194:
	movw	%r8w, 42(%rsp)
	movl	42(%rsp), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L1205
.L1193:
	movw	%r8w, 40(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L1205
.L1192:
	movw	%r8w, 38(%rsp)
	movq	38(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1205
.L1191:
	movw	%r8w, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1205
.L1190:
	movw	%r8w, 34(%rsp)
	movq	34(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1205
.L1188:
	movw	%r8w, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1205
.L1187:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4593:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4593-.LLSDACSB4593
.LLSDACSB4593:
.LLSDACSE4593:
	.section	.text$_ZN5Small3RunItEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3Big3RunItEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN3Big3RunItEEvPhRj
	.def	_ZN3Big3RunItEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3Big3RunItEEvPhRj
_ZN3Big3RunItEEvPhRj:
.LFB4587:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %rcx
	movzwl	(%r9), %r10d
	cmpw	%r10w, (%rcx)
	setb	%r9b
	setb	%r8b
	movzbl	%r8b, %r8d
	cmpb	$15, %al
	ja	.L1207
	movzbl	%al, %eax
	leaq	.L1209(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1209:
	.long	.L1224-.L1209
	.long	.L1223-.L1209
	.long	.L1222-.L1209
	.long	.L1221-.L1209
	.long	.L1220-.L1209
	.long	.L1219-.L1209
	.long	.L1218-.L1209
	.long	.L1217-.L1209
	.long	.L1216-.L1209
	.long	.L1215-.L1209
	.long	.L1214-.L1209
	.long	.L1213-.L1209
	.long	.L1212-.L1209
	.long	.L1211-.L1209
	.long	.L1210-.L1209
	.long	.L1208-.L1209
	.section	.text$_ZN3Big3RunItEEvPhRj,"x"
	.linkonce discard
.L1224:
	movb	%r9b, regByte1Number1(%rip)
.L1225:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L1223:
	movb	%r9b, regByte1Number2(%rip)
	jmp	.L1225
.L1222:
	movb	%r9b, regByte1Number3(%rip)
	jmp	.L1225
.L1221:
	movb	%r9b, regByte1Number4(%rip)
	jmp	.L1225
.L1220:
	movw	%r8w, regByte2Number1(%rip)
	jmp	.L1225
.L1219:
	movw	%r8w, regByte2Number2(%rip)
	jmp	.L1225
.L1218:
	movw	%r8w, regByte2Number3(%rip)
	jmp	.L1225
.L1217:
	movw	%r8w, regByte2Number4(%rip)
	jmp	.L1225
.L1216:
	movw	%r8w, 46(%rsp)
	movl	46(%rsp), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L1225
.L1215:
	movw	%r8w, 44(%rsp)
	movl	44(%rsp), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L1225
.L1214:
	movw	%r8w, 42(%rsp)
	movl	42(%rsp), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L1225
.L1213:
	movw	%r8w, 40(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L1225
.L1212:
	movw	%r8w, 38(%rsp)
	movq	38(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1225
.L1211:
	movw	%r8w, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1225
.L1210:
	movw	%r8w, 34(%rsp)
	movq	34(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1225
.L1208:
	movw	%r8w, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1225
.L1207:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4587:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4587-.LLSDACSB4587
.LLSDACSB4587:
.LLSDACSE4587:
	.section	.text$_ZN3Big3RunItEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3Div3RunItEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN3Div3RunItEEvPhRj
	.def	_ZN3Div3RunItEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3Div3RunItEEvPhRj
_ZN3Div3RunItEEvPhRj:
.LFB4581:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	%rdx, %r9
	movzbl	2(%rcx), %r8d
	leaq	regTable(%rip), %rax
	movzbl	(%rcx), %edx
	movq	(%rax,%rdx,8), %r10
	movzbl	1(%rcx), %edx
	movq	(%rax,%rdx,8), %rcx
	movzwl	(%r10), %eax
	movl	$0, %edx
	divw	(%rcx)
	cmpb	$15, %r8b
	ja	.L1227
	movzbl	%r8b, %r8d
	leaq	.L1229(%rip), %rcx
	movslq	(%rcx,%r8,4), %rdx
	addq	%rcx, %rdx
	jmp	*%rdx
	.section .rdata,"dr"
	.align 4
.L1229:
	.long	.L1244-.L1229
	.long	.L1243-.L1229
	.long	.L1242-.L1229
	.long	.L1241-.L1229
	.long	.L1240-.L1229
	.long	.L1239-.L1229
	.long	.L1238-.L1229
	.long	.L1237-.L1229
	.long	.L1236-.L1229
	.long	.L1235-.L1229
	.long	.L1234-.L1229
	.long	.L1233-.L1229
	.long	.L1232-.L1229
	.long	.L1231-.L1229
	.long	.L1230-.L1229
	.long	.L1228-.L1229
	.section	.text$_ZN3Div3RunItEEvPhRj,"x"
	.linkonce discard
.L1244:
	movb	%al, regByte1Number1(%rip)
.L1245:
	addl	$1, (%r9)
	addq	$56, %rsp
	ret
.L1243:
	movb	%al, regByte1Number2(%rip)
	jmp	.L1245
.L1242:
	movb	%al, regByte1Number3(%rip)
	jmp	.L1245
.L1241:
	movb	%al, regByte1Number4(%rip)
	jmp	.L1245
.L1240:
	movw	%ax, regByte2Number1(%rip)
	jmp	.L1245
.L1239:
	movw	%ax, regByte2Number2(%rip)
	jmp	.L1245
.L1238:
	movw	%ax, regByte2Number3(%rip)
	jmp	.L1245
.L1237:
	movw	%ax, regByte2Number4(%rip)
	jmp	.L1245
.L1236:
	movw	%ax, 46(%rsp)
	movl	46(%rsp), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L1245
.L1235:
	movw	%ax, 44(%rsp)
	movl	44(%rsp), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L1245
.L1234:
	movw	%ax, 42(%rsp)
	movl	42(%rsp), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L1245
.L1233:
	movw	%ax, 40(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L1245
.L1232:
	movw	%ax, 38(%rsp)
	movq	38(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1245
.L1231:
	movw	%ax, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1245
.L1230:
	movw	%ax, 34(%rsp)
	movq	34(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1245
.L1228:
	movw	%ax, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1245
.L1227:
	movzbl	%r8b, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4581:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4581-.LLSDACSB4581
.LLSDACSB4581:
.LLSDACSE4581:
	.section	.text$_ZN3Div3RunItEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3Mul3RunItEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN3Mul3RunItEEvPhRj
	.def	_ZN3Mul3RunItEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3Mul3RunItEEvPhRj
_ZN3Mul3RunItEEvPhRj:
.LFB4575:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %r8
	movzwl	(%r9), %ecx
	imulw	(%r8), %cx
	cmpb	$15, %al
	ja	.L1247
	movzbl	%al, %eax
	leaq	.L1249(%rip), %r8
	movslq	(%r8,%rax,4), %rax
	addq	%r8, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1249:
	.long	.L1264-.L1249
	.long	.L1263-.L1249
	.long	.L1262-.L1249
	.long	.L1261-.L1249
	.long	.L1260-.L1249
	.long	.L1259-.L1249
	.long	.L1258-.L1249
	.long	.L1257-.L1249
	.long	.L1256-.L1249
	.long	.L1255-.L1249
	.long	.L1254-.L1249
	.long	.L1253-.L1249
	.long	.L1252-.L1249
	.long	.L1251-.L1249
	.long	.L1250-.L1249
	.long	.L1248-.L1249
	.section	.text$_ZN3Mul3RunItEEvPhRj,"x"
	.linkonce discard
.L1264:
	movb	%cl, regByte1Number1(%rip)
.L1265:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L1263:
	movb	%cl, regByte1Number2(%rip)
	jmp	.L1265
.L1262:
	movb	%cl, regByte1Number3(%rip)
	jmp	.L1265
.L1261:
	movb	%cl, regByte1Number4(%rip)
	jmp	.L1265
.L1260:
	movw	%cx, regByte2Number1(%rip)
	jmp	.L1265
.L1259:
	movw	%cx, regByte2Number2(%rip)
	jmp	.L1265
.L1258:
	movw	%cx, regByte2Number3(%rip)
	jmp	.L1265
.L1257:
	movw	%cx, regByte2Number4(%rip)
	jmp	.L1265
.L1256:
	movw	%cx, 46(%rsp)
	movl	46(%rsp), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L1265
.L1255:
	movw	%cx, 44(%rsp)
	movl	44(%rsp), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L1265
.L1254:
	movw	%cx, 42(%rsp)
	movl	42(%rsp), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L1265
.L1253:
	movw	%cx, 40(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L1265
.L1252:
	movw	%cx, 38(%rsp)
	movq	38(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1265
.L1251:
	movw	%cx, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1265
.L1250:
	movw	%cx, 34(%rsp)
	movq	34(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1265
.L1248:
	movw	%cx, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1265
.L1247:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4575:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4575-.LLSDACSB4575
.LLSDACSB4575:
.LLSDACSE4575:
	.section	.text$_ZN3Mul3RunItEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3Sub3RunItEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN3Sub3RunItEEvPhRj
	.def	_ZN3Sub3RunItEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3Sub3RunItEEvPhRj
_ZN3Sub3RunItEEvPhRj:
.LFB4569:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %r8
	movzwl	(%r9), %ecx
	subw	(%r8), %cx
	cmpb	$15, %al
	ja	.L1267
	movzbl	%al, %eax
	leaq	.L1269(%rip), %r8
	movslq	(%r8,%rax,4), %rax
	addq	%r8, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1269:
	.long	.L1284-.L1269
	.long	.L1283-.L1269
	.long	.L1282-.L1269
	.long	.L1281-.L1269
	.long	.L1280-.L1269
	.long	.L1279-.L1269
	.long	.L1278-.L1269
	.long	.L1277-.L1269
	.long	.L1276-.L1269
	.long	.L1275-.L1269
	.long	.L1274-.L1269
	.long	.L1273-.L1269
	.long	.L1272-.L1269
	.long	.L1271-.L1269
	.long	.L1270-.L1269
	.long	.L1268-.L1269
	.section	.text$_ZN3Sub3RunItEEvPhRj,"x"
	.linkonce discard
.L1284:
	movb	%cl, regByte1Number1(%rip)
.L1285:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L1283:
	movb	%cl, regByte1Number2(%rip)
	jmp	.L1285
.L1282:
	movb	%cl, regByte1Number3(%rip)
	jmp	.L1285
.L1281:
	movb	%cl, regByte1Number4(%rip)
	jmp	.L1285
.L1280:
	movw	%cx, regByte2Number1(%rip)
	jmp	.L1285
.L1279:
	movw	%cx, regByte2Number2(%rip)
	jmp	.L1285
.L1278:
	movw	%cx, regByte2Number3(%rip)
	jmp	.L1285
.L1277:
	movw	%cx, regByte2Number4(%rip)
	jmp	.L1285
.L1276:
	movw	%cx, 46(%rsp)
	movl	46(%rsp), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L1285
.L1275:
	movw	%cx, 44(%rsp)
	movl	44(%rsp), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L1285
.L1274:
	movw	%cx, 42(%rsp)
	movl	42(%rsp), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L1285
.L1273:
	movw	%cx, 40(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L1285
.L1272:
	movw	%cx, 38(%rsp)
	movq	38(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1285
.L1271:
	movw	%cx, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1285
.L1270:
	movw	%cx, 34(%rsp)
	movq	34(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1285
.L1268:
	movw	%cx, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1285
.L1267:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4569:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4569-.LLSDACSB4569
.LLSDACSB4569:
.LLSDACSE4569:
	.section	.text$_ZN3Sub3RunItEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3Add3RunItEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN3Add3RunItEEvPhRj
	.def	_ZN3Add3RunItEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3Add3RunItEEvPhRj
_ZN3Add3RunItEEvPhRj:
.LFB4563:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %rcx
	movzwl	(%rcx), %ecx
	addw	(%r9), %cx
	cmpb	$15, %al
	ja	.L1287
	movzbl	%al, %eax
	leaq	.L1289(%rip), %r8
	movslq	(%r8,%rax,4), %rax
	addq	%r8, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1289:
	.long	.L1304-.L1289
	.long	.L1303-.L1289
	.long	.L1302-.L1289
	.long	.L1301-.L1289
	.long	.L1300-.L1289
	.long	.L1299-.L1289
	.long	.L1298-.L1289
	.long	.L1297-.L1289
	.long	.L1296-.L1289
	.long	.L1295-.L1289
	.long	.L1294-.L1289
	.long	.L1293-.L1289
	.long	.L1292-.L1289
	.long	.L1291-.L1289
	.long	.L1290-.L1289
	.long	.L1288-.L1289
	.section	.text$_ZN3Add3RunItEEvPhRj,"x"
	.linkonce discard
.L1304:
	movb	%cl, regByte1Number1(%rip)
.L1305:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L1303:
	movb	%cl, regByte1Number2(%rip)
	jmp	.L1305
.L1302:
	movb	%cl, regByte1Number3(%rip)
	jmp	.L1305
.L1301:
	movb	%cl, regByte1Number4(%rip)
	jmp	.L1305
.L1300:
	movw	%cx, regByte2Number1(%rip)
	jmp	.L1305
.L1299:
	movw	%cx, regByte2Number2(%rip)
	jmp	.L1305
.L1298:
	movw	%cx, regByte2Number3(%rip)
	jmp	.L1305
.L1297:
	movw	%cx, regByte2Number4(%rip)
	jmp	.L1305
.L1296:
	movw	%cx, 46(%rsp)
	movl	46(%rsp), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L1305
.L1295:
	movw	%cx, 44(%rsp)
	movl	44(%rsp), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L1305
.L1294:
	movw	%cx, 42(%rsp)
	movl	42(%rsp), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L1305
.L1293:
	movw	%cx, 40(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L1305
.L1292:
	movw	%cx, 38(%rsp)
	movq	38(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1305
.L1291:
	movw	%cx, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1305
.L1290:
	movw	%cx, 34(%rsp)
	movq	34(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1305
.L1288:
	movw	%cx, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1305
.L1287:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4563:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4563-.LLSDACSB4563
.LLSDACSB4563:
.LLSDACSE4563:
	.section	.text$_ZN3Add3RunItEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN2TT3RunIthEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN2TT3RunIthEEvPhRj
	.def	_ZN2TT3RunIthEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2TT3RunIthEEvPhRj
_ZN2TT3RunIthEEvPhRj:
.LFB4638:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	movzwl	(%rcx), %r8d
	cmpb	$15, %al
	ja	.L1307
	movzbl	%al, %eax
	leaq	.L1309(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1309:
	.long	.L1324-.L1309
	.long	.L1323-.L1309
	.long	.L1322-.L1309
	.long	.L1321-.L1309
	.long	.L1320-.L1309
	.long	.L1319-.L1309
	.long	.L1318-.L1309
	.long	.L1317-.L1309
	.long	.L1316-.L1309
	.long	.L1315-.L1309
	.long	.L1314-.L1309
	.long	.L1313-.L1309
	.long	.L1312-.L1309
	.long	.L1311-.L1309
	.long	.L1310-.L1309
	.long	.L1308-.L1309
	.section	.text$_ZN2TT3RunIthEEvPhRj,"x"
	.linkonce discard
.L1324:
	movb	%r8b, regByte1Number1(%rip)
.L1325:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L1323:
	movb	%r8b, regByte1Number2(%rip)
	jmp	.L1325
.L1322:
	movb	%r8b, regByte1Number3(%rip)
	jmp	.L1325
.L1321:
	movb	%r8b, regByte1Number4(%rip)
	jmp	.L1325
.L1320:
	movb	%r8b, 47(%rsp)
	movzwl	47(%rsp), %eax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L1325
.L1319:
	movb	%r8b, 46(%rsp)
	movzwl	46(%rsp), %eax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L1325
.L1318:
	movb	%r8b, 45(%rsp)
	movzwl	45(%rsp), %eax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L1325
.L1317:
	movb	%r8b, 44(%rsp)
	movzwl	44(%rsp), %eax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L1325
.L1316:
	movb	%r8b, 43(%rsp)
	movl	43(%rsp), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L1325
.L1315:
	movb	%r8b, 42(%rsp)
	movl	42(%rsp), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L1325
.L1314:
	movb	%r8b, 41(%rsp)
	movl	41(%rsp), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L1325
.L1313:
	movb	%r8b, 40(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L1325
.L1312:
	movb	%r8b, 39(%rsp)
	movq	39(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1325
.L1311:
	movb	%r8b, 38(%rsp)
	movq	38(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1325
.L1310:
	movb	%r8b, 37(%rsp)
	movq	37(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1325
.L1308:
	movb	%r8b, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1325
.L1307:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4638:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4638-.LLSDACSB4638
.LLSDACSB4638:
.LLSDACSE4638:
	.section	.text$_ZN2TT3RunIthEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN2TT3RunIttEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN2TT3RunIttEEvPhRj
	.def	_ZN2TT3RunIttEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2TT3RunIttEEvPhRj
_ZN2TT3RunIttEEvPhRj:
.LFB4639:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	movzwl	(%rcx), %r8d
	cmpb	$15, %al
	ja	.L1327
	movzbl	%al, %eax
	leaq	.L1329(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1329:
	.long	.L1344-.L1329
	.long	.L1343-.L1329
	.long	.L1342-.L1329
	.long	.L1341-.L1329
	.long	.L1340-.L1329
	.long	.L1339-.L1329
	.long	.L1338-.L1329
	.long	.L1337-.L1329
	.long	.L1336-.L1329
	.long	.L1335-.L1329
	.long	.L1334-.L1329
	.long	.L1333-.L1329
	.long	.L1332-.L1329
	.long	.L1331-.L1329
	.long	.L1330-.L1329
	.long	.L1328-.L1329
	.section	.text$_ZN2TT3RunIttEEvPhRj,"x"
	.linkonce discard
.L1344:
	movb	%r8b, regByte1Number1(%rip)
.L1345:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L1343:
	movb	%r8b, regByte1Number2(%rip)
	jmp	.L1345
.L1342:
	movb	%r8b, regByte1Number3(%rip)
	jmp	.L1345
.L1341:
	movb	%r8b, regByte1Number4(%rip)
	jmp	.L1345
.L1340:
	movw	%r8w, regByte2Number1(%rip)
	jmp	.L1345
.L1339:
	movw	%r8w, regByte2Number2(%rip)
	jmp	.L1345
.L1338:
	movw	%r8w, regByte2Number3(%rip)
	jmp	.L1345
.L1337:
	movw	%r8w, regByte2Number4(%rip)
	jmp	.L1345
.L1336:
	movw	%r8w, 46(%rsp)
	movl	46(%rsp), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L1345
.L1335:
	movw	%r8w, 44(%rsp)
	movl	44(%rsp), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L1345
.L1334:
	movw	%r8w, 42(%rsp)
	movl	42(%rsp), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L1345
.L1333:
	movw	%r8w, 40(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L1345
.L1332:
	movw	%r8w, 38(%rsp)
	movq	38(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1345
.L1331:
	movw	%r8w, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1345
.L1330:
	movw	%r8w, 34(%rsp)
	movq	34(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1345
.L1328:
	movw	%r8w, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1345
.L1327:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4639:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4639-.LLSDACSB4639
.LLSDACSB4639:
.LLSDACSE4639:
	.section	.text$_ZN2TT3RunIttEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN2TT3RunItjEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN2TT3RunItjEEvPhRj
	.def	_ZN2TT3RunItjEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2TT3RunItjEEvPhRj
_ZN2TT3RunItjEEvPhRj:
.LFB4640:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	movzwl	(%rcx), %r8d
	movzwl	%r8w, %r9d
	cmpb	$15, %al
	ja	.L1347
	movzbl	%al, %eax
	leaq	.L1349(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1349:
	.long	.L1364-.L1349
	.long	.L1363-.L1349
	.long	.L1362-.L1349
	.long	.L1361-.L1349
	.long	.L1360-.L1349
	.long	.L1359-.L1349
	.long	.L1358-.L1349
	.long	.L1357-.L1349
	.long	.L1356-.L1349
	.long	.L1355-.L1349
	.long	.L1354-.L1349
	.long	.L1353-.L1349
	.long	.L1352-.L1349
	.long	.L1351-.L1349
	.long	.L1350-.L1349
	.long	.L1348-.L1349
	.section	.text$_ZN2TT3RunItjEEvPhRj,"x"
	.linkonce discard
.L1364:
	movb	%r8b, regByte1Number1(%rip)
.L1365:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L1363:
	movb	%r8b, regByte1Number2(%rip)
	jmp	.L1365
.L1362:
	movb	%r8b, regByte1Number3(%rip)
	jmp	.L1365
.L1361:
	movb	%r8b, regByte1Number4(%rip)
	jmp	.L1365
.L1360:
	movw	%r8w, regByte2Number1(%rip)
	jmp	.L1365
.L1359:
	movw	%r8w, regByte2Number2(%rip)
	jmp	.L1365
.L1358:
	movw	%r8w, regByte2Number3(%rip)
	jmp	.L1365
.L1357:
	movw	%r8w, regByte2Number4(%rip)
	jmp	.L1365
.L1356:
	movl	%r9d, regByte4Number1(%rip)
	jmp	.L1365
.L1355:
	movl	%r9d, regByte4Number2(%rip)
	jmp	.L1365
.L1354:
	movl	%r9d, regByte4Number3(%rip)
	jmp	.L1365
.L1353:
	movl	%r9d, regByte4Number4(%rip)
	jmp	.L1365
.L1352:
	movl	%r9d, 44(%rsp)
	movq	44(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1365
.L1351:
	movl	%r9d, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1365
.L1350:
	movl	%r9d, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1365
.L1348:
	movl	%r9d, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1365
.L1347:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4640:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4640-.LLSDACSB4640
.LLSDACSB4640:
.LLSDACSE4640:
	.section	.text$_ZN2TT3RunItjEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN2TT3RunItyEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN2TT3RunItyEEvPhRj
	.def	_ZN2TT3RunItyEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2TT3RunItyEEvPhRj
_ZN2TT3RunItyEEvPhRj:
.LFB4641:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	movzwl	(%rcx), %ecx
	movzwl	%cx, %r9d
	cmpb	$15, %al
	ja	.L1367
	movzbl	%al, %eax
	leaq	.L1369(%rip), %r8
	movslq	(%r8,%rax,4), %rax
	addq	%r8, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1369:
	.long	.L1384-.L1369
	.long	.L1383-.L1369
	.long	.L1382-.L1369
	.long	.L1381-.L1369
	.long	.L1380-.L1369
	.long	.L1379-.L1369
	.long	.L1378-.L1369
	.long	.L1377-.L1369
	.long	.L1376-.L1369
	.long	.L1375-.L1369
	.long	.L1374-.L1369
	.long	.L1373-.L1369
	.long	.L1372-.L1369
	.long	.L1371-.L1369
	.long	.L1370-.L1369
	.long	.L1368-.L1369
	.section	.text$_ZN2TT3RunItyEEvPhRj,"x"
	.linkonce discard
.L1384:
	movb	%cl, regByte1Number1(%rip)
.L1385:
	addl	$1, (%rdx)
	addq	$40, %rsp
	ret
.L1383:
	movb	%cl, regByte1Number2(%rip)
	jmp	.L1385
.L1382:
	movb	%cl, regByte1Number3(%rip)
	jmp	.L1385
.L1381:
	movb	%cl, regByte1Number4(%rip)
	jmp	.L1385
.L1380:
	movw	%cx, regByte2Number1(%rip)
	jmp	.L1385
.L1379:
	movw	%cx, regByte2Number2(%rip)
	jmp	.L1385
.L1378:
	movw	%cx, regByte2Number3(%rip)
	jmp	.L1385
.L1377:
	movw	%cx, regByte2Number4(%rip)
	jmp	.L1385
.L1376:
	movzwl	%cx, %ecx
	movl	%ecx, regByte4Number1(%rip)
	jmp	.L1385
.L1375:
	movzwl	%cx, %ecx
	movl	%ecx, regByte4Number2(%rip)
	jmp	.L1385
.L1374:
	movzwl	%cx, %ecx
	movl	%ecx, regByte4Number3(%rip)
	jmp	.L1385
.L1373:
	movzwl	%cx, %ecx
	movl	%ecx, regByte4Number4(%rip)
	jmp	.L1385
.L1372:
	movq	%r9, regByte8Number1(%rip)
	jmp	.L1385
.L1371:
	movq	%r9, regByte8Number2(%rip)
	jmp	.L1385
.L1370:
	movq	%r9, regByte8Number3(%rip)
	jmp	.L1385
.L1368:
	movq	%r9, regByte8Number4(%rip)
	jmp	.L1385
.L1367:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4641:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4641-.LLSDACSB4641
.LLSDACSB4641:
.LLSDACSE4641:
	.section	.text$_ZN2TT3RunItyEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN2TT3RunItfEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN2TT3RunItfEEvPhRj
	.def	_ZN2TT3RunItfEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2TT3RunItfEEvPhRj
_ZN2TT3RunItfEEvPhRj:
.LFB4642:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	movzwl	(%rcx), %ecx
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
	cmpb	$15, %al
	ja	.L1387
	movzbl	%al, %eax
	leaq	.L1389(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1389:
	.long	.L1404-.L1389
	.long	.L1403-.L1389
	.long	.L1402-.L1389
	.long	.L1401-.L1389
	.long	.L1400-.L1389
	.long	.L1399-.L1389
	.long	.L1398-.L1389
	.long	.L1397-.L1389
	.long	.L1396-.L1389
	.long	.L1395-.L1389
	.long	.L1394-.L1389
	.long	.L1393-.L1389
	.long	.L1392-.L1389
	.long	.L1391-.L1389
	.long	.L1390-.L1389
	.long	.L1388-.L1389
	.section	.text$_ZN2TT3RunItfEEvPhRj,"x"
	.linkonce discard
.L1404:
	movd	%xmm0, %eax
	movb	%al, regByte1Number1(%rip)
.L1405:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L1403:
	movd	%xmm0, %eax
	movb	%al, regByte1Number2(%rip)
	jmp	.L1405
.L1402:
	movd	%xmm0, %eax
	movb	%al, regByte1Number3(%rip)
	jmp	.L1405
.L1401:
	movd	%xmm0, %eax
	movb	%al, regByte1Number4(%rip)
	jmp	.L1405
.L1400:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L1405
.L1399:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L1405
.L1398:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L1405
.L1397:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L1405
.L1396:
	movss	%xmm0, regByte4Number1(%rip)
	jmp	.L1405
.L1395:
	movss	%xmm0, regByte4Number2(%rip)
	jmp	.L1405
.L1394:
	movss	%xmm0, regByte4Number3(%rip)
	jmp	.L1405
.L1393:
	movss	%xmm0, regByte4Number4(%rip)
	jmp	.L1405
.L1392:
	movss	%xmm0, 44(%rsp)
	movq	44(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1405
.L1391:
	movss	%xmm0, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1405
.L1390:
	movss	%xmm0, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1405
.L1388:
	movss	%xmm0, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1405
.L1387:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4642:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4642-.LLSDACSB4642
.LLSDACSB4642:
.LLSDACSE4642:
	.section	.text$_ZN2TT3RunItfEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN10LogicalNot3RunIjEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN10LogicalNot3RunIjEEvPhRj
	.def	_ZN10LogicalNot3RunIjEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10LogicalNot3RunIjEEvPhRj
_ZN10LogicalNot3RunIjEEvPhRj:
.LFB4630:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	cmpl	$0, (%rcx)
	sete	%r8b
	sete	%r9b
	movzbl	%r9b, %r9d
	cmpb	$15, %al
	ja	.L1407
	movzbl	%al, %eax
	leaq	.L1409(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1409:
	.long	.L1424-.L1409
	.long	.L1423-.L1409
	.long	.L1422-.L1409
	.long	.L1421-.L1409
	.long	.L1420-.L1409
	.long	.L1419-.L1409
	.long	.L1418-.L1409
	.long	.L1417-.L1409
	.long	.L1416-.L1409
	.long	.L1415-.L1409
	.long	.L1414-.L1409
	.long	.L1413-.L1409
	.long	.L1412-.L1409
	.long	.L1411-.L1409
	.long	.L1410-.L1409
	.long	.L1408-.L1409
	.section	.text$_ZN10LogicalNot3RunIjEEvPhRj,"x"
	.linkonce discard
.L1424:
	movb	%r8b, regByte1Number1(%rip)
.L1425:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L1423:
	movb	%r8b, regByte1Number2(%rip)
	jmp	.L1425
.L1422:
	movb	%r8b, regByte1Number3(%rip)
	jmp	.L1425
.L1421:
	movb	%r8b, regByte1Number4(%rip)
	jmp	.L1425
.L1420:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number1(%rip)
	jmp	.L1425
.L1419:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number2(%rip)
	jmp	.L1425
.L1418:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number3(%rip)
	jmp	.L1425
.L1417:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number4(%rip)
	jmp	.L1425
.L1416:
	movl	%r9d, regByte4Number1(%rip)
	jmp	.L1425
.L1415:
	movl	%r9d, regByte4Number2(%rip)
	jmp	.L1425
.L1414:
	movl	%r9d, regByte4Number3(%rip)
	jmp	.L1425
.L1413:
	movl	%r9d, regByte4Number4(%rip)
	jmp	.L1425
.L1412:
	movl	%r9d, 44(%rsp)
	movq	44(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1425
.L1411:
	movl	%r9d, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1425
.L1410:
	movl	%r9d, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1425
.L1408:
	movl	%r9d, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1425
.L1407:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4630:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4630-.LLSDACSB4630
.LLSDACSB4630:
.LLSDACSE4630:
	.section	.text$_ZN10LogicalNot3RunIjEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN9LogicalOr3RunIjEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN9LogicalOr3RunIjEEvPhRj
	.def	_ZN9LogicalOr3RunIjEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9LogicalOr3RunIjEEvPhRj
_ZN9LogicalOr3RunIjEEvPhRj:
.LFB4626:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %r8
	movl	(%r9), %ecx
	orl	(%r8), %ecx
	setne	%r8b
	setne	%r9b
	movzbl	%r9b, %r9d
	cmpb	$15, %al
	ja	.L1427
	movzbl	%al, %eax
	leaq	.L1429(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1429:
	.long	.L1444-.L1429
	.long	.L1443-.L1429
	.long	.L1442-.L1429
	.long	.L1441-.L1429
	.long	.L1440-.L1429
	.long	.L1439-.L1429
	.long	.L1438-.L1429
	.long	.L1437-.L1429
	.long	.L1436-.L1429
	.long	.L1435-.L1429
	.long	.L1434-.L1429
	.long	.L1433-.L1429
	.long	.L1432-.L1429
	.long	.L1431-.L1429
	.long	.L1430-.L1429
	.long	.L1428-.L1429
	.section	.text$_ZN9LogicalOr3RunIjEEvPhRj,"x"
	.linkonce discard
.L1444:
	movb	%r8b, regByte1Number1(%rip)
.L1445:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L1443:
	movb	%r8b, regByte1Number2(%rip)
	jmp	.L1445
.L1442:
	movb	%r8b, regByte1Number3(%rip)
	jmp	.L1445
.L1441:
	movb	%r8b, regByte1Number4(%rip)
	jmp	.L1445
.L1440:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number1(%rip)
	jmp	.L1445
.L1439:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number2(%rip)
	jmp	.L1445
.L1438:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number3(%rip)
	jmp	.L1445
.L1437:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number4(%rip)
	jmp	.L1445
.L1436:
	movl	%r9d, regByte4Number1(%rip)
	jmp	.L1445
.L1435:
	movl	%r9d, regByte4Number2(%rip)
	jmp	.L1445
.L1434:
	movl	%r9d, regByte4Number3(%rip)
	jmp	.L1445
.L1433:
	movl	%r9d, regByte4Number4(%rip)
	jmp	.L1445
.L1432:
	movl	%r9d, 44(%rsp)
	movq	44(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1445
.L1431:
	movl	%r9d, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1445
.L1430:
	movl	%r9d, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1445
.L1428:
	movl	%r9d, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1445
.L1427:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4626:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4626-.LLSDACSB4626
.LLSDACSB4626:
.LLSDACSE4626:
	.section	.text$_ZN9LogicalOr3RunIjEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN10LogicalAnd3RunIjEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN10LogicalAnd3RunIjEEvPhRj
	.def	_ZN10LogicalAnd3RunIjEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10LogicalAnd3RunIjEEvPhRj
_ZN10LogicalAnd3RunIjEEvPhRj:
.LFB4622:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r9
	movzbl	(%rcx), %r8d
	movq	(%r9,%r8,8), %r8
	cmpl	$0, (%r8)
	setne	%r8b
	movzbl	1(%rcx), %ecx
	movq	(%r9,%rcx,8), %rcx
	cmpl	$0, (%rcx)
	setne	%cl
	andl	%r8d, %ecx
	movzbl	%cl, %r9d
	cmpb	$15, %al
	ja	.L1447
	movzbl	%al, %eax
	leaq	.L1449(%rip), %r8
	movslq	(%r8,%rax,4), %rax
	addq	%r8, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1449:
	.long	.L1464-.L1449
	.long	.L1463-.L1449
	.long	.L1462-.L1449
	.long	.L1461-.L1449
	.long	.L1460-.L1449
	.long	.L1459-.L1449
	.long	.L1458-.L1449
	.long	.L1457-.L1449
	.long	.L1456-.L1449
	.long	.L1455-.L1449
	.long	.L1454-.L1449
	.long	.L1453-.L1449
	.long	.L1452-.L1449
	.long	.L1451-.L1449
	.long	.L1450-.L1449
	.long	.L1448-.L1449
	.section	.text$_ZN10LogicalAnd3RunIjEEvPhRj,"x"
	.linkonce discard
.L1464:
	movb	%cl, regByte1Number1(%rip)
.L1465:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L1463:
	movb	%cl, regByte1Number2(%rip)
	jmp	.L1465
.L1462:
	movb	%cl, regByte1Number3(%rip)
	jmp	.L1465
.L1461:
	movb	%cl, regByte1Number4(%rip)
	jmp	.L1465
.L1460:
	movzbl	%cl, %ecx
	movw	%cx, regByte2Number1(%rip)
	jmp	.L1465
.L1459:
	movzbl	%cl, %ecx
	movw	%cx, regByte2Number2(%rip)
	jmp	.L1465
.L1458:
	movzbl	%cl, %ecx
	movw	%cx, regByte2Number3(%rip)
	jmp	.L1465
.L1457:
	movzbl	%cl, %ecx
	movw	%cx, regByte2Number4(%rip)
	jmp	.L1465
.L1456:
	movl	%r9d, regByte4Number1(%rip)
	jmp	.L1465
.L1455:
	movl	%r9d, regByte4Number2(%rip)
	jmp	.L1465
.L1454:
	movl	%r9d, regByte4Number3(%rip)
	jmp	.L1465
.L1453:
	movl	%r9d, regByte4Number4(%rip)
	jmp	.L1465
.L1452:
	movl	%r9d, 44(%rsp)
	movq	44(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1465
.L1451:
	movl	%r9d, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1465
.L1450:
	movl	%r9d, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1465
.L1448:
	movl	%r9d, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1465
.L1447:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4622:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4622-.LLSDACSB4622
.LLSDACSB4622:
.LLSDACSE4622:
	.section	.text$_ZN10LogicalAnd3RunIjEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3Xor3RunIjEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN3Xor3RunIjEEvPhRj
	.def	_ZN3Xor3RunIjEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3Xor3RunIjEEvPhRj
_ZN3Xor3RunIjEEvPhRj:
.LFB4618:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %r8
	movl	(%r9), %ecx
	xorl	(%r8), %ecx
	cmpb	$15, %al
	ja	.L1467
	movzbl	%al, %eax
	leaq	.L1469(%rip), %r8
	movslq	(%r8,%rax,4), %rax
	addq	%r8, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1469:
	.long	.L1484-.L1469
	.long	.L1483-.L1469
	.long	.L1482-.L1469
	.long	.L1481-.L1469
	.long	.L1480-.L1469
	.long	.L1479-.L1469
	.long	.L1478-.L1469
	.long	.L1477-.L1469
	.long	.L1476-.L1469
	.long	.L1475-.L1469
	.long	.L1474-.L1469
	.long	.L1473-.L1469
	.long	.L1472-.L1469
	.long	.L1471-.L1469
	.long	.L1470-.L1469
	.long	.L1468-.L1469
	.section	.text$_ZN3Xor3RunIjEEvPhRj,"x"
	.linkonce discard
.L1484:
	movb	%cl, regByte1Number1(%rip)
.L1485:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L1483:
	movb	%cl, regByte1Number2(%rip)
	jmp	.L1485
.L1482:
	movb	%cl, regByte1Number3(%rip)
	jmp	.L1485
.L1481:
	movb	%cl, regByte1Number4(%rip)
	jmp	.L1485
.L1480:
	movw	%cx, regByte2Number1(%rip)
	jmp	.L1485
.L1479:
	movw	%cx, regByte2Number2(%rip)
	jmp	.L1485
.L1478:
	movw	%cx, regByte2Number3(%rip)
	jmp	.L1485
.L1477:
	movw	%cx, regByte2Number4(%rip)
	jmp	.L1485
.L1476:
	movl	%ecx, regByte4Number1(%rip)
	jmp	.L1485
.L1475:
	movl	%ecx, regByte4Number2(%rip)
	jmp	.L1485
.L1474:
	movl	%ecx, regByte4Number3(%rip)
	jmp	.L1485
.L1473:
	movl	%ecx, regByte4Number4(%rip)
	jmp	.L1485
.L1472:
	movl	%ecx, 44(%rsp)
	movq	44(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1485
.L1471:
	movl	%ecx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1485
.L1470:
	movl	%ecx, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1485
.L1468:
	movl	%ecx, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1485
.L1467:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4618:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4618-.LLSDACSB4618
.LLSDACSB4618:
.LLSDACSE4618:
	.section	.text$_ZN3Xor3RunIjEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3Not3RunIjEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN3Not3RunIjEEvPhRj
	.def	_ZN3Not3RunIjEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3Not3RunIjEEvPhRj
_ZN3Not3RunIjEEvPhRj:
.LFB4614:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	movl	(%rcx), %ecx
	notl	%ecx
	cmpb	$15, %al
	ja	.L1487
	movzbl	%al, %eax
	leaq	.L1489(%rip), %r8
	movslq	(%r8,%rax,4), %rax
	addq	%r8, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1489:
	.long	.L1504-.L1489
	.long	.L1503-.L1489
	.long	.L1502-.L1489
	.long	.L1501-.L1489
	.long	.L1500-.L1489
	.long	.L1499-.L1489
	.long	.L1498-.L1489
	.long	.L1497-.L1489
	.long	.L1496-.L1489
	.long	.L1495-.L1489
	.long	.L1494-.L1489
	.long	.L1493-.L1489
	.long	.L1492-.L1489
	.long	.L1491-.L1489
	.long	.L1490-.L1489
	.long	.L1488-.L1489
	.section	.text$_ZN3Not3RunIjEEvPhRj,"x"
	.linkonce discard
.L1504:
	movb	%cl, regByte1Number1(%rip)
.L1505:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L1503:
	movb	%cl, regByte1Number2(%rip)
	jmp	.L1505
.L1502:
	movb	%cl, regByte1Number3(%rip)
	jmp	.L1505
.L1501:
	movb	%cl, regByte1Number4(%rip)
	jmp	.L1505
.L1500:
	movw	%cx, regByte2Number1(%rip)
	jmp	.L1505
.L1499:
	movw	%cx, regByte2Number2(%rip)
	jmp	.L1505
.L1498:
	movw	%cx, regByte2Number3(%rip)
	jmp	.L1505
.L1497:
	movw	%cx, regByte2Number4(%rip)
	jmp	.L1505
.L1496:
	movl	%ecx, regByte4Number1(%rip)
	jmp	.L1505
.L1495:
	movl	%ecx, regByte4Number2(%rip)
	jmp	.L1505
.L1494:
	movl	%ecx, regByte4Number3(%rip)
	jmp	.L1505
.L1493:
	movl	%ecx, regByte4Number4(%rip)
	jmp	.L1505
.L1492:
	movl	%ecx, 44(%rsp)
	movq	44(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1505
.L1491:
	movl	%ecx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1505
.L1490:
	movl	%ecx, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1505
.L1488:
	movl	%ecx, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1505
.L1487:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4614:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4614-.LLSDACSB4614
.LLSDACSB4614:
.LLSDACSE4614:
	.section	.text$_ZN3Not3RunIjEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN2Or3RunIjEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN2Or3RunIjEEvPhRj
	.def	_ZN2Or3RunIjEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2Or3RunIjEEvPhRj
_ZN2Or3RunIjEEvPhRj:
.LFB4610:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %r8
	movl	(%r9), %ecx
	orl	(%r8), %ecx
	cmpb	$15, %al
	ja	.L1507
	movzbl	%al, %eax
	leaq	.L1509(%rip), %r8
	movslq	(%r8,%rax,4), %rax
	addq	%r8, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1509:
	.long	.L1524-.L1509
	.long	.L1523-.L1509
	.long	.L1522-.L1509
	.long	.L1521-.L1509
	.long	.L1520-.L1509
	.long	.L1519-.L1509
	.long	.L1518-.L1509
	.long	.L1517-.L1509
	.long	.L1516-.L1509
	.long	.L1515-.L1509
	.long	.L1514-.L1509
	.long	.L1513-.L1509
	.long	.L1512-.L1509
	.long	.L1511-.L1509
	.long	.L1510-.L1509
	.long	.L1508-.L1509
	.section	.text$_ZN2Or3RunIjEEvPhRj,"x"
	.linkonce discard
.L1524:
	movb	%cl, regByte1Number1(%rip)
.L1525:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L1523:
	movb	%cl, regByte1Number2(%rip)
	jmp	.L1525
.L1522:
	movb	%cl, regByte1Number3(%rip)
	jmp	.L1525
.L1521:
	movb	%cl, regByte1Number4(%rip)
	jmp	.L1525
.L1520:
	movw	%cx, regByte2Number1(%rip)
	jmp	.L1525
.L1519:
	movw	%cx, regByte2Number2(%rip)
	jmp	.L1525
.L1518:
	movw	%cx, regByte2Number3(%rip)
	jmp	.L1525
.L1517:
	movw	%cx, regByte2Number4(%rip)
	jmp	.L1525
.L1516:
	movl	%ecx, regByte4Number1(%rip)
	jmp	.L1525
.L1515:
	movl	%ecx, regByte4Number2(%rip)
	jmp	.L1525
.L1514:
	movl	%ecx, regByte4Number3(%rip)
	jmp	.L1525
.L1513:
	movl	%ecx, regByte4Number4(%rip)
	jmp	.L1525
.L1512:
	movl	%ecx, 44(%rsp)
	movq	44(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1525
.L1511:
	movl	%ecx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1525
.L1510:
	movl	%ecx, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1525
.L1508:
	movl	%ecx, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1525
.L1507:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4610:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4610-.LLSDACSB4610
.LLSDACSB4610:
.LLSDACSE4610:
	.section	.text$_ZN2Or3RunIjEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3And3RunIjEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN3And3RunIjEEvPhRj
	.def	_ZN3And3RunIjEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3And3RunIjEEvPhRj
_ZN3And3RunIjEEvPhRj:
.LFB4606:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %r8
	movl	(%r9), %ecx
	andl	(%r8), %ecx
	cmpb	$15, %al
	ja	.L1527
	movzbl	%al, %eax
	leaq	.L1529(%rip), %r8
	movslq	(%r8,%rax,4), %rax
	addq	%r8, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1529:
	.long	.L1544-.L1529
	.long	.L1543-.L1529
	.long	.L1542-.L1529
	.long	.L1541-.L1529
	.long	.L1540-.L1529
	.long	.L1539-.L1529
	.long	.L1538-.L1529
	.long	.L1537-.L1529
	.long	.L1536-.L1529
	.long	.L1535-.L1529
	.long	.L1534-.L1529
	.long	.L1533-.L1529
	.long	.L1532-.L1529
	.long	.L1531-.L1529
	.long	.L1530-.L1529
	.long	.L1528-.L1529
	.section	.text$_ZN3And3RunIjEEvPhRj,"x"
	.linkonce discard
.L1544:
	movb	%cl, regByte1Number1(%rip)
.L1545:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L1543:
	movb	%cl, regByte1Number2(%rip)
	jmp	.L1545
.L1542:
	movb	%cl, regByte1Number3(%rip)
	jmp	.L1545
.L1541:
	movb	%cl, regByte1Number4(%rip)
	jmp	.L1545
.L1540:
	movw	%cx, regByte2Number1(%rip)
	jmp	.L1545
.L1539:
	movw	%cx, regByte2Number2(%rip)
	jmp	.L1545
.L1538:
	movw	%cx, regByte2Number3(%rip)
	jmp	.L1545
.L1537:
	movw	%cx, regByte2Number4(%rip)
	jmp	.L1545
.L1536:
	movl	%ecx, regByte4Number1(%rip)
	jmp	.L1545
.L1535:
	movl	%ecx, regByte4Number2(%rip)
	jmp	.L1545
.L1534:
	movl	%ecx, regByte4Number3(%rip)
	jmp	.L1545
.L1533:
	movl	%ecx, regByte4Number4(%rip)
	jmp	.L1545
.L1532:
	movl	%ecx, 44(%rsp)
	movq	44(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1545
.L1531:
	movl	%ecx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1545
.L1530:
	movl	%ecx, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1545
.L1528:
	movl	%ecx, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1545
.L1527:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4606:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4606-.LLSDACSB4606
.LLSDACSB4606:
.LLSDACSE4606:
	.section	.text$_ZN3And3RunIjEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN5Equal3RunIjEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN5Equal3RunIjEEvPhRj
	.def	_ZN5Equal3RunIjEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Equal3RunIjEEvPhRj
_ZN5Equal3RunIjEEvPhRj:
.LFB4600:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, (%r9)
	sete	%r8b
	sete	%r9b
	movzbl	%r9b, %r9d
	cmpb	$15, %al
	ja	.L1547
	movzbl	%al, %eax
	leaq	.L1549(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1549:
	.long	.L1564-.L1549
	.long	.L1563-.L1549
	.long	.L1562-.L1549
	.long	.L1561-.L1549
	.long	.L1560-.L1549
	.long	.L1559-.L1549
	.long	.L1558-.L1549
	.long	.L1557-.L1549
	.long	.L1556-.L1549
	.long	.L1555-.L1549
	.long	.L1554-.L1549
	.long	.L1553-.L1549
	.long	.L1552-.L1549
	.long	.L1551-.L1549
	.long	.L1550-.L1549
	.long	.L1548-.L1549
	.section	.text$_ZN5Equal3RunIjEEvPhRj,"x"
	.linkonce discard
.L1564:
	movb	%r8b, regByte1Number1(%rip)
.L1565:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L1563:
	movb	%r8b, regByte1Number2(%rip)
	jmp	.L1565
.L1562:
	movb	%r8b, regByte1Number3(%rip)
	jmp	.L1565
.L1561:
	movb	%r8b, regByte1Number4(%rip)
	jmp	.L1565
.L1560:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number1(%rip)
	jmp	.L1565
.L1559:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number2(%rip)
	jmp	.L1565
.L1558:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number3(%rip)
	jmp	.L1565
.L1557:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number4(%rip)
	jmp	.L1565
.L1556:
	movl	%r9d, regByte4Number1(%rip)
	jmp	.L1565
.L1555:
	movl	%r9d, regByte4Number2(%rip)
	jmp	.L1565
.L1554:
	movl	%r9d, regByte4Number3(%rip)
	jmp	.L1565
.L1553:
	movl	%r9d, regByte4Number4(%rip)
	jmp	.L1565
.L1552:
	movl	%r9d, 44(%rsp)
	movq	44(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1565
.L1551:
	movl	%r9d, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1565
.L1550:
	movl	%r9d, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1565
.L1548:
	movl	%r9d, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1565
.L1547:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4600:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4600-.LLSDACSB4600
.LLSDACSB4600:
.LLSDACSE4600:
	.section	.text$_ZN5Equal3RunIjEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN5Small3RunIjEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN5Small3RunIjEEvPhRj
	.def	_ZN5Small3RunIjEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Small3RunIjEEvPhRj
_ZN5Small3RunIjEEvPhRj:
.LFB4594:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, (%r9)
	setb	%r8b
	setb	%r9b
	movzbl	%r9b, %r9d
	cmpb	$15, %al
	ja	.L1567
	movzbl	%al, %eax
	leaq	.L1569(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1569:
	.long	.L1584-.L1569
	.long	.L1583-.L1569
	.long	.L1582-.L1569
	.long	.L1581-.L1569
	.long	.L1580-.L1569
	.long	.L1579-.L1569
	.long	.L1578-.L1569
	.long	.L1577-.L1569
	.long	.L1576-.L1569
	.long	.L1575-.L1569
	.long	.L1574-.L1569
	.long	.L1573-.L1569
	.long	.L1572-.L1569
	.long	.L1571-.L1569
	.long	.L1570-.L1569
	.long	.L1568-.L1569
	.section	.text$_ZN5Small3RunIjEEvPhRj,"x"
	.linkonce discard
.L1584:
	movb	%r8b, regByte1Number1(%rip)
.L1585:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L1583:
	movb	%r8b, regByte1Number2(%rip)
	jmp	.L1585
.L1582:
	movb	%r8b, regByte1Number3(%rip)
	jmp	.L1585
.L1581:
	movb	%r8b, regByte1Number4(%rip)
	jmp	.L1585
.L1580:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number1(%rip)
	jmp	.L1585
.L1579:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number2(%rip)
	jmp	.L1585
.L1578:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number3(%rip)
	jmp	.L1585
.L1577:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number4(%rip)
	jmp	.L1585
.L1576:
	movl	%r9d, regByte4Number1(%rip)
	jmp	.L1585
.L1575:
	movl	%r9d, regByte4Number2(%rip)
	jmp	.L1585
.L1574:
	movl	%r9d, regByte4Number3(%rip)
	jmp	.L1585
.L1573:
	movl	%r9d, regByte4Number4(%rip)
	jmp	.L1585
.L1572:
	movl	%r9d, 44(%rsp)
	movq	44(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1585
.L1571:
	movl	%r9d, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1585
.L1570:
	movl	%r9d, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1585
.L1568:
	movl	%r9d, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1585
.L1567:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4594:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4594-.LLSDACSB4594
.LLSDACSB4594:
.LLSDACSE4594:
	.section	.text$_ZN5Small3RunIjEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3Big3RunIjEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN3Big3RunIjEEvPhRj
	.def	_ZN3Big3RunIjEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3Big3RunIjEEvPhRj
_ZN3Big3RunIjEEvPhRj:
.LFB4588:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %rcx
	movl	(%r9), %r10d
	cmpl	%r10d, (%rcx)
	setb	%r8b
	setb	%r9b
	movzbl	%r9b, %r9d
	cmpb	$15, %al
	ja	.L1587
	movzbl	%al, %eax
	leaq	.L1589(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1589:
	.long	.L1604-.L1589
	.long	.L1603-.L1589
	.long	.L1602-.L1589
	.long	.L1601-.L1589
	.long	.L1600-.L1589
	.long	.L1599-.L1589
	.long	.L1598-.L1589
	.long	.L1597-.L1589
	.long	.L1596-.L1589
	.long	.L1595-.L1589
	.long	.L1594-.L1589
	.long	.L1593-.L1589
	.long	.L1592-.L1589
	.long	.L1591-.L1589
	.long	.L1590-.L1589
	.long	.L1588-.L1589
	.section	.text$_ZN3Big3RunIjEEvPhRj,"x"
	.linkonce discard
.L1604:
	movb	%r8b, regByte1Number1(%rip)
.L1605:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L1603:
	movb	%r8b, regByte1Number2(%rip)
	jmp	.L1605
.L1602:
	movb	%r8b, regByte1Number3(%rip)
	jmp	.L1605
.L1601:
	movb	%r8b, regByte1Number4(%rip)
	jmp	.L1605
.L1600:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number1(%rip)
	jmp	.L1605
.L1599:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number2(%rip)
	jmp	.L1605
.L1598:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number3(%rip)
	jmp	.L1605
.L1597:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number4(%rip)
	jmp	.L1605
.L1596:
	movl	%r9d, regByte4Number1(%rip)
	jmp	.L1605
.L1595:
	movl	%r9d, regByte4Number2(%rip)
	jmp	.L1605
.L1594:
	movl	%r9d, regByte4Number3(%rip)
	jmp	.L1605
.L1593:
	movl	%r9d, regByte4Number4(%rip)
	jmp	.L1605
.L1592:
	movl	%r9d, 44(%rsp)
	movq	44(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1605
.L1591:
	movl	%r9d, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1605
.L1590:
	movl	%r9d, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1605
.L1588:
	movl	%r9d, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1605
.L1587:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4588:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4588-.LLSDACSB4588
.LLSDACSB4588:
.LLSDACSE4588:
	.section	.text$_ZN3Big3RunIjEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3Div3RunIjEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN3Div3RunIjEEvPhRj
	.def	_ZN3Div3RunIjEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3Div3RunIjEEvPhRj
_ZN3Div3RunIjEEvPhRj:
.LFB4582:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	%rdx, %r9
	movzbl	2(%rcx), %r8d
	leaq	regTable(%rip), %rax
	movzbl	(%rcx), %edx
	movq	(%rax,%rdx,8), %r10
	movzbl	1(%rcx), %edx
	movq	(%rax,%rdx,8), %rcx
	movl	(%r10), %eax
	movl	$0, %edx
	divl	(%rcx)
	cmpb	$15, %r8b
	ja	.L1607
	movzbl	%r8b, %r8d
	leaq	.L1609(%rip), %rcx
	movslq	(%rcx,%r8,4), %rdx
	addq	%rcx, %rdx
	jmp	*%rdx
	.section .rdata,"dr"
	.align 4
.L1609:
	.long	.L1624-.L1609
	.long	.L1623-.L1609
	.long	.L1622-.L1609
	.long	.L1621-.L1609
	.long	.L1620-.L1609
	.long	.L1619-.L1609
	.long	.L1618-.L1609
	.long	.L1617-.L1609
	.long	.L1616-.L1609
	.long	.L1615-.L1609
	.long	.L1614-.L1609
	.long	.L1613-.L1609
	.long	.L1612-.L1609
	.long	.L1611-.L1609
	.long	.L1610-.L1609
	.long	.L1608-.L1609
	.section	.text$_ZN3Div3RunIjEEvPhRj,"x"
	.linkonce discard
.L1624:
	movb	%al, regByte1Number1(%rip)
.L1625:
	addl	$1, (%r9)
	addq	$56, %rsp
	ret
.L1623:
	movb	%al, regByte1Number2(%rip)
	jmp	.L1625
.L1622:
	movb	%al, regByte1Number3(%rip)
	jmp	.L1625
.L1621:
	movb	%al, regByte1Number4(%rip)
	jmp	.L1625
.L1620:
	movw	%ax, regByte2Number1(%rip)
	jmp	.L1625
.L1619:
	movw	%ax, regByte2Number2(%rip)
	jmp	.L1625
.L1618:
	movw	%ax, regByte2Number3(%rip)
	jmp	.L1625
.L1617:
	movw	%ax, regByte2Number4(%rip)
	jmp	.L1625
.L1616:
	movl	%eax, regByte4Number1(%rip)
	jmp	.L1625
.L1615:
	movl	%eax, regByte4Number2(%rip)
	jmp	.L1625
.L1614:
	movl	%eax, regByte4Number3(%rip)
	jmp	.L1625
.L1613:
	movl	%eax, regByte4Number4(%rip)
	jmp	.L1625
.L1612:
	movl	%eax, 44(%rsp)
	movq	44(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1625
.L1611:
	movl	%eax, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1625
.L1610:
	movl	%eax, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1625
.L1608:
	movl	%eax, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1625
.L1607:
	movzbl	%r8b, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4582:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4582-.LLSDACSB4582
.LLSDACSB4582:
.LLSDACSE4582:
	.section	.text$_ZN3Div3RunIjEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3Mul3RunIjEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN3Mul3RunIjEEvPhRj
	.def	_ZN3Mul3RunIjEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3Mul3RunIjEEvPhRj
_ZN3Mul3RunIjEEvPhRj:
.LFB4576:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %r8
	movl	(%r9), %ecx
	imull	(%r8), %ecx
	cmpb	$15, %al
	ja	.L1627
	movzbl	%al, %eax
	leaq	.L1629(%rip), %r8
	movslq	(%r8,%rax,4), %rax
	addq	%r8, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1629:
	.long	.L1644-.L1629
	.long	.L1643-.L1629
	.long	.L1642-.L1629
	.long	.L1641-.L1629
	.long	.L1640-.L1629
	.long	.L1639-.L1629
	.long	.L1638-.L1629
	.long	.L1637-.L1629
	.long	.L1636-.L1629
	.long	.L1635-.L1629
	.long	.L1634-.L1629
	.long	.L1633-.L1629
	.long	.L1632-.L1629
	.long	.L1631-.L1629
	.long	.L1630-.L1629
	.long	.L1628-.L1629
	.section	.text$_ZN3Mul3RunIjEEvPhRj,"x"
	.linkonce discard
.L1644:
	movb	%cl, regByte1Number1(%rip)
.L1645:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L1643:
	movb	%cl, regByte1Number2(%rip)
	jmp	.L1645
.L1642:
	movb	%cl, regByte1Number3(%rip)
	jmp	.L1645
.L1641:
	movb	%cl, regByte1Number4(%rip)
	jmp	.L1645
.L1640:
	movw	%cx, regByte2Number1(%rip)
	jmp	.L1645
.L1639:
	movw	%cx, regByte2Number2(%rip)
	jmp	.L1645
.L1638:
	movw	%cx, regByte2Number3(%rip)
	jmp	.L1645
.L1637:
	movw	%cx, regByte2Number4(%rip)
	jmp	.L1645
.L1636:
	movl	%ecx, regByte4Number1(%rip)
	jmp	.L1645
.L1635:
	movl	%ecx, regByte4Number2(%rip)
	jmp	.L1645
.L1634:
	movl	%ecx, regByte4Number3(%rip)
	jmp	.L1645
.L1633:
	movl	%ecx, regByte4Number4(%rip)
	jmp	.L1645
.L1632:
	movl	%ecx, 44(%rsp)
	movq	44(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1645
.L1631:
	movl	%ecx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1645
.L1630:
	movl	%ecx, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1645
.L1628:
	movl	%ecx, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1645
.L1627:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4576:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4576-.LLSDACSB4576
.LLSDACSB4576:
.LLSDACSE4576:
	.section	.text$_ZN3Mul3RunIjEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3Sub3RunIjEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN3Sub3RunIjEEvPhRj
	.def	_ZN3Sub3RunIjEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3Sub3RunIjEEvPhRj
_ZN3Sub3RunIjEEvPhRj:
.LFB4570:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %r8
	movl	(%r9), %ecx
	subl	(%r8), %ecx
	cmpb	$15, %al
	ja	.L1647
	movzbl	%al, %eax
	leaq	.L1649(%rip), %r8
	movslq	(%r8,%rax,4), %rax
	addq	%r8, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1649:
	.long	.L1664-.L1649
	.long	.L1663-.L1649
	.long	.L1662-.L1649
	.long	.L1661-.L1649
	.long	.L1660-.L1649
	.long	.L1659-.L1649
	.long	.L1658-.L1649
	.long	.L1657-.L1649
	.long	.L1656-.L1649
	.long	.L1655-.L1649
	.long	.L1654-.L1649
	.long	.L1653-.L1649
	.long	.L1652-.L1649
	.long	.L1651-.L1649
	.long	.L1650-.L1649
	.long	.L1648-.L1649
	.section	.text$_ZN3Sub3RunIjEEvPhRj,"x"
	.linkonce discard
.L1664:
	movb	%cl, regByte1Number1(%rip)
.L1665:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L1663:
	movb	%cl, regByte1Number2(%rip)
	jmp	.L1665
.L1662:
	movb	%cl, regByte1Number3(%rip)
	jmp	.L1665
.L1661:
	movb	%cl, regByte1Number4(%rip)
	jmp	.L1665
.L1660:
	movw	%cx, regByte2Number1(%rip)
	jmp	.L1665
.L1659:
	movw	%cx, regByte2Number2(%rip)
	jmp	.L1665
.L1658:
	movw	%cx, regByte2Number3(%rip)
	jmp	.L1665
.L1657:
	movw	%cx, regByte2Number4(%rip)
	jmp	.L1665
.L1656:
	movl	%ecx, regByte4Number1(%rip)
	jmp	.L1665
.L1655:
	movl	%ecx, regByte4Number2(%rip)
	jmp	.L1665
.L1654:
	movl	%ecx, regByte4Number3(%rip)
	jmp	.L1665
.L1653:
	movl	%ecx, regByte4Number4(%rip)
	jmp	.L1665
.L1652:
	movl	%ecx, 44(%rsp)
	movq	44(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1665
.L1651:
	movl	%ecx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1665
.L1650:
	movl	%ecx, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1665
.L1648:
	movl	%ecx, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1665
.L1647:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4570:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4570-.LLSDACSB4570
.LLSDACSB4570:
.LLSDACSE4570:
	.section	.text$_ZN3Sub3RunIjEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3Add3RunIjEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN3Add3RunIjEEvPhRj
	.def	_ZN3Add3RunIjEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3Add3RunIjEEvPhRj
_ZN3Add3RunIjEEvPhRj:
.LFB4564:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %rcx
	movl	(%rcx), %ecx
	addl	(%r9), %ecx
	cmpb	$15, %al
	ja	.L1667
	movzbl	%al, %eax
	leaq	.L1669(%rip), %r8
	movslq	(%r8,%rax,4), %rax
	addq	%r8, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1669:
	.long	.L1684-.L1669
	.long	.L1683-.L1669
	.long	.L1682-.L1669
	.long	.L1681-.L1669
	.long	.L1680-.L1669
	.long	.L1679-.L1669
	.long	.L1678-.L1669
	.long	.L1677-.L1669
	.long	.L1676-.L1669
	.long	.L1675-.L1669
	.long	.L1674-.L1669
	.long	.L1673-.L1669
	.long	.L1672-.L1669
	.long	.L1671-.L1669
	.long	.L1670-.L1669
	.long	.L1668-.L1669
	.section	.text$_ZN3Add3RunIjEEvPhRj,"x"
	.linkonce discard
.L1684:
	movb	%cl, regByte1Number1(%rip)
.L1685:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L1683:
	movb	%cl, regByte1Number2(%rip)
	jmp	.L1685
.L1682:
	movb	%cl, regByte1Number3(%rip)
	jmp	.L1685
.L1681:
	movb	%cl, regByte1Number4(%rip)
	jmp	.L1685
.L1680:
	movw	%cx, regByte2Number1(%rip)
	jmp	.L1685
.L1679:
	movw	%cx, regByte2Number2(%rip)
	jmp	.L1685
.L1678:
	movw	%cx, regByte2Number3(%rip)
	jmp	.L1685
.L1677:
	movw	%cx, regByte2Number4(%rip)
	jmp	.L1685
.L1676:
	movl	%ecx, regByte4Number1(%rip)
	jmp	.L1685
.L1675:
	movl	%ecx, regByte4Number2(%rip)
	jmp	.L1685
.L1674:
	movl	%ecx, regByte4Number3(%rip)
	jmp	.L1685
.L1673:
	movl	%ecx, regByte4Number4(%rip)
	jmp	.L1685
.L1672:
	movl	%ecx, 44(%rsp)
	movq	44(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1685
.L1671:
	movl	%ecx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1685
.L1670:
	movl	%ecx, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1685
.L1668:
	movl	%ecx, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1685
.L1667:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4564:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4564-.LLSDACSB4564
.LLSDACSB4564:
.LLSDACSE4564:
	.section	.text$_ZN3Add3RunIjEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN4PURS16PushReturnsStackEPhRj,"x"
	.linkonce discard
	.globl	_ZN4PURS16PushReturnsStackEPhRj
	.def	_ZN4PURS16PushReturnsStackEPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4PURS16PushReturnsStackEPhRj
_ZN4PURS16PushReturnsStackEPhRj:
.LFB3673:
	.seh_endprologue
	movzbl	(%rcx), %edx
	leaq	regTable(%rip), %rax
	movq	(%rax,%rdx,8), %rax
	movl	(%rax), %ecx
	movl	_ZL10returnsPtr(%rip), %edx
	movq	_ZL7returns(%rip), %rax
	movl	%ecx, (%rax,%rdx,4)
	ret
	.seh_endproc
	.section	.text$_ZN4CORS16CopyReturnsStackEPhRj,"x"
	.linkonce discard
	.globl	_ZN4CORS16CopyReturnsStackEPhRj
	.def	_ZN4CORS16CopyReturnsStackEPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4CORS16CopyReturnsStackEPhRj
_ZN4CORS16CopyReturnsStackEPhRj:
.LFB3670:
	.seh_endprologue
	movzbl	(%rcx), %edx
	leaq	regTable(%rip), %rax
	movq	(%rax,%rdx,8), %rax
	movl	(%rax), %ecx
	movl	_ZL10returnsPtr(%rip), %edx
	movq	_ZL7returns(%rip), %rax
	movl	%ecx, (%rax,%rdx,4)
	ret
	.seh_endproc
	.section	.text$_ZN7storeus7StoreusEPhRj,"x"
	.linkonce discard
	.globl	_ZN7storeus7StoreusEPhRj
	.def	_ZN7storeus7StoreusEPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN7storeus7StoreusEPhRj
_ZN7storeus7StoreusEPhRj:
.LFB3666:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movl	%eax, %r8d
	shrb	$2, %r8b
	cmpb	$15, (%rcx)
	ja	.L1714
	movzbl	(%rcx), %ecx
	leaq	.L1691(%rip), %r9
	movslq	(%r9,%rcx,4), %rcx
	addq	%r9, %rcx
	jmp	*%rcx
	.section .rdata,"dr"
	.align 4
.L1691:
	.long	.L1706-.L1691
	.long	.L1705-.L1691
	.long	.L1704-.L1691
	.long	.L1703-.L1691
	.long	.L1702-.L1691
	.long	.L1701-.L1691
	.long	.L1700-.L1691
	.long	.L1699-.L1691
	.long	.L1698-.L1691
	.long	.L1697-.L1691
	.long	.L1696-.L1691
	.long	.L1695-.L1691
	.long	.L1694-.L1691
	.long	.L1693-.L1691
	.long	.L1692-.L1691
	.long	.L1690-.L1691
	.section	.text$_ZN7storeus7StoreusEPhRj,"x"
	.linkonce discard
.L1706:
	movzbl	regByte1Number1(%rip), %r9d
.L1689:
	movzbl	%al, %eax
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	(%rax), %eax
	leaq	_ZL6memory(%rip), %rcx
	addq	%rcx, %rax
	cmpb	$2, %r8b
	je	.L1707
	ja	.L1708
	testb	%r8b, %r8b
	je	.L1717
	movw	%r9w, (%rax)
	jmp	.L1713
.L1705:
	movzbl	regByte1Number2(%rip), %r9d
	jmp	.L1689
.L1704:
	movzbl	regByte1Number3(%rip), %r9d
	jmp	.L1689
.L1703:
	movzbl	regByte1Number4(%rip), %r9d
	jmp	.L1689
.L1702:
	movzwl	regByte2Number1(%rip), %r9d
	jmp	.L1689
.L1701:
	movzwl	regByte2Number2(%rip), %r9d
	jmp	.L1689
.L1700:
	movzwl	regByte2Number3(%rip), %r9d
	jmp	.L1689
.L1699:
	movzwl	regByte2Number4(%rip), %r9d
	jmp	.L1689
.L1698:
	movl	regByte4Number1(%rip), %r9d
	jmp	.L1689
.L1697:
	movl	regByte4Number2(%rip), %r9d
	jmp	.L1689
.L1696:
	movl	regByte4Number3(%rip), %r9d
	jmp	.L1689
.L1695:
	movl	regByte4Number4(%rip), %r9d
	jmp	.L1689
.L1694:
	movq	regByte8Number1(%rip), %r9
	jmp	.L1689
.L1693:
	movq	regByte8Number2(%rip), %r9
	jmp	.L1689
.L1692:
	movq	regByte8Number3(%rip), %r9
	jmp	.L1689
.L1690:
	movq	regByte8Number4(%rip), %r9
	jmp	.L1689
.L1714:
	movq	$-1, %r9
	jmp	.L1689
.L1708:
	cmpb	$3, %r8b
	jne	.L1718
	movq	%r9, (%rax)
	jmp	.L1713
.L1717:
	movb	%r9b, (%rax)
.L1713:
	addl	$1, (%rdx)
	addq	$40, %rsp
	ret
.L1707:
	movl	%r9d, (%rax)
	jmp	.L1713
.L1718:
	leaq	.LC1(%rip), %rcx
	call	puts
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3666:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3666-.LLSDACSB3666
.LLSDACSB3666:
.LLSDACSE3666:
	.section	.text$_ZN7storeus7StoreusEPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN2TT3RunIjhEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN2TT3RunIjhEEvPhRj
	.def	_ZN2TT3RunIjhEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2TT3RunIjhEEvPhRj
_ZN2TT3RunIjhEEvPhRj:
.LFB4644:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	movl	(%rcx), %r8d
	cmpb	$15, %al
	ja	.L1720
	movzbl	%al, %eax
	leaq	.L1722(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1722:
	.long	.L1737-.L1722
	.long	.L1736-.L1722
	.long	.L1735-.L1722
	.long	.L1734-.L1722
	.long	.L1733-.L1722
	.long	.L1732-.L1722
	.long	.L1731-.L1722
	.long	.L1730-.L1722
	.long	.L1729-.L1722
	.long	.L1728-.L1722
	.long	.L1727-.L1722
	.long	.L1726-.L1722
	.long	.L1725-.L1722
	.long	.L1724-.L1722
	.long	.L1723-.L1722
	.long	.L1721-.L1722
	.section	.text$_ZN2TT3RunIjhEEvPhRj,"x"
	.linkonce discard
.L1737:
	movb	%r8b, regByte1Number1(%rip)
.L1738:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L1736:
	movb	%r8b, regByte1Number2(%rip)
	jmp	.L1738
.L1735:
	movb	%r8b, regByte1Number3(%rip)
	jmp	.L1738
.L1734:
	movb	%r8b, regByte1Number4(%rip)
	jmp	.L1738
.L1733:
	movb	%r8b, 47(%rsp)
	movzwl	47(%rsp), %eax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L1738
.L1732:
	movb	%r8b, 46(%rsp)
	movzwl	46(%rsp), %eax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L1738
.L1731:
	movb	%r8b, 45(%rsp)
	movzwl	45(%rsp), %eax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L1738
.L1730:
	movb	%r8b, 44(%rsp)
	movzwl	44(%rsp), %eax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L1738
.L1729:
	movb	%r8b, 43(%rsp)
	movl	43(%rsp), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L1738
.L1728:
	movb	%r8b, 42(%rsp)
	movl	42(%rsp), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L1738
.L1727:
	movb	%r8b, 41(%rsp)
	movl	41(%rsp), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L1738
.L1726:
	movb	%r8b, 40(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L1738
.L1725:
	movb	%r8b, 39(%rsp)
	movq	39(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1738
.L1724:
	movb	%r8b, 38(%rsp)
	movq	38(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1738
.L1723:
	movb	%r8b, 37(%rsp)
	movq	37(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1738
.L1721:
	movb	%r8b, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1738
.L1720:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4644:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4644-.LLSDACSB4644
.LLSDACSB4644:
.LLSDACSE4644:
	.section	.text$_ZN2TT3RunIjhEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN2TT3RunIjtEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN2TT3RunIjtEEvPhRj
	.def	_ZN2TT3RunIjtEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2TT3RunIjtEEvPhRj
_ZN2TT3RunIjtEEvPhRj:
.LFB4645:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	movl	(%rcx), %r8d
	cmpb	$15, %al
	ja	.L1740
	movzbl	%al, %eax
	leaq	.L1742(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1742:
	.long	.L1757-.L1742
	.long	.L1756-.L1742
	.long	.L1755-.L1742
	.long	.L1754-.L1742
	.long	.L1753-.L1742
	.long	.L1752-.L1742
	.long	.L1751-.L1742
	.long	.L1750-.L1742
	.long	.L1749-.L1742
	.long	.L1748-.L1742
	.long	.L1747-.L1742
	.long	.L1746-.L1742
	.long	.L1745-.L1742
	.long	.L1744-.L1742
	.long	.L1743-.L1742
	.long	.L1741-.L1742
	.section	.text$_ZN2TT3RunIjtEEvPhRj,"x"
	.linkonce discard
.L1757:
	movb	%r8b, regByte1Number1(%rip)
.L1758:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L1756:
	movb	%r8b, regByte1Number2(%rip)
	jmp	.L1758
.L1755:
	movb	%r8b, regByte1Number3(%rip)
	jmp	.L1758
.L1754:
	movb	%r8b, regByte1Number4(%rip)
	jmp	.L1758
.L1753:
	movw	%r8w, regByte2Number1(%rip)
	jmp	.L1758
.L1752:
	movw	%r8w, regByte2Number2(%rip)
	jmp	.L1758
.L1751:
	movw	%r8w, regByte2Number3(%rip)
	jmp	.L1758
.L1750:
	movw	%r8w, regByte2Number4(%rip)
	jmp	.L1758
.L1749:
	movw	%r8w, 46(%rsp)
	movl	46(%rsp), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L1758
.L1748:
	movw	%r8w, 44(%rsp)
	movl	44(%rsp), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L1758
.L1747:
	movw	%r8w, 42(%rsp)
	movl	42(%rsp), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L1758
.L1746:
	movw	%r8w, 40(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L1758
.L1745:
	movw	%r8w, 38(%rsp)
	movq	38(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1758
.L1744:
	movw	%r8w, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1758
.L1743:
	movw	%r8w, 34(%rsp)
	movq	34(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1758
.L1741:
	movw	%r8w, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1758
.L1740:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4645:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4645-.LLSDACSB4645
.LLSDACSB4645:
.LLSDACSE4645:
	.section	.text$_ZN2TT3RunIjtEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN2TT3RunIjjEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN2TT3RunIjjEEvPhRj
	.def	_ZN2TT3RunIjjEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2TT3RunIjjEEvPhRj
_ZN2TT3RunIjjEEvPhRj:
.LFB4646:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	movl	(%rcx), %r8d
	cmpb	$15, %al
	ja	.L1760
	movzbl	%al, %eax
	leaq	.L1762(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1762:
	.long	.L1777-.L1762
	.long	.L1776-.L1762
	.long	.L1775-.L1762
	.long	.L1774-.L1762
	.long	.L1773-.L1762
	.long	.L1772-.L1762
	.long	.L1771-.L1762
	.long	.L1770-.L1762
	.long	.L1769-.L1762
	.long	.L1768-.L1762
	.long	.L1767-.L1762
	.long	.L1766-.L1762
	.long	.L1765-.L1762
	.long	.L1764-.L1762
	.long	.L1763-.L1762
	.long	.L1761-.L1762
	.section	.text$_ZN2TT3RunIjjEEvPhRj,"x"
	.linkonce discard
.L1777:
	movb	%r8b, regByte1Number1(%rip)
.L1778:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L1776:
	movb	%r8b, regByte1Number2(%rip)
	jmp	.L1778
.L1775:
	movb	%r8b, regByte1Number3(%rip)
	jmp	.L1778
.L1774:
	movb	%r8b, regByte1Number4(%rip)
	jmp	.L1778
.L1773:
	movw	%r8w, regByte2Number1(%rip)
	jmp	.L1778
.L1772:
	movw	%r8w, regByte2Number2(%rip)
	jmp	.L1778
.L1771:
	movw	%r8w, regByte2Number3(%rip)
	jmp	.L1778
.L1770:
	movw	%r8w, regByte2Number4(%rip)
	jmp	.L1778
.L1769:
	movl	%r8d, regByte4Number1(%rip)
	jmp	.L1778
.L1768:
	movl	%r8d, regByte4Number2(%rip)
	jmp	.L1778
.L1767:
	movl	%r8d, regByte4Number3(%rip)
	jmp	.L1778
.L1766:
	movl	%r8d, regByte4Number4(%rip)
	jmp	.L1778
.L1765:
	movl	%r8d, 44(%rsp)
	movq	44(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1778
.L1764:
	movl	%r8d, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1778
.L1763:
	movl	%r8d, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1778
.L1761:
	movl	%r8d, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1778
.L1760:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4646:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4646-.LLSDACSB4646
.LLSDACSB4646:
.LLSDACSE4646:
	.section	.text$_ZN2TT3RunIjjEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN2TT3RunIjyEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN2TT3RunIjyEEvPhRj
	.def	_ZN2TT3RunIjyEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2TT3RunIjyEEvPhRj
_ZN2TT3RunIjyEEvPhRj:
.LFB4647:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	movl	(%rcx), %r8d
	movl	%r8d, %r9d
	cmpb	$15, %al
	ja	.L1780
	movzbl	%al, %eax
	leaq	.L1782(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1782:
	.long	.L1797-.L1782
	.long	.L1796-.L1782
	.long	.L1795-.L1782
	.long	.L1794-.L1782
	.long	.L1793-.L1782
	.long	.L1792-.L1782
	.long	.L1791-.L1782
	.long	.L1790-.L1782
	.long	.L1789-.L1782
	.long	.L1788-.L1782
	.long	.L1787-.L1782
	.long	.L1786-.L1782
	.long	.L1785-.L1782
	.long	.L1784-.L1782
	.long	.L1783-.L1782
	.long	.L1781-.L1782
	.section	.text$_ZN2TT3RunIjyEEvPhRj,"x"
	.linkonce discard
.L1797:
	movb	%r8b, regByte1Number1(%rip)
.L1798:
	addl	$1, (%rdx)
	addq	$40, %rsp
	ret
.L1796:
	movb	%r8b, regByte1Number2(%rip)
	jmp	.L1798
.L1795:
	movb	%r8b, regByte1Number3(%rip)
	jmp	.L1798
.L1794:
	movb	%r8b, regByte1Number4(%rip)
	jmp	.L1798
.L1793:
	movw	%r8w, regByte2Number1(%rip)
	jmp	.L1798
.L1792:
	movw	%r8w, regByte2Number2(%rip)
	jmp	.L1798
.L1791:
	movw	%r8w, regByte2Number3(%rip)
	jmp	.L1798
.L1790:
	movw	%r8w, regByte2Number4(%rip)
	jmp	.L1798
.L1789:
	movl	%r8d, regByte4Number1(%rip)
	jmp	.L1798
.L1788:
	movl	%r8d, regByte4Number2(%rip)
	jmp	.L1798
.L1787:
	movl	%r8d, regByte4Number3(%rip)
	jmp	.L1798
.L1786:
	movl	%r8d, regByte4Number4(%rip)
	jmp	.L1798
.L1785:
	movq	%r9, regByte8Number1(%rip)
	jmp	.L1798
.L1784:
	movq	%r9, regByte8Number2(%rip)
	jmp	.L1798
.L1783:
	movq	%r9, regByte8Number3(%rip)
	jmp	.L1798
.L1781:
	movq	%r9, regByte8Number4(%rip)
	jmp	.L1798
.L1780:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4647:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4647-.LLSDACSB4647
.LLSDACSB4647:
.LLSDACSE4647:
	.section	.text$_ZN2TT3RunIjyEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN2TT3RunIjfEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN2TT3RunIjfEEvPhRj
	.def	_ZN2TT3RunIjfEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2TT3RunIjfEEvPhRj
_ZN2TT3RunIjfEEvPhRj:
.LFB4648:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	movl	(%rcx), %ecx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rcx, %xmm0
	cmpb	$15, %al
	ja	.L1802
	movzbl	%al, %eax
	leaq	.L1804(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1804:
	.long	.L1819-.L1804
	.long	.L1818-.L1804
	.long	.L1817-.L1804
	.long	.L1816-.L1804
	.long	.L1815-.L1804
	.long	.L1814-.L1804
	.long	.L1813-.L1804
	.long	.L1812-.L1804
	.long	.L1811-.L1804
	.long	.L1810-.L1804
	.long	.L1809-.L1804
	.long	.L1808-.L1804
	.long	.L1807-.L1804
	.long	.L1806-.L1804
	.long	.L1805-.L1804
	.long	.L1803-.L1804
	.section	.text$_ZN2TT3RunIjfEEvPhRj,"x"
	.linkonce discard
.L1819:
	movd	%xmm0, %eax
	movb	%al, regByte1Number1(%rip)
.L1820:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L1818:
	movd	%xmm0, %eax
	movb	%al, regByte1Number2(%rip)
	jmp	.L1820
.L1817:
	movd	%xmm0, %eax
	movb	%al, regByte1Number3(%rip)
	jmp	.L1820
.L1816:
	movd	%xmm0, %eax
	movb	%al, regByte1Number4(%rip)
	jmp	.L1820
.L1815:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L1820
.L1814:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L1820
.L1813:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L1820
.L1812:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L1820
.L1811:
	movss	%xmm0, regByte4Number1(%rip)
	jmp	.L1820
.L1810:
	movss	%xmm0, regByte4Number2(%rip)
	jmp	.L1820
.L1809:
	movss	%xmm0, regByte4Number3(%rip)
	jmp	.L1820
.L1808:
	movss	%xmm0, regByte4Number4(%rip)
	jmp	.L1820
.L1807:
	movss	%xmm0, 44(%rsp)
	movq	44(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1820
.L1806:
	movss	%xmm0, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1820
.L1805:
	movss	%xmm0, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1820
.L1803:
	movss	%xmm0, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1820
.L1802:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4648:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4648-.LLSDACSB4648
.LLSDACSB4648:
.LLSDACSE4648:
	.section	.text$_ZN2TT3RunIjfEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN2TT3RunIjdEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN2TT3RunIjdEEvPhRj
	.def	_ZN2TT3RunIjdEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2TT3RunIjdEEvPhRj
_ZN2TT3RunIjdEEvPhRj:
.LFB4649:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	movl	(%rcx), %ecx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rcx, %xmm0
	cmpb	$15, %al
	ja	.L1824
	movzbl	%al, %eax
	leaq	.L1826(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1826:
	.long	.L1841-.L1826
	.long	.L1840-.L1826
	.long	.L1839-.L1826
	.long	.L1838-.L1826
	.long	.L1837-.L1826
	.long	.L1836-.L1826
	.long	.L1835-.L1826
	.long	.L1834-.L1826
	.long	.L1833-.L1826
	.long	.L1832-.L1826
	.long	.L1831-.L1826
	.long	.L1830-.L1826
	.long	.L1829-.L1826
	.long	.L1828-.L1826
	.long	.L1827-.L1826
	.long	.L1825-.L1826
	.section	.text$_ZN2TT3RunIjdEEvPhRj,"x"
	.linkonce discard
.L1841:
	movq	%xmm0, %rax
	movb	%al, regByte1Number1(%rip)
.L1842:
	addl	$1, (%rdx)
	addq	$40, %rsp
	ret
.L1840:
	movq	%xmm0, %rax
	movb	%al, regByte1Number2(%rip)
	jmp	.L1842
.L1839:
	movq	%xmm0, %rax
	movb	%al, regByte1Number3(%rip)
	jmp	.L1842
.L1838:
	movq	%xmm0, %rax
	movb	%al, regByte1Number4(%rip)
	jmp	.L1842
.L1837:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L1842
.L1836:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L1842
.L1835:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L1842
.L1834:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L1842
.L1833:
	movd	%xmm0, regByte4Number1(%rip)
	jmp	.L1842
.L1832:
	movd	%xmm0, regByte4Number2(%rip)
	jmp	.L1842
.L1831:
	movd	%xmm0, regByte4Number3(%rip)
	jmp	.L1842
.L1830:
	movd	%xmm0, regByte4Number4(%rip)
	jmp	.L1842
.L1829:
	movsd	%xmm0, regByte8Number1(%rip)
	jmp	.L1842
.L1828:
	movsd	%xmm0, regByte8Number2(%rip)
	jmp	.L1842
.L1827:
	movsd	%xmm0, regByte8Number3(%rip)
	jmp	.L1842
.L1825:
	movsd	%xmm0, regByte8Number4(%rip)
	jmp	.L1842
.L1824:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4649:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4649-.LLSDACSB4649
.LLSDACSB4649:
.LLSDACSE4649:
	.section	.text$_ZN2TT3RunIjdEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN6loadus6LoadusEPhRj,"x"
	.linkonce discard
	.globl	_ZN6loadus6LoadusEPhRj
	.def	_ZN6loadus6LoadusEPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6loadus6LoadusEPhRj
_ZN6loadus6LoadusEPhRj:
.LFB3667:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzbl	(%rcx), %eax
	movzbl	1(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	movl	(%rcx), %ecx
	leaq	_ZL6memory(%rip), %r8
	addq	%r8, %rcx
	cmpb	$15, %al
	ja	.L1844
	movzbl	%al, %eax
	leaq	.L1846(%rip), %r8
	movslq	(%r8,%rax,4), %rax
	addq	%r8, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1846:
	.long	.L1861-.L1846
	.long	.L1860-.L1846
	.long	.L1859-.L1846
	.long	.L1858-.L1846
	.long	.L1857-.L1846
	.long	.L1856-.L1846
	.long	.L1855-.L1846
	.long	.L1854-.L1846
	.long	.L1853-.L1846
	.long	.L1852-.L1846
	.long	.L1851-.L1846
	.long	.L1850-.L1846
	.long	.L1849-.L1846
	.long	.L1848-.L1846
	.long	.L1847-.L1846
	.long	.L1845-.L1846
	.section	.text$_ZN6loadus6LoadusEPhRj,"x"
	.linkonce discard
.L1861:
	movzbl	(%rcx), %eax
	movb	%al, regByte1Number1(%rip)
.L1862:
	addl	$1, (%rdx)
	addq	$40, %rsp
	ret
.L1860:
	movzbl	(%rcx), %eax
	movb	%al, regByte1Number2(%rip)
	jmp	.L1862
.L1859:
	movzbl	(%rcx), %eax
	movb	%al, regByte1Number3(%rip)
	jmp	.L1862
.L1858:
	movzbl	(%rcx), %eax
	movb	%al, regByte1Number4(%rip)
	jmp	.L1862
.L1857:
	movzwl	(%rcx), %eax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L1862
.L1856:
	movzwl	(%rcx), %eax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L1862
.L1855:
	movzwl	(%rcx), %eax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L1862
.L1854:
	movzwl	(%rcx), %eax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L1862
.L1853:
	movl	(%rcx), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L1862
.L1852:
	movl	(%rcx), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L1862
.L1851:
	movl	(%rcx), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L1862
.L1850:
	movl	(%rcx), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L1862
.L1849:
	movq	(%rcx), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1862
.L1848:
	movq	(%rcx), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1862
.L1847:
	movq	(%rcx), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1862
.L1845:
	movq	(%rcx), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1862
.L1844:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3667:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3667-.LLSDACSB3667
.LLSDACSB3667:
.LLSDACSE3667:
	.section	.text$_ZN6loadus6LoadusEPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN6gotous6GotousEPhRj,"x"
	.linkonce discard
	.globl	_ZN6gotous6GotousEPhRj
	.def	_ZN6gotous6GotousEPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6gotous6GotousEPhRj
_ZN6gotous6GotousEPhRj:
.LFB3668:
	.seh_endprologue
	movzbl	(%rcx), %ecx
	leaq	regTable(%rip), %rax
	movq	(%rax,%rcx,8), %rax
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	ret
	.seh_endproc
	.section	.text$_ZN10LogicalNot3RunIhEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN10LogicalNot3RunIhEEvPhRj
	.def	_ZN10LogicalNot3RunIhEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10LogicalNot3RunIhEEvPhRj
_ZN10LogicalNot3RunIhEEvPhRj:
.LFB4628:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	cmpb	$0, (%rcx)
	sete	%r8b
	cmpb	$15, %al
	ja	.L1865
	movzbl	%al, %eax
	leaq	.L1867(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1867:
	.long	.L1882-.L1867
	.long	.L1881-.L1867
	.long	.L1880-.L1867
	.long	.L1879-.L1867
	.long	.L1878-.L1867
	.long	.L1877-.L1867
	.long	.L1876-.L1867
	.long	.L1875-.L1867
	.long	.L1874-.L1867
	.long	.L1873-.L1867
	.long	.L1872-.L1867
	.long	.L1871-.L1867
	.long	.L1870-.L1867
	.long	.L1869-.L1867
	.long	.L1868-.L1867
	.long	.L1866-.L1867
	.section	.text$_ZN10LogicalNot3RunIhEEvPhRj,"x"
	.linkonce discard
.L1882:
	movb	%r8b, regByte1Number1(%rip)
.L1883:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L1881:
	movb	%r8b, regByte1Number2(%rip)
	jmp	.L1883
.L1880:
	movb	%r8b, regByte1Number3(%rip)
	jmp	.L1883
.L1879:
	movb	%r8b, regByte1Number4(%rip)
	jmp	.L1883
.L1878:
	movb	%r8b, 47(%rsp)
	movzwl	47(%rsp), %eax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L1883
.L1877:
	movb	%r8b, 46(%rsp)
	movzwl	46(%rsp), %eax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L1883
.L1876:
	movb	%r8b, 45(%rsp)
	movzwl	45(%rsp), %eax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L1883
.L1875:
	movb	%r8b, 44(%rsp)
	movzwl	44(%rsp), %eax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L1883
.L1874:
	movb	%r8b, 43(%rsp)
	movl	43(%rsp), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L1883
.L1873:
	movb	%r8b, 42(%rsp)
	movl	42(%rsp), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L1883
.L1872:
	movb	%r8b, 41(%rsp)
	movl	41(%rsp), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L1883
.L1871:
	movb	%r8b, 40(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L1883
.L1870:
	movb	%r8b, 39(%rsp)
	movq	39(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1883
.L1869:
	movb	%r8b, 38(%rsp)
	movq	38(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1883
.L1868:
	movb	%r8b, 37(%rsp)
	movq	37(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1883
.L1866:
	movb	%r8b, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1883
.L1865:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4628:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4628-.LLSDACSB4628
.LLSDACSB4628:
.LLSDACSE4628:
	.section	.text$_ZN10LogicalNot3RunIhEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN9LogicalOr3RunIhEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN9LogicalOr3RunIhEEvPhRj
	.def	_ZN9LogicalOr3RunIhEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9LogicalOr3RunIhEEvPhRj
_ZN9LogicalOr3RunIhEEvPhRj:
.LFB4624:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %r8
	movzbl	(%r9), %ecx
	orb	(%r8), %cl
	setne	%r8b
	cmpb	$15, %al
	ja	.L1885
	movzbl	%al, %eax
	leaq	.L1887(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1887:
	.long	.L1902-.L1887
	.long	.L1901-.L1887
	.long	.L1900-.L1887
	.long	.L1899-.L1887
	.long	.L1898-.L1887
	.long	.L1897-.L1887
	.long	.L1896-.L1887
	.long	.L1895-.L1887
	.long	.L1894-.L1887
	.long	.L1893-.L1887
	.long	.L1892-.L1887
	.long	.L1891-.L1887
	.long	.L1890-.L1887
	.long	.L1889-.L1887
	.long	.L1888-.L1887
	.long	.L1886-.L1887
	.section	.text$_ZN9LogicalOr3RunIhEEvPhRj,"x"
	.linkonce discard
.L1902:
	movb	%r8b, regByte1Number1(%rip)
.L1903:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L1901:
	movb	%r8b, regByte1Number2(%rip)
	jmp	.L1903
.L1900:
	movb	%r8b, regByte1Number3(%rip)
	jmp	.L1903
.L1899:
	movb	%r8b, regByte1Number4(%rip)
	jmp	.L1903
.L1898:
	movb	%r8b, 47(%rsp)
	movzwl	47(%rsp), %eax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L1903
.L1897:
	movb	%r8b, 46(%rsp)
	movzwl	46(%rsp), %eax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L1903
.L1896:
	movb	%r8b, 45(%rsp)
	movzwl	45(%rsp), %eax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L1903
.L1895:
	movb	%r8b, 44(%rsp)
	movzwl	44(%rsp), %eax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L1903
.L1894:
	movb	%r8b, 43(%rsp)
	movl	43(%rsp), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L1903
.L1893:
	movb	%r8b, 42(%rsp)
	movl	42(%rsp), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L1903
.L1892:
	movb	%r8b, 41(%rsp)
	movl	41(%rsp), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L1903
.L1891:
	movb	%r8b, 40(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L1903
.L1890:
	movb	%r8b, 39(%rsp)
	movq	39(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1903
.L1889:
	movb	%r8b, 38(%rsp)
	movq	38(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1903
.L1888:
	movb	%r8b, 37(%rsp)
	movq	37(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1903
.L1886:
	movb	%r8b, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1903
.L1885:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4624:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4624-.LLSDACSB4624
.LLSDACSB4624:
.LLSDACSE4624:
	.section	.text$_ZN9LogicalOr3RunIhEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN10LogicalAnd3RunIhEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN10LogicalAnd3RunIhEEvPhRj
	.def	_ZN10LogicalAnd3RunIhEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10LogicalAnd3RunIhEEvPhRj
_ZN10LogicalAnd3RunIhEEvPhRj:
.LFB4620:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r9
	movzbl	(%rcx), %r8d
	movq	(%r9,%r8,8), %r8
	cmpb	$0, (%r8)
	setne	%r8b
	movzbl	1(%rcx), %ecx
	movq	(%r9,%rcx,8), %rcx
	cmpb	$0, (%rcx)
	setne	%cl
	andl	%ecx, %r8d
	cmpb	$15, %al
	ja	.L1905
	movzbl	%al, %eax
	leaq	.L1907(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1907:
	.long	.L1922-.L1907
	.long	.L1921-.L1907
	.long	.L1920-.L1907
	.long	.L1919-.L1907
	.long	.L1918-.L1907
	.long	.L1917-.L1907
	.long	.L1916-.L1907
	.long	.L1915-.L1907
	.long	.L1914-.L1907
	.long	.L1913-.L1907
	.long	.L1912-.L1907
	.long	.L1911-.L1907
	.long	.L1910-.L1907
	.long	.L1909-.L1907
	.long	.L1908-.L1907
	.long	.L1906-.L1907
	.section	.text$_ZN10LogicalAnd3RunIhEEvPhRj,"x"
	.linkonce discard
.L1922:
	movb	%r8b, regByte1Number1(%rip)
.L1923:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L1921:
	movb	%r8b, regByte1Number2(%rip)
	jmp	.L1923
.L1920:
	movb	%r8b, regByte1Number3(%rip)
	jmp	.L1923
.L1919:
	movb	%r8b, regByte1Number4(%rip)
	jmp	.L1923
.L1918:
	movb	%r8b, 47(%rsp)
	movzwl	47(%rsp), %eax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L1923
.L1917:
	movb	%r8b, 46(%rsp)
	movzwl	46(%rsp), %eax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L1923
.L1916:
	movb	%r8b, 45(%rsp)
	movzwl	45(%rsp), %eax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L1923
.L1915:
	movb	%r8b, 44(%rsp)
	movzwl	44(%rsp), %eax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L1923
.L1914:
	movb	%r8b, 43(%rsp)
	movl	43(%rsp), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L1923
.L1913:
	movb	%r8b, 42(%rsp)
	movl	42(%rsp), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L1923
.L1912:
	movb	%r8b, 41(%rsp)
	movl	41(%rsp), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L1923
.L1911:
	movb	%r8b, 40(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L1923
.L1910:
	movb	%r8b, 39(%rsp)
	movq	39(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1923
.L1909:
	movb	%r8b, 38(%rsp)
	movq	38(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1923
.L1908:
	movb	%r8b, 37(%rsp)
	movq	37(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1923
.L1906:
	movb	%r8b, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1923
.L1905:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4620:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4620-.LLSDACSB4620
.LLSDACSB4620:
.LLSDACSE4620:
	.section	.text$_ZN10LogicalAnd3RunIhEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3Xor3RunIhEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN3Xor3RunIhEEvPhRj
	.def	_ZN3Xor3RunIhEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3Xor3RunIhEEvPhRj
_ZN3Xor3RunIhEEvPhRj:
.LFB4616:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %r8
	movzbl	(%r9), %ecx
	xorb	(%r8), %cl
	cmpb	$15, %al
	ja	.L1925
	movzbl	%al, %eax
	leaq	.L1927(%rip), %r8
	movslq	(%r8,%rax,4), %rax
	addq	%r8, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1927:
	.long	.L1942-.L1927
	.long	.L1941-.L1927
	.long	.L1940-.L1927
	.long	.L1939-.L1927
	.long	.L1938-.L1927
	.long	.L1937-.L1927
	.long	.L1936-.L1927
	.long	.L1935-.L1927
	.long	.L1934-.L1927
	.long	.L1933-.L1927
	.long	.L1932-.L1927
	.long	.L1931-.L1927
	.long	.L1930-.L1927
	.long	.L1929-.L1927
	.long	.L1928-.L1927
	.long	.L1926-.L1927
	.section	.text$_ZN3Xor3RunIhEEvPhRj,"x"
	.linkonce discard
.L1942:
	movb	%cl, regByte1Number1(%rip)
.L1943:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L1941:
	movb	%cl, regByte1Number2(%rip)
	jmp	.L1943
.L1940:
	movb	%cl, regByte1Number3(%rip)
	jmp	.L1943
.L1939:
	movb	%cl, regByte1Number4(%rip)
	jmp	.L1943
.L1938:
	movb	%cl, 47(%rsp)
	movzwl	47(%rsp), %eax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L1943
.L1937:
	movb	%cl, 46(%rsp)
	movzwl	46(%rsp), %eax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L1943
.L1936:
	movb	%cl, 45(%rsp)
	movzwl	45(%rsp), %eax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L1943
.L1935:
	movb	%cl, 44(%rsp)
	movzwl	44(%rsp), %eax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L1943
.L1934:
	movb	%cl, 43(%rsp)
	movl	43(%rsp), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L1943
.L1933:
	movb	%cl, 42(%rsp)
	movl	42(%rsp), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L1943
.L1932:
	movb	%cl, 41(%rsp)
	movl	41(%rsp), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L1943
.L1931:
	movb	%cl, 40(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L1943
.L1930:
	movb	%cl, 39(%rsp)
	movq	39(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1943
.L1929:
	movb	%cl, 38(%rsp)
	movq	38(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1943
.L1928:
	movb	%cl, 37(%rsp)
	movq	37(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1943
.L1926:
	movb	%cl, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1943
.L1925:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4616:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4616-.LLSDACSB4616
.LLSDACSB4616:
.LLSDACSE4616:
	.section	.text$_ZN3Xor3RunIhEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3Not3RunIhEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN3Not3RunIhEEvPhRj
	.def	_ZN3Not3RunIhEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3Not3RunIhEEvPhRj
_ZN3Not3RunIhEEvPhRj:
.LFB4612:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	movzbl	(%rcx), %ecx
	notl	%ecx
	cmpb	$15, %al
	ja	.L1945
	movzbl	%al, %eax
	leaq	.L1947(%rip), %r8
	movslq	(%r8,%rax,4), %rax
	addq	%r8, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1947:
	.long	.L1962-.L1947
	.long	.L1961-.L1947
	.long	.L1960-.L1947
	.long	.L1959-.L1947
	.long	.L1958-.L1947
	.long	.L1957-.L1947
	.long	.L1956-.L1947
	.long	.L1955-.L1947
	.long	.L1954-.L1947
	.long	.L1953-.L1947
	.long	.L1952-.L1947
	.long	.L1951-.L1947
	.long	.L1950-.L1947
	.long	.L1949-.L1947
	.long	.L1948-.L1947
	.long	.L1946-.L1947
	.section	.text$_ZN3Not3RunIhEEvPhRj,"x"
	.linkonce discard
.L1962:
	movb	%cl, regByte1Number1(%rip)
.L1963:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L1961:
	movb	%cl, regByte1Number2(%rip)
	jmp	.L1963
.L1960:
	movb	%cl, regByte1Number3(%rip)
	jmp	.L1963
.L1959:
	movb	%cl, regByte1Number4(%rip)
	jmp	.L1963
.L1958:
	movb	%cl, 47(%rsp)
	movzwl	47(%rsp), %eax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L1963
.L1957:
	movb	%cl, 46(%rsp)
	movzwl	46(%rsp), %eax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L1963
.L1956:
	movb	%cl, 45(%rsp)
	movzwl	45(%rsp), %eax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L1963
.L1955:
	movb	%cl, 44(%rsp)
	movzwl	44(%rsp), %eax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L1963
.L1954:
	movb	%cl, 43(%rsp)
	movl	43(%rsp), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L1963
.L1953:
	movb	%cl, 42(%rsp)
	movl	42(%rsp), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L1963
.L1952:
	movb	%cl, 41(%rsp)
	movl	41(%rsp), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L1963
.L1951:
	movb	%cl, 40(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L1963
.L1950:
	movb	%cl, 39(%rsp)
	movq	39(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1963
.L1949:
	movb	%cl, 38(%rsp)
	movq	38(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1963
.L1948:
	movb	%cl, 37(%rsp)
	movq	37(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1963
.L1946:
	movb	%cl, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1963
.L1945:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4612:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4612-.LLSDACSB4612
.LLSDACSB4612:
.LLSDACSE4612:
	.section	.text$_ZN3Not3RunIhEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN2Or3RunIhEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN2Or3RunIhEEvPhRj
	.def	_ZN2Or3RunIhEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2Or3RunIhEEvPhRj
_ZN2Or3RunIhEEvPhRj:
.LFB4608:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %r8
	movzbl	(%r9), %ecx
	orb	(%r8), %cl
	cmpb	$15, %al
	ja	.L1965
	movzbl	%al, %eax
	leaq	.L1967(%rip), %r8
	movslq	(%r8,%rax,4), %rax
	addq	%r8, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1967:
	.long	.L1982-.L1967
	.long	.L1981-.L1967
	.long	.L1980-.L1967
	.long	.L1979-.L1967
	.long	.L1978-.L1967
	.long	.L1977-.L1967
	.long	.L1976-.L1967
	.long	.L1975-.L1967
	.long	.L1974-.L1967
	.long	.L1973-.L1967
	.long	.L1972-.L1967
	.long	.L1971-.L1967
	.long	.L1970-.L1967
	.long	.L1969-.L1967
	.long	.L1968-.L1967
	.long	.L1966-.L1967
	.section	.text$_ZN2Or3RunIhEEvPhRj,"x"
	.linkonce discard
.L1982:
	movb	%cl, regByte1Number1(%rip)
.L1983:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L1981:
	movb	%cl, regByte1Number2(%rip)
	jmp	.L1983
.L1980:
	movb	%cl, regByte1Number3(%rip)
	jmp	.L1983
.L1979:
	movb	%cl, regByte1Number4(%rip)
	jmp	.L1983
.L1978:
	movb	%cl, 47(%rsp)
	movzwl	47(%rsp), %eax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L1983
.L1977:
	movb	%cl, 46(%rsp)
	movzwl	46(%rsp), %eax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L1983
.L1976:
	movb	%cl, 45(%rsp)
	movzwl	45(%rsp), %eax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L1983
.L1975:
	movb	%cl, 44(%rsp)
	movzwl	44(%rsp), %eax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L1983
.L1974:
	movb	%cl, 43(%rsp)
	movl	43(%rsp), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L1983
.L1973:
	movb	%cl, 42(%rsp)
	movl	42(%rsp), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L1983
.L1972:
	movb	%cl, 41(%rsp)
	movl	41(%rsp), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L1983
.L1971:
	movb	%cl, 40(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L1983
.L1970:
	movb	%cl, 39(%rsp)
	movq	39(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L1983
.L1969:
	movb	%cl, 38(%rsp)
	movq	38(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L1983
.L1968:
	movb	%cl, 37(%rsp)
	movq	37(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L1983
.L1966:
	movb	%cl, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L1983
.L1965:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4608:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4608-.LLSDACSB4608
.LLSDACSB4608:
.LLSDACSE4608:
	.section	.text$_ZN2Or3RunIhEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3And3RunIhEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN3And3RunIhEEvPhRj
	.def	_ZN3And3RunIhEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3And3RunIhEEvPhRj
_ZN3And3RunIhEEvPhRj:
.LFB4604:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %r8
	movzbl	(%r9), %ecx
	andb	(%r8), %cl
	cmpb	$15, %al
	ja	.L1985
	movzbl	%al, %eax
	leaq	.L1987(%rip), %r8
	movslq	(%r8,%rax,4), %rax
	addq	%r8, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1987:
	.long	.L2002-.L1987
	.long	.L2001-.L1987
	.long	.L2000-.L1987
	.long	.L1999-.L1987
	.long	.L1998-.L1987
	.long	.L1997-.L1987
	.long	.L1996-.L1987
	.long	.L1995-.L1987
	.long	.L1994-.L1987
	.long	.L1993-.L1987
	.long	.L1992-.L1987
	.long	.L1991-.L1987
	.long	.L1990-.L1987
	.long	.L1989-.L1987
	.long	.L1988-.L1987
	.long	.L1986-.L1987
	.section	.text$_ZN3And3RunIhEEvPhRj,"x"
	.linkonce discard
.L2002:
	movb	%cl, regByte1Number1(%rip)
.L2003:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L2001:
	movb	%cl, regByte1Number2(%rip)
	jmp	.L2003
.L2000:
	movb	%cl, regByte1Number3(%rip)
	jmp	.L2003
.L1999:
	movb	%cl, regByte1Number4(%rip)
	jmp	.L2003
.L1998:
	movb	%cl, 47(%rsp)
	movzwl	47(%rsp), %eax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L2003
.L1997:
	movb	%cl, 46(%rsp)
	movzwl	46(%rsp), %eax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L2003
.L1996:
	movb	%cl, 45(%rsp)
	movzwl	45(%rsp), %eax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L2003
.L1995:
	movb	%cl, 44(%rsp)
	movzwl	44(%rsp), %eax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L2003
.L1994:
	movb	%cl, 43(%rsp)
	movl	43(%rsp), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L2003
.L1993:
	movb	%cl, 42(%rsp)
	movl	42(%rsp), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L2003
.L1992:
	movb	%cl, 41(%rsp)
	movl	41(%rsp), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L2003
.L1991:
	movb	%cl, 40(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L2003
.L1990:
	movb	%cl, 39(%rsp)
	movq	39(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L2003
.L1989:
	movb	%cl, 38(%rsp)
	movq	38(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L2003
.L1988:
	movb	%cl, 37(%rsp)
	movq	37(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L2003
.L1986:
	movb	%cl, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L2003
.L1985:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4604:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4604-.LLSDACSB4604
.LLSDACSB4604:
.LLSDACSE4604:
	.section	.text$_ZN3And3RunIhEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN5Equal3RunIhEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN5Equal3RunIhEEvPhRj
	.def	_ZN5Equal3RunIhEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Equal3RunIhEEvPhRj
_ZN5Equal3RunIhEEvPhRj:
.LFB4598:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %rcx
	movzbl	(%rcx), %ecx
	cmpb	%cl, (%r9)
	sete	%r8b
	cmpb	$15, %al
	ja	.L2005
	movzbl	%al, %eax
	leaq	.L2007(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L2007:
	.long	.L2022-.L2007
	.long	.L2021-.L2007
	.long	.L2020-.L2007
	.long	.L2019-.L2007
	.long	.L2018-.L2007
	.long	.L2017-.L2007
	.long	.L2016-.L2007
	.long	.L2015-.L2007
	.long	.L2014-.L2007
	.long	.L2013-.L2007
	.long	.L2012-.L2007
	.long	.L2011-.L2007
	.long	.L2010-.L2007
	.long	.L2009-.L2007
	.long	.L2008-.L2007
	.long	.L2006-.L2007
	.section	.text$_ZN5Equal3RunIhEEvPhRj,"x"
	.linkonce discard
.L2022:
	movb	%r8b, regByte1Number1(%rip)
.L2023:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L2021:
	movb	%r8b, regByte1Number2(%rip)
	jmp	.L2023
.L2020:
	movb	%r8b, regByte1Number3(%rip)
	jmp	.L2023
.L2019:
	movb	%r8b, regByte1Number4(%rip)
	jmp	.L2023
.L2018:
	movb	%r8b, 47(%rsp)
	movzwl	47(%rsp), %eax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L2023
.L2017:
	movb	%r8b, 46(%rsp)
	movzwl	46(%rsp), %eax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L2023
.L2016:
	movb	%r8b, 45(%rsp)
	movzwl	45(%rsp), %eax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L2023
.L2015:
	movb	%r8b, 44(%rsp)
	movzwl	44(%rsp), %eax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L2023
.L2014:
	movb	%r8b, 43(%rsp)
	movl	43(%rsp), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L2023
.L2013:
	movb	%r8b, 42(%rsp)
	movl	42(%rsp), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L2023
.L2012:
	movb	%r8b, 41(%rsp)
	movl	41(%rsp), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L2023
.L2011:
	movb	%r8b, 40(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L2023
.L2010:
	movb	%r8b, 39(%rsp)
	movq	39(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L2023
.L2009:
	movb	%r8b, 38(%rsp)
	movq	38(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L2023
.L2008:
	movb	%r8b, 37(%rsp)
	movq	37(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L2023
.L2006:
	movb	%r8b, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L2023
.L2005:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4598:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4598-.LLSDACSB4598
.LLSDACSB4598:
.LLSDACSE4598:
	.section	.text$_ZN5Equal3RunIhEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN5Small3RunIhEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN5Small3RunIhEEvPhRj
	.def	_ZN5Small3RunIhEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Small3RunIhEEvPhRj
_ZN5Small3RunIhEEvPhRj:
.LFB4592:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %rcx
	movzbl	(%rcx), %ecx
	cmpb	%cl, (%r9)
	setb	%r8b
	cmpb	$15, %al
	ja	.L2025
	movzbl	%al, %eax
	leaq	.L2027(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L2027:
	.long	.L2042-.L2027
	.long	.L2041-.L2027
	.long	.L2040-.L2027
	.long	.L2039-.L2027
	.long	.L2038-.L2027
	.long	.L2037-.L2027
	.long	.L2036-.L2027
	.long	.L2035-.L2027
	.long	.L2034-.L2027
	.long	.L2033-.L2027
	.long	.L2032-.L2027
	.long	.L2031-.L2027
	.long	.L2030-.L2027
	.long	.L2029-.L2027
	.long	.L2028-.L2027
	.long	.L2026-.L2027
	.section	.text$_ZN5Small3RunIhEEvPhRj,"x"
	.linkonce discard
.L2042:
	movb	%r8b, regByte1Number1(%rip)
.L2043:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L2041:
	movb	%r8b, regByte1Number2(%rip)
	jmp	.L2043
.L2040:
	movb	%r8b, regByte1Number3(%rip)
	jmp	.L2043
.L2039:
	movb	%r8b, regByte1Number4(%rip)
	jmp	.L2043
.L2038:
	movb	%r8b, 47(%rsp)
	movzwl	47(%rsp), %eax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L2043
.L2037:
	movb	%r8b, 46(%rsp)
	movzwl	46(%rsp), %eax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L2043
.L2036:
	movb	%r8b, 45(%rsp)
	movzwl	45(%rsp), %eax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L2043
.L2035:
	movb	%r8b, 44(%rsp)
	movzwl	44(%rsp), %eax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L2043
.L2034:
	movb	%r8b, 43(%rsp)
	movl	43(%rsp), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L2043
.L2033:
	movb	%r8b, 42(%rsp)
	movl	42(%rsp), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L2043
.L2032:
	movb	%r8b, 41(%rsp)
	movl	41(%rsp), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L2043
.L2031:
	movb	%r8b, 40(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L2043
.L2030:
	movb	%r8b, 39(%rsp)
	movq	39(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L2043
.L2029:
	movb	%r8b, 38(%rsp)
	movq	38(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L2043
.L2028:
	movb	%r8b, 37(%rsp)
	movq	37(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L2043
.L2026:
	movb	%r8b, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L2043
.L2025:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4592:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4592-.LLSDACSB4592
.LLSDACSB4592:
.LLSDACSE4592:
	.section	.text$_ZN5Small3RunIhEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3Big3RunIhEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN3Big3RunIhEEvPhRj
	.def	_ZN3Big3RunIhEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3Big3RunIhEEvPhRj
_ZN3Big3RunIhEEvPhRj:
.LFB4586:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %rcx
	movzbl	(%r9), %r10d
	cmpb	%r10b, (%rcx)
	setb	%r8b
	cmpb	$15, %al
	ja	.L2045
	movzbl	%al, %eax
	leaq	.L2047(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L2047:
	.long	.L2062-.L2047
	.long	.L2061-.L2047
	.long	.L2060-.L2047
	.long	.L2059-.L2047
	.long	.L2058-.L2047
	.long	.L2057-.L2047
	.long	.L2056-.L2047
	.long	.L2055-.L2047
	.long	.L2054-.L2047
	.long	.L2053-.L2047
	.long	.L2052-.L2047
	.long	.L2051-.L2047
	.long	.L2050-.L2047
	.long	.L2049-.L2047
	.long	.L2048-.L2047
	.long	.L2046-.L2047
	.section	.text$_ZN3Big3RunIhEEvPhRj,"x"
	.linkonce discard
.L2062:
	movb	%r8b, regByte1Number1(%rip)
.L2063:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L2061:
	movb	%r8b, regByte1Number2(%rip)
	jmp	.L2063
.L2060:
	movb	%r8b, regByte1Number3(%rip)
	jmp	.L2063
.L2059:
	movb	%r8b, regByte1Number4(%rip)
	jmp	.L2063
.L2058:
	movb	%r8b, 47(%rsp)
	movzwl	47(%rsp), %eax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L2063
.L2057:
	movb	%r8b, 46(%rsp)
	movzwl	46(%rsp), %eax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L2063
.L2056:
	movb	%r8b, 45(%rsp)
	movzwl	45(%rsp), %eax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L2063
.L2055:
	movb	%r8b, 44(%rsp)
	movzwl	44(%rsp), %eax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L2063
.L2054:
	movb	%r8b, 43(%rsp)
	movl	43(%rsp), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L2063
.L2053:
	movb	%r8b, 42(%rsp)
	movl	42(%rsp), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L2063
.L2052:
	movb	%r8b, 41(%rsp)
	movl	41(%rsp), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L2063
.L2051:
	movb	%r8b, 40(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L2063
.L2050:
	movb	%r8b, 39(%rsp)
	movq	39(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L2063
.L2049:
	movb	%r8b, 38(%rsp)
	movq	38(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L2063
.L2048:
	movb	%r8b, 37(%rsp)
	movq	37(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L2063
.L2046:
	movb	%r8b, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L2063
.L2045:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4586:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4586-.LLSDACSB4586
.LLSDACSB4586:
.LLSDACSE4586:
	.section	.text$_ZN3Big3RunIhEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3Div3RunIhEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN3Div3RunIhEEvPhRj
	.def	_ZN3Div3RunIhEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3Div3RunIhEEvPhRj
_ZN3Div3RunIhEEvPhRj:
.LFB4580:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	%rdx, %r8
	movzbl	2(%rcx), %edx
	leaq	regTable(%rip), %rax
	movzbl	(%rcx), %r9d
	movq	(%rax,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%rax,%rcx,8), %rcx
	movzbl	(%r9), %eax
	divb	(%rcx)
	cmpb	$15, %dl
	ja	.L2065
	movzbl	%dl, %edx
	leaq	.L2067(%rip), %rcx
	movslq	(%rcx,%rdx,4), %rdx
	addq	%rcx, %rdx
	jmp	*%rdx
	.section .rdata,"dr"
	.align 4
.L2067:
	.long	.L2082-.L2067
	.long	.L2081-.L2067
	.long	.L2080-.L2067
	.long	.L2079-.L2067
	.long	.L2078-.L2067
	.long	.L2077-.L2067
	.long	.L2076-.L2067
	.long	.L2075-.L2067
	.long	.L2074-.L2067
	.long	.L2073-.L2067
	.long	.L2072-.L2067
	.long	.L2071-.L2067
	.long	.L2070-.L2067
	.long	.L2069-.L2067
	.long	.L2068-.L2067
	.long	.L2066-.L2067
	.section	.text$_ZN3Div3RunIhEEvPhRj,"x"
	.linkonce discard
.L2082:
	movb	%al, regByte1Number1(%rip)
.L2083:
	addl	$1, (%r8)
	addq	$56, %rsp
	ret
.L2081:
	movb	%al, regByte1Number2(%rip)
	jmp	.L2083
.L2080:
	movb	%al, regByte1Number3(%rip)
	jmp	.L2083
.L2079:
	movb	%al, regByte1Number4(%rip)
	jmp	.L2083
.L2078:
	movb	%al, 47(%rsp)
	movzwl	47(%rsp), %eax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L2083
.L2077:
	movb	%al, 46(%rsp)
	movzwl	46(%rsp), %eax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L2083
.L2076:
	movb	%al, 45(%rsp)
	movzwl	45(%rsp), %eax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L2083
.L2075:
	movb	%al, 44(%rsp)
	movzwl	44(%rsp), %eax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L2083
.L2074:
	movb	%al, 43(%rsp)
	movl	43(%rsp), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L2083
.L2073:
	movb	%al, 42(%rsp)
	movl	42(%rsp), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L2083
.L2072:
	movb	%al, 41(%rsp)
	movl	41(%rsp), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L2083
.L2071:
	movb	%al, 40(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L2083
.L2070:
	movb	%al, 39(%rsp)
	movq	39(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L2083
.L2069:
	movb	%al, 38(%rsp)
	movq	38(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L2083
.L2068:
	movb	%al, 37(%rsp)
	movq	37(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L2083
.L2066:
	movb	%al, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L2083
.L2065:
	movzbl	%dl, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4580:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4580-.LLSDACSB4580
.LLSDACSB4580:
.LLSDACSE4580:
	.section	.text$_ZN3Div3RunIhEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3Mul3RunIhEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN3Mul3RunIhEEvPhRj
	.def	_ZN3Mul3RunIhEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3Mul3RunIhEEvPhRj
_ZN3Mul3RunIhEEvPhRj:
.LFB4574:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	%rdx, %r8
	movzbl	2(%rcx), %edx
	leaq	regTable(%rip), %rax
	movzbl	(%rcx), %r9d
	movq	(%rax,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%rax,%rcx,8), %rcx
	movzbl	(%r9), %eax
	mulb	(%rcx)
	cmpb	$15, %dl
	ja	.L2085
	movzbl	%dl, %edx
	leaq	.L2087(%rip), %rcx
	movslq	(%rcx,%rdx,4), %rdx
	addq	%rcx, %rdx
	jmp	*%rdx
	.section .rdata,"dr"
	.align 4
.L2087:
	.long	.L2102-.L2087
	.long	.L2101-.L2087
	.long	.L2100-.L2087
	.long	.L2099-.L2087
	.long	.L2098-.L2087
	.long	.L2097-.L2087
	.long	.L2096-.L2087
	.long	.L2095-.L2087
	.long	.L2094-.L2087
	.long	.L2093-.L2087
	.long	.L2092-.L2087
	.long	.L2091-.L2087
	.long	.L2090-.L2087
	.long	.L2089-.L2087
	.long	.L2088-.L2087
	.long	.L2086-.L2087
	.section	.text$_ZN3Mul3RunIhEEvPhRj,"x"
	.linkonce discard
.L2102:
	movb	%al, regByte1Number1(%rip)
.L2103:
	addl	$1, (%r8)
	addq	$56, %rsp
	ret
.L2101:
	movb	%al, regByte1Number2(%rip)
	jmp	.L2103
.L2100:
	movb	%al, regByte1Number3(%rip)
	jmp	.L2103
.L2099:
	movb	%al, regByte1Number4(%rip)
	jmp	.L2103
.L2098:
	movb	%al, 47(%rsp)
	movzwl	47(%rsp), %eax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L2103
.L2097:
	movb	%al, 46(%rsp)
	movzwl	46(%rsp), %eax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L2103
.L2096:
	movb	%al, 45(%rsp)
	movzwl	45(%rsp), %eax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L2103
.L2095:
	movb	%al, 44(%rsp)
	movzwl	44(%rsp), %eax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L2103
.L2094:
	movb	%al, 43(%rsp)
	movl	43(%rsp), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L2103
.L2093:
	movb	%al, 42(%rsp)
	movl	42(%rsp), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L2103
.L2092:
	movb	%al, 41(%rsp)
	movl	41(%rsp), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L2103
.L2091:
	movb	%al, 40(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L2103
.L2090:
	movb	%al, 39(%rsp)
	movq	39(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L2103
.L2089:
	movb	%al, 38(%rsp)
	movq	38(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L2103
.L2088:
	movb	%al, 37(%rsp)
	movq	37(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L2103
.L2086:
	movb	%al, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L2103
.L2085:
	movzbl	%dl, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4574:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4574-.LLSDACSB4574
.LLSDACSB4574:
.LLSDACSE4574:
	.section	.text$_ZN3Mul3RunIhEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3Sub3RunIhEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN3Sub3RunIhEEvPhRj
	.def	_ZN3Sub3RunIhEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3Sub3RunIhEEvPhRj
_ZN3Sub3RunIhEEvPhRj:
.LFB4568:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %r8
	movzbl	(%r9), %ecx
	subb	(%r8), %cl
	cmpb	$15, %al
	ja	.L2105
	movzbl	%al, %eax
	leaq	.L2107(%rip), %r8
	movslq	(%r8,%rax,4), %rax
	addq	%r8, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L2107:
	.long	.L2122-.L2107
	.long	.L2121-.L2107
	.long	.L2120-.L2107
	.long	.L2119-.L2107
	.long	.L2118-.L2107
	.long	.L2117-.L2107
	.long	.L2116-.L2107
	.long	.L2115-.L2107
	.long	.L2114-.L2107
	.long	.L2113-.L2107
	.long	.L2112-.L2107
	.long	.L2111-.L2107
	.long	.L2110-.L2107
	.long	.L2109-.L2107
	.long	.L2108-.L2107
	.long	.L2106-.L2107
	.section	.text$_ZN3Sub3RunIhEEvPhRj,"x"
	.linkonce discard
.L2122:
	movb	%cl, regByte1Number1(%rip)
.L2123:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L2121:
	movb	%cl, regByte1Number2(%rip)
	jmp	.L2123
.L2120:
	movb	%cl, regByte1Number3(%rip)
	jmp	.L2123
.L2119:
	movb	%cl, regByte1Number4(%rip)
	jmp	.L2123
.L2118:
	movb	%cl, 47(%rsp)
	movzwl	47(%rsp), %eax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L2123
.L2117:
	movb	%cl, 46(%rsp)
	movzwl	46(%rsp), %eax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L2123
.L2116:
	movb	%cl, 45(%rsp)
	movzwl	45(%rsp), %eax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L2123
.L2115:
	movb	%cl, 44(%rsp)
	movzwl	44(%rsp), %eax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L2123
.L2114:
	movb	%cl, 43(%rsp)
	movl	43(%rsp), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L2123
.L2113:
	movb	%cl, 42(%rsp)
	movl	42(%rsp), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L2123
.L2112:
	movb	%cl, 41(%rsp)
	movl	41(%rsp), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L2123
.L2111:
	movb	%cl, 40(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L2123
.L2110:
	movb	%cl, 39(%rsp)
	movq	39(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L2123
.L2109:
	movb	%cl, 38(%rsp)
	movq	38(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L2123
.L2108:
	movb	%cl, 37(%rsp)
	movq	37(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L2123
.L2106:
	movb	%cl, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L2123
.L2105:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4568:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4568-.LLSDACSB4568
.LLSDACSB4568:
.LLSDACSE4568:
	.section	.text$_ZN3Sub3RunIhEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN3Add3RunIhEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN3Add3RunIhEEvPhRj
	.def	_ZN3Add3RunIhEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3Add3RunIhEEvPhRj
_ZN3Add3RunIhEEvPhRj:
.LFB4562:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	2(%rcx), %eax
	leaq	regTable(%rip), %r8
	movzbl	(%rcx), %r9d
	movq	(%r8,%r9,8), %r9
	movzbl	1(%rcx), %ecx
	movq	(%r8,%rcx,8), %rcx
	movzbl	(%rcx), %ecx
	addb	(%r9), %cl
	cmpb	$15, %al
	ja	.L2125
	movzbl	%al, %eax
	leaq	.L2127(%rip), %r8
	movslq	(%r8,%rax,4), %rax
	addq	%r8, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L2127:
	.long	.L2142-.L2127
	.long	.L2141-.L2127
	.long	.L2140-.L2127
	.long	.L2139-.L2127
	.long	.L2138-.L2127
	.long	.L2137-.L2127
	.long	.L2136-.L2127
	.long	.L2135-.L2127
	.long	.L2134-.L2127
	.long	.L2133-.L2127
	.long	.L2132-.L2127
	.long	.L2131-.L2127
	.long	.L2130-.L2127
	.long	.L2129-.L2127
	.long	.L2128-.L2127
	.long	.L2126-.L2127
	.section	.text$_ZN3Add3RunIhEEvPhRj,"x"
	.linkonce discard
.L2142:
	movb	%cl, regByte1Number1(%rip)
.L2143:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L2141:
	movb	%cl, regByte1Number2(%rip)
	jmp	.L2143
.L2140:
	movb	%cl, regByte1Number3(%rip)
	jmp	.L2143
.L2139:
	movb	%cl, regByte1Number4(%rip)
	jmp	.L2143
.L2138:
	movb	%cl, 47(%rsp)
	movzwl	47(%rsp), %eax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L2143
.L2137:
	movb	%cl, 46(%rsp)
	movzwl	46(%rsp), %eax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L2143
.L2136:
	movb	%cl, 45(%rsp)
	movzwl	45(%rsp), %eax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L2143
.L2135:
	movb	%cl, 44(%rsp)
	movzwl	44(%rsp), %eax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L2143
.L2134:
	movb	%cl, 43(%rsp)
	movl	43(%rsp), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L2143
.L2133:
	movb	%cl, 42(%rsp)
	movl	42(%rsp), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L2143
.L2132:
	movb	%cl, 41(%rsp)
	movl	41(%rsp), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L2143
.L2131:
	movb	%cl, 40(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L2143
.L2130:
	movb	%cl, 39(%rsp)
	movq	39(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L2143
.L2129:
	movb	%cl, 38(%rsp)
	movq	38(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L2143
.L2128:
	movb	%cl, 37(%rsp)
	movq	37(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L2143
.L2126:
	movb	%cl, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L2143
.L2125:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4562:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4562-.LLSDACSB4562
.LLSDACSB4562:
.LLSDACSE4562:
	.section	.text$_ZN3Add3RunIhEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN7putchar7PutcharEPhRj,"x"
	.linkonce discard
	.globl	_ZN7putchar7PutcharEPhRj
	.def	_ZN7putchar7PutcharEPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN7putchar7PutcharEPhRj
_ZN7putchar7PutcharEPhRj:
.LFB3661:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rdx, %rbx
	movzbl	(%rcx), %edx
	leaq	regTable(%rip), %rax
	movq	(%rax,%rdx,8), %rax
	movsbl	(%rax), %ecx
	call	putchar
	addl	$1, (%rbx)
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3661:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3661-.LLSDACSB3661
.LLSDACSB3661:
.LLSDACSE3661:
	.section	.text$_ZN7putchar7PutcharEPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN2TT3RunIhhEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN2TT3RunIhhEEvPhRj
	.def	_ZN2TT3RunIhhEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2TT3RunIhhEEvPhRj
_ZN2TT3RunIhhEEvPhRj:
.LFB4632:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	movzbl	(%rcx), %r8d
	cmpb	$15, %al
	ja	.L2146
	movzbl	%al, %eax
	leaq	.L2148(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L2148:
	.long	.L2163-.L2148
	.long	.L2162-.L2148
	.long	.L2161-.L2148
	.long	.L2160-.L2148
	.long	.L2159-.L2148
	.long	.L2158-.L2148
	.long	.L2157-.L2148
	.long	.L2156-.L2148
	.long	.L2155-.L2148
	.long	.L2154-.L2148
	.long	.L2153-.L2148
	.long	.L2152-.L2148
	.long	.L2151-.L2148
	.long	.L2150-.L2148
	.long	.L2149-.L2148
	.long	.L2147-.L2148
	.section	.text$_ZN2TT3RunIhhEEvPhRj,"x"
	.linkonce discard
.L2163:
	movb	%r8b, regByte1Number1(%rip)
.L2164:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L2162:
	movb	%r8b, regByte1Number2(%rip)
	jmp	.L2164
.L2161:
	movb	%r8b, regByte1Number3(%rip)
	jmp	.L2164
.L2160:
	movb	%r8b, regByte1Number4(%rip)
	jmp	.L2164
.L2159:
	movb	%r8b, 47(%rsp)
	movzwl	47(%rsp), %eax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L2164
.L2158:
	movb	%r8b, 46(%rsp)
	movzwl	46(%rsp), %eax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L2164
.L2157:
	movb	%r8b, 45(%rsp)
	movzwl	45(%rsp), %eax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L2164
.L2156:
	movb	%r8b, 44(%rsp)
	movzwl	44(%rsp), %eax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L2164
.L2155:
	movb	%r8b, 43(%rsp)
	movl	43(%rsp), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L2164
.L2154:
	movb	%r8b, 42(%rsp)
	movl	42(%rsp), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L2164
.L2153:
	movb	%r8b, 41(%rsp)
	movl	41(%rsp), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L2164
.L2152:
	movb	%r8b, 40(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L2164
.L2151:
	movb	%r8b, 39(%rsp)
	movq	39(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L2164
.L2150:
	movb	%r8b, 38(%rsp)
	movq	38(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L2164
.L2149:
	movb	%r8b, 37(%rsp)
	movq	37(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L2164
.L2147:
	movb	%r8b, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L2164
.L2146:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4632:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4632-.LLSDACSB4632
.LLSDACSB4632:
.LLSDACSE4632:
	.section	.text$_ZN2TT3RunIhhEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN2TT3RunIhtEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN2TT3RunIhtEEvPhRj
	.def	_ZN2TT3RunIhtEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2TT3RunIhtEEvPhRj
_ZN2TT3RunIhtEEvPhRj:
.LFB4633:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	movzbl	(%rcx), %r8d
	movzbl	%r8b, %r9d
	cmpb	$15, %al
	ja	.L2166
	movzbl	%al, %eax
	leaq	.L2168(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L2168:
	.long	.L2183-.L2168
	.long	.L2182-.L2168
	.long	.L2181-.L2168
	.long	.L2180-.L2168
	.long	.L2179-.L2168
	.long	.L2178-.L2168
	.long	.L2177-.L2168
	.long	.L2176-.L2168
	.long	.L2175-.L2168
	.long	.L2174-.L2168
	.long	.L2173-.L2168
	.long	.L2172-.L2168
	.long	.L2171-.L2168
	.long	.L2170-.L2168
	.long	.L2169-.L2168
	.long	.L2167-.L2168
	.section	.text$_ZN2TT3RunIhtEEvPhRj,"x"
	.linkonce discard
.L2183:
	movb	%r8b, regByte1Number1(%rip)
.L2184:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L2182:
	movb	%r8b, regByte1Number2(%rip)
	jmp	.L2184
.L2181:
	movb	%r8b, regByte1Number3(%rip)
	jmp	.L2184
.L2180:
	movb	%r8b, regByte1Number4(%rip)
	jmp	.L2184
.L2179:
	movw	%r9w, regByte2Number1(%rip)
	jmp	.L2184
.L2178:
	movw	%r9w, regByte2Number2(%rip)
	jmp	.L2184
.L2177:
	movw	%r9w, regByte2Number3(%rip)
	jmp	.L2184
.L2176:
	movw	%r9w, regByte2Number4(%rip)
	jmp	.L2184
.L2175:
	movw	%r9w, 46(%rsp)
	movl	46(%rsp), %eax
	movl	%eax, regByte4Number1(%rip)
	jmp	.L2184
.L2174:
	movw	%r9w, 44(%rsp)
	movl	44(%rsp), %eax
	movl	%eax, regByte4Number2(%rip)
	jmp	.L2184
.L2173:
	movw	%r9w, 42(%rsp)
	movl	42(%rsp), %eax
	movl	%eax, regByte4Number3(%rip)
	jmp	.L2184
.L2172:
	movw	%r9w, 40(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, regByte4Number4(%rip)
	jmp	.L2184
.L2171:
	movw	%r9w, 38(%rsp)
	movq	38(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L2184
.L2170:
	movw	%r9w, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L2184
.L2169:
	movw	%r9w, 34(%rsp)
	movq	34(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L2184
.L2167:
	movw	%r9w, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L2184
.L2166:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4633:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4633-.LLSDACSB4633
.LLSDACSB4633:
.LLSDACSE4633:
	.section	.text$_ZN2TT3RunIhtEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN2TT3RunIhjEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN2TT3RunIhjEEvPhRj
	.def	_ZN2TT3RunIhjEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2TT3RunIhjEEvPhRj
_ZN2TT3RunIhjEEvPhRj:
.LFB4634:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	movzbl	(%rcx), %r8d
	movzbl	%r8b, %r9d
	cmpb	$15, %al
	ja	.L2186
	movzbl	%al, %eax
	leaq	.L2188(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L2188:
	.long	.L2203-.L2188
	.long	.L2202-.L2188
	.long	.L2201-.L2188
	.long	.L2200-.L2188
	.long	.L2199-.L2188
	.long	.L2198-.L2188
	.long	.L2197-.L2188
	.long	.L2196-.L2188
	.long	.L2195-.L2188
	.long	.L2194-.L2188
	.long	.L2193-.L2188
	.long	.L2192-.L2188
	.long	.L2191-.L2188
	.long	.L2190-.L2188
	.long	.L2189-.L2188
	.long	.L2187-.L2188
	.section	.text$_ZN2TT3RunIhjEEvPhRj,"x"
	.linkonce discard
.L2203:
	movb	%r8b, regByte1Number1(%rip)
.L2204:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L2202:
	movb	%r8b, regByte1Number2(%rip)
	jmp	.L2204
.L2201:
	movb	%r8b, regByte1Number3(%rip)
	jmp	.L2204
.L2200:
	movb	%r8b, regByte1Number4(%rip)
	jmp	.L2204
.L2199:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number1(%rip)
	jmp	.L2204
.L2198:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number2(%rip)
	jmp	.L2204
.L2197:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number3(%rip)
	jmp	.L2204
.L2196:
	movzbl	%r8b, %r8d
	movw	%r8w, regByte2Number4(%rip)
	jmp	.L2204
.L2195:
	movl	%r9d, regByte4Number1(%rip)
	jmp	.L2204
.L2194:
	movl	%r9d, regByte4Number2(%rip)
	jmp	.L2204
.L2193:
	movl	%r9d, regByte4Number3(%rip)
	jmp	.L2204
.L2192:
	movl	%r9d, regByte4Number4(%rip)
	jmp	.L2204
.L2191:
	movl	%r9d, 44(%rsp)
	movq	44(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L2204
.L2190:
	movl	%r9d, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L2204
.L2189:
	movl	%r9d, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L2204
.L2187:
	movl	%r9d, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L2204
.L2186:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4634:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4634-.LLSDACSB4634
.LLSDACSB4634:
.LLSDACSE4634:
	.section	.text$_ZN2TT3RunIhjEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN2TT3RunIhyEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN2TT3RunIhyEEvPhRj
	.def	_ZN2TT3RunIhyEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2TT3RunIhyEEvPhRj
_ZN2TT3RunIhyEEvPhRj:
.LFB4635:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	movzbl	(%rcx), %ecx
	movzbl	%cl, %r9d
	cmpb	$15, %al
	ja	.L2206
	movzbl	%al, %eax
	leaq	.L2208(%rip), %r8
	movslq	(%r8,%rax,4), %rax
	addq	%r8, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L2208:
	.long	.L2223-.L2208
	.long	.L2222-.L2208
	.long	.L2221-.L2208
	.long	.L2220-.L2208
	.long	.L2219-.L2208
	.long	.L2218-.L2208
	.long	.L2217-.L2208
	.long	.L2216-.L2208
	.long	.L2215-.L2208
	.long	.L2214-.L2208
	.long	.L2213-.L2208
	.long	.L2212-.L2208
	.long	.L2211-.L2208
	.long	.L2210-.L2208
	.long	.L2209-.L2208
	.long	.L2207-.L2208
	.section	.text$_ZN2TT3RunIhyEEvPhRj,"x"
	.linkonce discard
.L2223:
	movb	%cl, regByte1Number1(%rip)
.L2224:
	addl	$1, (%rdx)
	addq	$40, %rsp
	ret
.L2222:
	movb	%cl, regByte1Number2(%rip)
	jmp	.L2224
.L2221:
	movb	%cl, regByte1Number3(%rip)
	jmp	.L2224
.L2220:
	movb	%cl, regByte1Number4(%rip)
	jmp	.L2224
.L2219:
	movzbl	%cl, %ecx
	movw	%cx, regByte2Number1(%rip)
	jmp	.L2224
.L2218:
	movzbl	%cl, %ecx
	movw	%cx, regByte2Number2(%rip)
	jmp	.L2224
.L2217:
	movzbl	%cl, %ecx
	movw	%cx, regByte2Number3(%rip)
	jmp	.L2224
.L2216:
	movzbl	%cl, %ecx
	movw	%cx, regByte2Number4(%rip)
	jmp	.L2224
.L2215:
	movzbl	%cl, %ecx
	movl	%ecx, regByte4Number1(%rip)
	jmp	.L2224
.L2214:
	movzbl	%cl, %ecx
	movl	%ecx, regByte4Number2(%rip)
	jmp	.L2224
.L2213:
	movzbl	%cl, %ecx
	movl	%ecx, regByte4Number3(%rip)
	jmp	.L2224
.L2212:
	movzbl	%cl, %ecx
	movl	%ecx, regByte4Number4(%rip)
	jmp	.L2224
.L2211:
	movq	%r9, regByte8Number1(%rip)
	jmp	.L2224
.L2210:
	movq	%r9, regByte8Number2(%rip)
	jmp	.L2224
.L2209:
	movq	%r9, regByte8Number3(%rip)
	jmp	.L2224
.L2207:
	movq	%r9, regByte8Number4(%rip)
	jmp	.L2224
.L2206:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4635:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4635-.LLSDACSB4635
.LLSDACSB4635:
.LLSDACSE4635:
	.section	.text$_ZN2TT3RunIhyEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN2TT3RunIhfEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN2TT3RunIhfEEvPhRj
	.def	_ZN2TT3RunIhfEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2TT3RunIhfEEvPhRj
_ZN2TT3RunIhfEEvPhRj:
.LFB4636:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	movzbl	(%rcx), %ecx
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
	cmpb	$15, %al
	ja	.L2226
	movzbl	%al, %eax
	leaq	.L2228(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L2228:
	.long	.L2243-.L2228
	.long	.L2242-.L2228
	.long	.L2241-.L2228
	.long	.L2240-.L2228
	.long	.L2239-.L2228
	.long	.L2238-.L2228
	.long	.L2237-.L2228
	.long	.L2236-.L2228
	.long	.L2235-.L2228
	.long	.L2234-.L2228
	.long	.L2233-.L2228
	.long	.L2232-.L2228
	.long	.L2231-.L2228
	.long	.L2230-.L2228
	.long	.L2229-.L2228
	.long	.L2227-.L2228
	.section	.text$_ZN2TT3RunIhfEEvPhRj,"x"
	.linkonce discard
.L2243:
	movd	%xmm0, %eax
	movb	%al, regByte1Number1(%rip)
.L2244:
	addl	$1, (%rdx)
	addq	$56, %rsp
	ret
.L2242:
	movd	%xmm0, %eax
	movb	%al, regByte1Number2(%rip)
	jmp	.L2244
.L2241:
	movd	%xmm0, %eax
	movb	%al, regByte1Number3(%rip)
	jmp	.L2244
.L2240:
	movd	%xmm0, %eax
	movb	%al, regByte1Number4(%rip)
	jmp	.L2244
.L2239:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L2244
.L2238:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L2244
.L2237:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L2244
.L2236:
	movd	%xmm0, %eax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L2244
.L2235:
	movss	%xmm0, regByte4Number1(%rip)
	jmp	.L2244
.L2234:
	movss	%xmm0, regByte4Number2(%rip)
	jmp	.L2244
.L2233:
	movss	%xmm0, regByte4Number3(%rip)
	jmp	.L2244
.L2232:
	movss	%xmm0, regByte4Number4(%rip)
	jmp	.L2244
.L2231:
	movss	%xmm0, 44(%rsp)
	movq	44(%rsp), %rax
	movq	%rax, regByte8Number1(%rip)
	jmp	.L2244
.L2230:
	movss	%xmm0, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, regByte8Number2(%rip)
	jmp	.L2244
.L2229:
	movss	%xmm0, 36(%rsp)
	movq	36(%rsp), %rax
	movq	%rax, regByte8Number3(%rip)
	jmp	.L2244
.L2227:
	movss	%xmm0, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, regByte8Number4(%rip)
	jmp	.L2244
.L2226:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4636:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4636-.LLSDACSB4636
.LLSDACSB4636:
.LLSDACSE4636:
	.section	.text$_ZN2TT3RunIhfEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN2TT3RunIhdEEvPhRj,"x"
	.linkonce discard
	.globl	_ZN2TT3RunIhdEEvPhRj
	.def	_ZN2TT3RunIhdEEvPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2TT3RunIhdEEvPhRj
_ZN2TT3RunIhdEEvPhRj:
.LFB4637:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %r8d
	leaq	regTable(%rip), %rcx
	movq	(%rcx,%r8,8), %rcx
	movzbl	(%rcx), %ecx
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	cmpb	$15, %al
	ja	.L2246
	movzbl	%al, %eax
	leaq	.L2248(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L2248:
	.long	.L2263-.L2248
	.long	.L2262-.L2248
	.long	.L2261-.L2248
	.long	.L2260-.L2248
	.long	.L2259-.L2248
	.long	.L2258-.L2248
	.long	.L2257-.L2248
	.long	.L2256-.L2248
	.long	.L2255-.L2248
	.long	.L2254-.L2248
	.long	.L2253-.L2248
	.long	.L2252-.L2248
	.long	.L2251-.L2248
	.long	.L2250-.L2248
	.long	.L2249-.L2248
	.long	.L2247-.L2248
	.section	.text$_ZN2TT3RunIhdEEvPhRj,"x"
	.linkonce discard
.L2263:
	movq	%xmm0, %rax
	movb	%al, regByte1Number1(%rip)
.L2264:
	addl	$1, (%rdx)
	addq	$40, %rsp
	ret
.L2262:
	movq	%xmm0, %rax
	movb	%al, regByte1Number2(%rip)
	jmp	.L2264
.L2261:
	movq	%xmm0, %rax
	movb	%al, regByte1Number3(%rip)
	jmp	.L2264
.L2260:
	movq	%xmm0, %rax
	movb	%al, regByte1Number4(%rip)
	jmp	.L2264
.L2259:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number1(%rip)
	jmp	.L2264
.L2258:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number2(%rip)
	jmp	.L2264
.L2257:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number3(%rip)
	jmp	.L2264
.L2256:
	movq	%xmm0, %rax
	movw	%ax, regByte2Number4(%rip)
	jmp	.L2264
.L2255:
	movd	%xmm0, regByte4Number1(%rip)
	jmp	.L2264
.L2254:
	movd	%xmm0, regByte4Number2(%rip)
	jmp	.L2264
.L2253:
	movd	%xmm0, regByte4Number3(%rip)
	jmp	.L2264
.L2252:
	movd	%xmm0, regByte4Number4(%rip)
	jmp	.L2264
.L2251:
	movsd	%xmm0, regByte8Number1(%rip)
	jmp	.L2264
.L2250:
	movsd	%xmm0, regByte8Number2(%rip)
	jmp	.L2264
.L2249:
	movsd	%xmm0, regByte8Number3(%rip)
	jmp	.L2264
.L2247:
	movsd	%xmm0, regByte8Number4(%rip)
	jmp	.L2264
.L2246:
	movzbl	%al, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4637:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4637-.LLSDACSB4637
.LLSDACSB4637:
.LLSDACSE4637:
	.section	.text$_ZN2TT3RunIhdEEvPhRj,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN8gotoifus8GotoifusEPhRj,"x"
	.linkonce discard
	.globl	_ZN8gotoifus8GotoifusEPhRj
	.def	_ZN8gotoifus8GotoifusEPhRj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8gotoifus8GotoifusEPhRj
_ZN8gotoifus8GotoifusEPhRj:
.LFB3669:
	.seh_endprologue
	movzbl	1(%rcx), %r8d
	leaq	regTable(%rip), %rax
	movq	(%rax,%r8,8), %rax
	cmpb	$0, (%rax)
	je	.L2266
	movzbl	(%rcx), %ecx
	leaq	regTable(%rip), %rax
	movq	(%rax,%rcx,8), %rax
	movl	(%rax), %eax
.L2267:
	movl	%eax, (%rdx)
	ret
.L2266:
	movl	(%rdx), %eax
	addl	$1, %eax
	jmp	.L2267
	.seh_endproc
	.text
	.align 2
	.globl	_ZN8TypeNameIhE4nameB5cxx11Ev
	.def	_ZN8TypeNameIhE4nameB5cxx11Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8TypeNameIhE4nameB5cxx11Ev
_ZN8TypeNameIhE4nameB5cxx11Ev:
.LFB3674:
	.seh_endprologue
	movq	%rcx, %rax
	leaq	16(%rcx), %rdx
	movq	%rdx, (%rcx)
	movw	$26997, 16(%rcx)
	movb	$56, 18(%rcx)
	movq	$3, 8(%rcx)
	movb	$0, 19(%rcx)
	ret
	.seh_endproc
	.align 2
	.globl	_ZN8TypeNameItE4nameB5cxx11Ev
	.def	_ZN8TypeNameItE4nameB5cxx11Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8TypeNameItE4nameB5cxx11Ev
_ZN8TypeNameItE4nameB5cxx11Ev:
.LFB3695:
	.seh_endprologue
	movq	%rcx, %rax
	leaq	16(%rcx), %rdx
	movq	%rdx, (%rcx)
	movl	$909207925, 16(%rcx)
	movq	$4, 8(%rcx)
	movb	$0, 20(%rcx)
	ret
	.seh_endproc
	.align 2
	.globl	_ZN8TypeNameIjE4nameB5cxx11Ev
	.def	_ZN8TypeNameIjE4nameB5cxx11Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8TypeNameIjE4nameB5cxx11Ev
_ZN8TypeNameIjE4nameB5cxx11Ev:
.LFB3696:
	.seh_endprologue
	movq	%rcx, %rax
	leaq	16(%rcx), %rdx
	movq	%rdx, (%rcx)
	movl	$842230133, 16(%rcx)
	movq	$4, 8(%rcx)
	movb	$0, 20(%rcx)
	ret
	.seh_endproc
	.align 2
	.globl	_ZN8TypeNameIyE4nameB5cxx11Ev
	.def	_ZN8TypeNameIyE4nameB5cxx11Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8TypeNameIyE4nameB5cxx11Ev
_ZN8TypeNameIyE4nameB5cxx11Ev:
.LFB3697:
	.seh_endprologue
	movq	%rcx, %rax
	leaq	16(%rcx), %rdx
	movq	%rdx, (%rcx)
	movl	$875981173, 16(%rcx)
	movq	$4, 8(%rcx)
	movb	$0, 20(%rcx)
	ret
	.seh_endproc
	.align 2
	.globl	_ZN8TypeNameIfE4nameB5cxx11Ev
	.def	_ZN8TypeNameIfE4nameB5cxx11Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8TypeNameIfE4nameB5cxx11Ev
_ZN8TypeNameIfE4nameB5cxx11Ev:
.LFB3698:
	.seh_endprologue
	movq	%rcx, %rax
	leaq	16(%rcx), %rdx
	movq	%rdx, (%rcx)
	movl	$863267942, 16(%rcx)
	movb	$50, 20(%rcx)
	movq	$5, 8(%rcx)
	movb	$0, 21(%rcx)
	ret
	.seh_endproc
	.align 2
	.globl	_ZN8TypeNameIdE4nameB5cxx11Ev
	.def	_ZN8TypeNameIdE4nameB5cxx11Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8TypeNameIdE4nameB5cxx11Ev
_ZN8TypeNameIdE4nameB5cxx11Ev:
.LFB3699:
	.seh_endprologue
	movq	%rcx, %rax
	leaq	16(%rcx), %rdx
	movq	%rdx, (%rcx)
	movl	$913599590, 16(%rcx)
	movb	$52, 20(%rcx)
	movq	$5, 8(%rcx)
	movb	$0, 21(%rcx)
	ret
	.seh_endproc
	.globl	_Z8printHexRKSt6vectorIhSaIhEE
	.def	_Z8printHexRKSt6vectorIhSaIhEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z8printHexRKSt6vectorIhSaIhEE
_Z8printHexRKSt6vectorIhSaIhEE:
.LFB4205:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	(%rax), %r8
	movq	%rax, %r9
	addq	-24(%r8), %r9
	movl	24(%r9), %edx
	andl	$-75, %edx
	orl	$8, %edx
	movl	%edx, 24(%r9)
	movq	%rax, %rdx
	addq	-24(%r8), %rdx
	movb	$48, 224(%rdx)
	movb	$1, 225(%rdx)
	addq	-24(%r8), %rax
	orl	$16384, 24(%rax)
	movq	8(%rcx), %rdi
	movq	(%rcx), %rbx
	cmpq	%rbx, %rdi
	je	.L2275
	movq	.refptr._ZSt4cout(%rip), %rsi
.L2276:
	movzbl	(%rbx), %edx
	movq	(%rsi), %rax
	movq	-24(%rax), %rax
	movq	$2, 16(%rax,%rsi)
	movsbl	%dl, %edx
	movq	%rsi, %rcx
	call	_ZNSolsEi
	addq	$1, %rbx
	cmpq	%rbx, %rdi
	jne	.L2276
.L2275:
	movq	.refptr._ZSt4cout(%rip), %rdx
	movq	(%rdx), %rcx
	movq	%rdx, %r8
	addq	-24(%rcx), %r8
	movl	24(%r8), %eax
	andl	$-75, %eax
	orl	$2, %eax
	movl	%eax, 24(%r8)
	movq	%rdx, %rax
	addq	-24(%rcx), %rax
	andl	$-16385, 24(%rax)
	movq	-24(%rcx), %rax
	movq	240(%rax,%rdx), %rbx
	testq	%rbx, %rbx
	je	.L2281
	cmpb	$0, 56(%rbx)
	je	.L2278
	movzbl	67(%rbx), %edx
.L2279:
	movsbl	%dl, %edx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	nop
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L2281:
	call	_ZSt16__throw_bad_castv
.L2278:
	movq	%rbx, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %edx
	movq	%rbx, %rcx
	call	*48(%rax)
	movl	%eax, %edx
	jmp	.L2279
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv:
.LFB4561:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	(%rcx), %rax
	leaq	16(%rcx), %rdx
	cmpq	%rdx, %rax
	je	.L2282
	movq	16(%rcx), %rdx
	addq	$1, %rdx
	movq	%rax, %rcx
	call	_ZdlPvy
	nop
.L2282:
	addq	$40, %rsp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC5:
	.ascii " \0"
	.align 8
.LC6:
	.ascii "======================= state =======================\0"
	.align 8
.LC7:
	.ascii "8  reg:  %02x  %02x  %02x  %02x\12\0"
	.align 8
.LC8:
	.ascii "16 reg:  %04x  %04x  %04x  %04x\12\0"
	.align 8
.LC9:
	.ascii "32 reg:  %08x  %08x  %08x  %08x\12\0"
	.align 8
.LC10:
	.ascii "64 reg:  %016lx  %016lx  %016lx  %016lx\12\0"
	.align 8
.LC11:
	.ascii "=====================================================\0"
	.align 8
.LC12:
	.ascii "00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\0"
	.text
	.globl	_Z8printRegv
	.def	_Z8printRegv;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z8printRegv
_Z8printRegv:
.LFB3625:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$288, %rsp
	.seh_stackalloc	288
	.seh_endprologue
	leaq	_ZL6memory(%rip), %rsi
	leaq	100(%rsi), %rbp
	leaq	.LC12(%rip), %rdi
	movq	.refptr._ZSt4cout(%rip), %r12
	leaq	.LC5(%rip), %r13
	jmp	.L2291
.L2307:
	movq	56(%rsp), %rcx
	movl	$0, %edx
	movl	$0, %r14d
	movl	$4, %ebx
	jmp	.L2288
.L2304:
	addl	$1, %r14d
	movzbl	%r14b, %edx
	movq	56(%rsp), %rcx
.L2288:
	movq	%rbx, %rax
	subq	%rcx, %rax
	cmpq	%rax, %rdx
	jnb	.L2303
	movl	$1, %r8d
	movq	%r13, %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
.LEHB0:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE0:
	jmp	.L2304
.L2303:
	movq	48(%rsp), %rcx
	leaq	64(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L2290
	movq	64(%rsp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L2290:
	addq	$1, %rsi
	cmpq	%rsi, %rbp
	je	.L2305
.L2291:
	movzbl	(%rsi), %ebx
	cmpl	$9, %ebx
	jbe	.L2296
	cmpl	$99, %ebx
	jbe	.L2306
	leaq	64(%rsp), %rax
	movq	%rax, 48(%rsp)
	leaq	80(%rsp), %rcx
	movl	$201, %r8d
	movq	%rdi, %rdx
	call	memcpy
	movl	%ebx, %edx
	imulq	$1374389535, %rdx, %rdx
	shrq	$37, %rdx
	imull	$100, %edx, %ecx
	movl	%ebx, %eax
	subl	%ecx, %eax
	addl	%eax, %eax
	movl	%edx, %ebx
	leal	1(%rax), %edx
	movzbl	80(%rsp,%rdx), %edx
	movb	%dl, 66(%rsp)
	movl	%eax, %eax
	movzbl	80(%rsp,%rax), %eax
	movb	%al, 65(%rsp)
	movl	$3, %r14d
.L2295:
	addl	$48, %ebx
	jmp	.L2287
.L2298:
	movq	%rax, %rbx
	leaq	48(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	%rbx, %rcx
.LEHB1:
	call	_Unwind_Resume
.L2305:
	leaq	.LC6(%rip), %rcx
	call	puts
	movzbl	regByte1Number1(%rip), %edx
	movzbl	regByte1Number4(%rip), %eax
	movl	%eax, 32(%rsp)
	movzbl	regByte1Number3(%rip), %r9d
	movzbl	regByte1Number2(%rip), %r8d
	leaq	.LC7(%rip), %rcx
	call	printf
	movzwl	regByte2Number1(%rip), %edx
	movzwl	regByte2Number4(%rip), %eax
	movl	%eax, 32(%rsp)
	movzwl	regByte2Number3(%rip), %r9d
	movzwl	regByte2Number2(%rip), %r8d
	leaq	.LC8(%rip), %rcx
	call	printf
	movl	regByte4Number4(%rip), %eax
	movl	%eax, 32(%rsp)
	movl	regByte4Number3(%rip), %r9d
	movl	regByte4Number2(%rip), %r8d
	movl	regByte4Number1(%rip), %edx
	leaq	.LC9(%rip), %rcx
	call	printf
	movq	regByte8Number4(%rip), %rax
	movq	%rax, 32(%rsp)
	movq	regByte8Number3(%rip), %r9
	movq	regByte8Number2(%rip), %r8
	movq	regByte8Number1(%rip), %rdx
	leaq	.LC10(%rip), %rcx
	call	printf
	leaq	.LC11(%rip), %rcx
	call	puts
	nop
.LEHE1:
	addq	$288, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
.L2296:
	movl	$1, %r14d
.L2285:
	leaq	64(%rsp), %rax
	movq	%rax, 48(%rsp)
	movl	%r14d, %r14d
	leaq	80(%rsp), %rcx
	movl	$201, %r8d
	movq	%rdi, %rdx
	call	memcpy
	cmpl	$9, %ebx
	jbe	.L2295
	addl	%ebx, %ebx
	leal	1(%rbx), %eax
	movl	%eax, %eax
	movzbl	80(%rsp,%rax), %eax
	movb	%al, 65(%rsp)
	movl	%ebx, %ebx
	movzbl	80(%rsp,%rbx), %ebx
.L2287:
	movb	%bl, 64(%rsp)
	movq	%r14, 56(%rsp)
	movq	48(%rsp), %rax
	movb	$0, (%rax,%r14)
	movq	56(%rsp), %r8
	movq	48(%rsp), %rdx
	movq	%r12, %rcx
.LEHB2:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE2:
	jmp	.L2307
.L2306:
	movl	$2, %r14d
	jmp	.L2285
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3625:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3625-.LLSDACSB3625
.LLSDACSB3625:
	.uleb128 .LEHB0-.LFB3625
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L2298-.LFB3625
	.uleb128 0
	.uleb128 .LEHB1-.LFB3625
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB2-.LFB3625
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L2298-.LFB3625
	.uleb128 0
.LLSDACSE3625:
	.text
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIhSaIhEED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIhSaIhEED2Ev
	.def	_ZNSt12_Vector_baseIhSaIhEED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIhSaIhEED2Ev
_ZNSt12_Vector_baseIhSaIhEED2Ev:
.LFB4724:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	(%rcx), %rax
	testq	%rax, %rax
	je	.L2308
	movq	16(%rcx), %rdx
	subq	%rax, %rdx
	movq	%rax, %rcx
	call	_ZdlPvy
	nop
.L2308:
	addq	$40, %rsp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev
	.def	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev:
.LFB4767:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rdi
	movq	8(%rcx), %rsi
	movq	(%rcx), %rbx
	cmpq	%rbx, %rsi
	jne	.L2313
.L2311:
	movq	(%rdi), %rcx
	testq	%rcx, %rcx
	je	.L2310
	movq	16(%rdi), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
	nop
.L2310:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 5
.L2312:
	addq	$32, %rbx
	cmpq	%rbx, %rsi
	je	.L2311
.L2313:
	movq	(%rbx), %rcx
	leaq	16(%rbx), %rax
	cmpq	%rax, %rcx
	je	.L2312
	movq	16(%rbx), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
	jmp	.L2312
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC13:
	.ascii "cannot create std::vector larger than max_size()\0"
	.align 8
.LC14:
	.ascii "basic_string: construction from null is not valid\0"
.LC15:
	.ascii "basic_string::_M_create\0"
.LC16:
	.ascii "basic_string::append\0"
.LC17:
	.ascii "Failed to open file: \0"
.LC18:
	.ascii "vector::_M_realloc_append\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB4240:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$728, %rsp
	.seh_stackalloc	728
	.seh_endprologue
	movl	%ecx, %r13d
	movq	%rdx, %rdi
	call	__main
	movslq	%r13d, %r13
	leaq	0(,%r13,8), %r12
	movabsq	$2305843009213693944, %rax
	cmpq	%r12, %rax
	jb	.L2433
	testq	%r12, %r12
	je	.L2408
	salq	$5, %r13
	movq	%r13, %rcx
.LEHB3:
	call	_Znwy
	movq	%rax, 72(%rsp)
	addq	%rdi, %r12
	cmpq	%rdi, %r12
	je	.L2328
	movq	%rax, %rsi
	jmp	.L2327
.L2433:
	leaq	.LC13(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
.LEHE3:
.L2435:
	leaq	.LC14(%rip), %rcx
.LEHB4:
	call	_ZSt19__throw_logic_errorPKc
.LEHE4:
.L2421:
	movq	%rax, %rdi
	movq	72(%rsp), %rbx
	jmp	.L2331
.L2436:
	leaq	1(%rax), %rcx
.LEHB5:
	call	_Znwy
.LEHE5:
	movq	%rax, %rcx
	movq	%rax, (%rsi)
	movq	%rbx, 16(%rsi)
.L2324:
	movq	%rbx, %r8
	movq	%rbp, %rdx
	call	memcpy
	jmp	.L2326
.L2420:
	movq	%rax, %rdi
	movq	72(%rsp), %rbx
.L2331:
	cmpq	%rsi, %rbx
	jne	.L2333
	movq	%r13, %rdx
	movq	72(%rsp), %rcx
	call	_ZdlPvy
	movq	%rdi, %rcx
.LEHB6:
	call	_Unwind_Resume
.LEHE6:
.L2437:
	movzbl	0(%rbp), %eax
	movb	%al, (%rcx)
.L2326:
	movq	%rbx, 8(%rsi)
	movq	(%rsi), %rax
	movb	$0, (%rax,%rbx)
	addq	$8, %rdi
	addq	$32, %rsi
	cmpq	%rdi, %r12
	je	.L2434
.L2327:
	movq	(%rdi), %rbp
	leaq	16(%rsi), %rax
	movq	%rax, (%rsi)
	testq	%rbp, %rbp
	je	.L2435
	movq	%rbp, %rcx
	call	strlen
	movq	%rax, %rbx
	cmpq	$15, %rax
	ja	.L2436
	movq	(%rsi), %rcx
	cmpq	$1, %rax
	je	.L2437
	testq	%rax, %rax
	je	.L2326
	jmp	.L2324
.L2434:
	movq	72(%rsp), %rax
	leaq	(%rax,%r13), %rdi
	movq	%rdi, 80(%rsp)
	movq	%rsi, 696(%rsp)
	subq	%rax, %rsi
	cmpq	$32, %rsi
	jbe	.L2328
	leaq	functions(%rip), %rax
	leaq	32768(%rax), %rcx
	leaq	_ZL9cannotUsePhRj(%rip), %rdx
	.p2align 4
.L2349:
	movq	%rdx, (%rax)
	addq	$8, %rax
	cmpq	%rax, %rcx
	jne	.L2349
	leaq	_ZN3Add3RunIhEEvPhRj(%rip), %rax
	movq	%rax, functions(%rip)
	leaq	_ZN3Add3RunItEEvPhRj(%rip), %rax
	movq	%rax, 8+functions(%rip)
	leaq	_ZN3Add3RunIjEEvPhRj(%rip), %rax
	movq	%rax, 16+functions(%rip)
	leaq	_ZN3Add3RunIyEEvPhRj(%rip), %rax
	movq	%rax, 24+functions(%rip)
	leaq	_ZN3Add3RunIfEEvPhRj(%rip), %rax
	movq	%rax, 32+functions(%rip)
	leaq	_ZN3Add3RunIdEEvPhRj(%rip), %rax
	movq	%rax, 40+functions(%rip)
	leaq	_ZN3Sub3RunIhEEvPhRj(%rip), %rax
	movq	%rax, 48+functions(%rip)
	leaq	_ZN3Sub3RunItEEvPhRj(%rip), %rax
	movq	%rax, 56+functions(%rip)
	leaq	_ZN3Sub3RunIjEEvPhRj(%rip), %rax
	movq	%rax, 64+functions(%rip)
	leaq	_ZN3Sub3RunIyEEvPhRj(%rip), %rax
	movq	%rax, 72+functions(%rip)
	leaq	_ZN3Sub3RunIfEEvPhRj(%rip), %rax
	movq	%rax, 80+functions(%rip)
	leaq	_ZN3Sub3RunIdEEvPhRj(%rip), %rax
	movq	%rax, 88+functions(%rip)
	leaq	_ZN3Mul3RunIhEEvPhRj(%rip), %rax
	movq	%rax, 96+functions(%rip)
	leaq	_ZN3Mul3RunItEEvPhRj(%rip), %rax
	movq	%rax, 104+functions(%rip)
	leaq	_ZN3Mul3RunIjEEvPhRj(%rip), %rax
	movq	%rax, 112+functions(%rip)
	leaq	_ZN3Mul3RunIyEEvPhRj(%rip), %rax
	movq	%rax, 120+functions(%rip)
	leaq	_ZN3Mul3RunIfEEvPhRj(%rip), %rax
	movq	%rax, 128+functions(%rip)
	leaq	_ZN3Mul3RunIdEEvPhRj(%rip), %rax
	movq	%rax, 136+functions(%rip)
	leaq	_ZN3Div3RunIhEEvPhRj(%rip), %rax
	movq	%rax, 144+functions(%rip)
	leaq	_ZN3Div3RunItEEvPhRj(%rip), %rax
	movq	%rax, 152+functions(%rip)
	leaq	_ZN3Div3RunIjEEvPhRj(%rip), %rax
	movq	%rax, 160+functions(%rip)
	leaq	_ZN3Div3RunIyEEvPhRj(%rip), %rax
	movq	%rax, 168+functions(%rip)
	leaq	_ZN3Div3RunIfEEvPhRj(%rip), %rax
	movq	%rax, 176+functions(%rip)
	leaq	_ZN3Div3RunIdEEvPhRj(%rip), %rax
	movq	%rax, 184+functions(%rip)
	leaq	_ZN3Big3RunIhEEvPhRj(%rip), %rax
	movq	%rax, 192+functions(%rip)
	leaq	_ZN3Big3RunItEEvPhRj(%rip), %rax
	movq	%rax, 200+functions(%rip)
	leaq	_ZN3Big3RunIjEEvPhRj(%rip), %rax
	movq	%rax, 208+functions(%rip)
	leaq	_ZN3Big3RunIyEEvPhRj(%rip), %rax
	movq	%rax, 216+functions(%rip)
	leaq	_ZN3Big3RunIfEEvPhRj(%rip), %rax
	movq	%rax, 224+functions(%rip)
	leaq	_ZN3Big3RunIdEEvPhRj(%rip), %rax
	movq	%rax, 232+functions(%rip)
	leaq	_ZN5Small3RunIhEEvPhRj(%rip), %rax
	movq	%rax, 240+functions(%rip)
	leaq	_ZN5Small3RunItEEvPhRj(%rip), %rax
	movq	%rax, 248+functions(%rip)
	leaq	_ZN5Small3RunIjEEvPhRj(%rip), %rax
	movq	%rax, 256+functions(%rip)
	leaq	_ZN5Small3RunIyEEvPhRj(%rip), %rax
	movq	%rax, 264+functions(%rip)
	leaq	_ZN5Small3RunIfEEvPhRj(%rip), %rax
	movq	%rax, 272+functions(%rip)
	leaq	_ZN5Small3RunIdEEvPhRj(%rip), %rax
	movq	%rax, 280+functions(%rip)
	leaq	_ZN5Equal3RunIhEEvPhRj(%rip), %rax
	movq	%rax, 288+functions(%rip)
	leaq	_ZN5Equal3RunItEEvPhRj(%rip), %rax
	movq	%rax, 296+functions(%rip)
	leaq	_ZN5Equal3RunIjEEvPhRj(%rip), %rax
	movq	%rax, 304+functions(%rip)
	leaq	_ZN5Equal3RunIyEEvPhRj(%rip), %rax
	movq	%rax, 312+functions(%rip)
	leaq	_ZN5Equal3RunIfEEvPhRj(%rip), %rax
	movq	%rax, 320+functions(%rip)
	leaq	_ZN5Equal3RunIdEEvPhRj(%rip), %rax
	movq	%rax, 328+functions(%rip)
	leaq	_ZN3And3RunIhEEvPhRj(%rip), %rax
	movq	%rax, 336+functions(%rip)
	leaq	_ZN3And3RunItEEvPhRj(%rip), %rax
	movq	%rax, 344+functions(%rip)
	leaq	_ZN3And3RunIjEEvPhRj(%rip), %rax
	movq	%rax, 352+functions(%rip)
	leaq	_ZN3And3RunIyEEvPhRj(%rip), %rax
	movq	%rax, 360+functions(%rip)
	leaq	_ZN2Or3RunIhEEvPhRj(%rip), %rax
	movq	%rax, 384+functions(%rip)
	leaq	_ZN2Or3RunItEEvPhRj(%rip), %rax
	movq	%rax, 392+functions(%rip)
	leaq	_ZN2Or3RunIjEEvPhRj(%rip), %rax
	movq	%rax, 400+functions(%rip)
	leaq	_ZN2Or3RunIyEEvPhRj(%rip), %rax
	movq	%rax, 408+functions(%rip)
	leaq	_ZN3Not3RunIhEEvPhRj(%rip), %rax
	movq	%rax, 432+functions(%rip)
	leaq	_ZN3Not3RunItEEvPhRj(%rip), %rax
	movq	%rax, 440+functions(%rip)
	leaq	_ZN3Not3RunIjEEvPhRj(%rip), %rax
	movq	%rax, 448+functions(%rip)
	leaq	_ZN3Not3RunIyEEvPhRj(%rip), %rax
	movq	%rax, 456+functions(%rip)
	leaq	_ZN3Xor3RunIhEEvPhRj(%rip), %rax
	movq	%rax, 480+functions(%rip)
	leaq	_ZN3Xor3RunItEEvPhRj(%rip), %rax
	movq	%rax, 488+functions(%rip)
	leaq	_ZN3Xor3RunIjEEvPhRj(%rip), %rax
	movq	%rax, 496+functions(%rip)
	leaq	_ZN3Xor3RunIyEEvPhRj(%rip), %rax
	movq	%rax, 504+functions(%rip)
	leaq	_ZN10LogicalAnd3RunIhEEvPhRj(%rip), %rax
	movq	%rax, 528+functions(%rip)
	leaq	_ZN10LogicalAnd3RunItEEvPhRj(%rip), %rax
	movq	%rax, 536+functions(%rip)
	leaq	_ZN10LogicalAnd3RunIjEEvPhRj(%rip), %rax
	movq	%rax, 544+functions(%rip)
	leaq	_ZN10LogicalAnd3RunIyEEvPhRj(%rip), %rax
	movq	%rax, 552+functions(%rip)
	leaq	_ZN9LogicalOr3RunIhEEvPhRj(%rip), %rax
	movq	%rax, 576+functions(%rip)
	leaq	_ZN9LogicalOr3RunItEEvPhRj(%rip), %rax
	movq	%rax, 584+functions(%rip)
	leaq	_ZN9LogicalOr3RunIjEEvPhRj(%rip), %rax
	movq	%rax, 592+functions(%rip)
	leaq	_ZN9LogicalOr3RunIyEEvPhRj(%rip), %rax
	movq	%rax, 600+functions(%rip)
	leaq	_ZN10LogicalNot3RunIhEEvPhRj(%rip), %rax
	movq	%rax, 624+functions(%rip)
	leaq	_ZN10LogicalNot3RunItEEvPhRj(%rip), %rax
	movq	%rax, 632+functions(%rip)
	leaq	_ZN10LogicalNot3RunIjEEvPhRj(%rip), %rax
	movq	%rax, 640+functions(%rip)
	leaq	_ZN10LogicalNot3RunIyEEvPhRj(%rip), %rax
	movq	%rax, 648+functions(%rip)
	leaq	_ZN2TT3RunIhhEEvPhRj(%rip), %rax
	movq	%rax, 672+functions(%rip)
	leaq	_ZN2TT3RunIhtEEvPhRj(%rip), %rax
	movq	%rax, 680+functions(%rip)
	leaq	_ZN2TT3RunIhjEEvPhRj(%rip), %rax
	movq	%rax, 688+functions(%rip)
	leaq	_ZN2TT3RunIhyEEvPhRj(%rip), %rax
	movq	%rax, 696+functions(%rip)
	leaq	_ZN2TT3RunIhfEEvPhRj(%rip), %rax
	movq	%rax, 704+functions(%rip)
	leaq	_ZN2TT3RunIhdEEvPhRj(%rip), %rax
	movq	%rax, 712+functions(%rip)
	leaq	_ZN2TT3RunIthEEvPhRj(%rip), %rax
	movq	%rax, 720+functions(%rip)
	leaq	_ZN2TT3RunIttEEvPhRj(%rip), %rax
	movq	%rax, 728+functions(%rip)
	leaq	_ZN2TT3RunItjEEvPhRj(%rip), %rax
	movq	%rax, 736+functions(%rip)
	leaq	_ZN2TT3RunItyEEvPhRj(%rip), %rax
	movq	%rax, 744+functions(%rip)
	leaq	_ZN2TT3RunItfEEvPhRj(%rip), %rax
	movq	%rax, 752+functions(%rip)
	leaq	_ZN2TT3RunItdEEvPhRj(%rip), %rax
	movq	%rax, 760+functions(%rip)
	leaq	_ZN2TT3RunIjhEEvPhRj(%rip), %rax
	movq	%rax, 768+functions(%rip)
	leaq	_ZN2TT3RunIjtEEvPhRj(%rip), %rax
	movq	%rax, 776+functions(%rip)
	leaq	_ZN2TT3RunIjjEEvPhRj(%rip), %rax
	movq	%rax, 784+functions(%rip)
	leaq	_ZN2TT3RunIjyEEvPhRj(%rip), %rax
	movq	%rax, 792+functions(%rip)
	leaq	_ZN2TT3RunIjfEEvPhRj(%rip), %rax
	movq	%rax, 800+functions(%rip)
	leaq	_ZN2TT3RunIjdEEvPhRj(%rip), %rax
	movq	%rax, 808+functions(%rip)
	leaq	_ZN2TT3RunIyhEEvPhRj(%rip), %rax
	movq	%rax, 816+functions(%rip)
	leaq	_ZN2TT3RunIytEEvPhRj(%rip), %rax
	movq	%rax, 824+functions(%rip)
	leaq	_ZN2TT3RunIyjEEvPhRj(%rip), %rax
	movq	%rax, 832+functions(%rip)
	leaq	_ZN2TT3RunIyyEEvPhRj(%rip), %rax
	movq	%rax, 840+functions(%rip)
	leaq	_ZN2TT3RunIyfEEvPhRj(%rip), %rax
	movq	%rax, 848+functions(%rip)
	leaq	_ZN2TT3RunIydEEvPhRj(%rip), %rax
	movq	%rax, 856+functions(%rip)
	leaq	_ZN2TT3RunIfhEEvPhRj(%rip), %rax
	movq	%rax, 864+functions(%rip)
	leaq	_ZN2TT3RunIftEEvPhRj(%rip), %rax
	movq	%rax, 872+functions(%rip)
	leaq	_ZN2TT3RunIfjEEvPhRj(%rip), %rax
	movq	%rax, 880+functions(%rip)
	leaq	_ZN2TT3RunIfyEEvPhRj(%rip), %rax
	movq	%rax, 888+functions(%rip)
	leaq	_ZN2TT3RunIffEEvPhRj(%rip), %rax
	movq	%rax, 896+functions(%rip)
	leaq	_ZN2TT3RunIfdEEvPhRj(%rip), %rax
	movq	%rax, 904+functions(%rip)
	leaq	_ZN2TT3RunIdhEEvPhRj(%rip), %rax
	movq	%rax, 912+functions(%rip)
	leaq	_ZN2TT3RunIdtEEvPhRj(%rip), %rax
	movq	%rax, 920+functions(%rip)
	leaq	_ZN2TT3RunIdjEEvPhRj(%rip), %rax
	movq	%rax, 928+functions(%rip)
	leaq	_ZN2TT3RunIdyEEvPhRj(%rip), %rax
	movq	%rax, 936+functions(%rip)
	leaq	_ZN2TT3RunIdfEEvPhRj(%rip), %rax
	movq	%rax, 944+functions(%rip)
	leaq	_ZN2TT3RunIddEEvPhRj(%rip), %rax
	movq	%rax, 952+functions(%rip)
	leaq	_ZN3mov3MovEPhRj(%rip), %rax
	movq	%rax, 2048+functions(%rip)
	leaq	_ZN7putchar7PutcharEPhRj(%rip), %rax
	movq	%rax, 2056+functions(%rip)
	leaq	_ZN5goto_6goto__EPhRj(%rip), %rax
	movq	%rax, 2064+functions(%rip)
	leaq	_ZN6gotoif7gotoif_EPhRj(%rip), %rax
	movq	%rax, 2072+functions(%rip)
	leaq	_ZN5store5StoreEPhRj(%rip), %rax
	movq	%rax, 2080+functions(%rip)
	leaq	_ZN4load4LoadEPhRj(%rip), %rax
	movq	%rax, 2088+functions(%rip)
	leaq	_ZN6gotous6GotousEPhRj(%rip), %rax
	movq	%rax, 2096+functions(%rip)
	leaq	_ZN8gotoifus8GotoifusEPhRj(%rip), %rax
	movq	%rax, 2104+functions(%rip)
	leaq	_ZN7storeus7StoreusEPhRj(%rip), %rax
	movq	%rax, 2112+functions(%rip)
	leaq	_ZN6loadus6LoadusEPhRj(%rip), %rax
	movq	%rax, 2120+functions(%rip)
	leaq	_ZN4PURS16PushReturnsStackEPhRj(%rip), %rax
	movq	%rax, 2128+functions(%rip)
	leaq	_ZN4PORS15PopReturnsStackEPhRj(%rip), %rax
	movq	%rax, 2136+functions(%rip)
	leaq	_ZN4CORS16CopyReturnsStackEPhRj(%rip), %rax
	movq	%rax, 2144+functions(%rip)
	leaq	_ZZL13loadFunctionsvENUlPhRjE_4_FUNES_S0_(%rip), %rax
	movq	%rax, 32760+functions(%rip)
	leaq	_ZL6memory(%rip), %rax
	leaq	1048576(%rax), %rdx
	.p2align 4
.L2350:
	movb	$0, (%rax)
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L2350
	leaq	672(%rsp), %rax
	movq	%rax, 656(%rsp)
	movq	72(%rsp), %rax
	movq	40(%rax), %rbx
	movq	32(%rax), %rsi
	cmpq	$15, %rbx
	ja	.L2438
	leaq	1(%rbx), %r8
	movq	656(%rsp), %rcx
	testq	%rbx, %rbx
	je	.L2439
.L2352:
	movq	%rsi, %rdx
	call	memcpy
	jmp	.L2353
.L2333:
	movq	(%rbx), %rcx
	leaq	16(%rbx), %rax
	cmpq	%rax, %rcx
	je	.L2330
	movq	16(%rbx), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L2330:
	addq	$32, %rbx
	jmp	.L2331
.L2466:
	movabsq	$9223372036854775806, %rax
	cmpq	%rsi, %rax
	jb	.L2440
	movl	$30, %eax
	cmpq	%rax, %rsi
	cmovb	%rax, %rsi
	leaq	1(%rsi), %rcx
.LEHB7:
	call	_Znwy
	jmp	.L2441
.L2440:
	leaq	.LC15(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
.LEHE7:
.L2417:
	movq	%rax, %rbx
	leaq	128(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	%rbx, %rcx
	call	__cxa_call_terminate
.L2441:
	movq	%rax, %rbp
	movb	$0, (%rax)
	movq	%rax, 128(%rsp)
	movq	%rsi, 144(%rsp)
	movq	%rax, %rcx
	movq	%rsi, %rax
	cmpq	%rbx, %rsi
	jb	.L2336
.L2407:
	testq	%rbx, %rbx
	jne	.L2442
.L2337:
	movq	%rbx, 136(%rsp)
	movq	128(%rsp), %rax
	movb	$0, (%rax,%rbx)
	movq	136(%rsp), %rbp
	movabsq	$-9223372036854775800, %rax
	addq	%rbp, %rax
	cmpq	$6, %rax
	jbe	.L2443
	leaq	7(%rbp), %r12
	movq	128(%rsp), %rbx
	leaq	144(%rsp), %rax
	cmpq	%rax, %rbx
	je	.L2342
	movq	144(%rsp), %rax
	cmpq	%r12, %rax
	jb	.L2344
.L2343:
	addq	%rbp, %rbx
	movl	$1634745376, (%rbx)
	movl	$1047032929, 3(%rbx)
.L2345:
	movq	%r12, 136(%rsp)
	movq	128(%rsp), %rax
	movb	$0, 7(%rax,%rbp)
	movq	136(%rsp), %r8
	movq	128(%rsp), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rax, %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	leaq	128(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movl	$1, %ecx
	call	exit
.L2442:
	cmpq	$1, %rbx
	je	.L2444
	movq	%rbx, %r8
	movq	%rdi, %rdx
	call	memcpy
	jmp	.L2337
.L2444:
	movzbl	(%rdi), %eax
	movb	%al, (%rcx)
	jmp	.L2337
.L2465:
	movq	%rax, %r12
	testq	%rdi, %rdi
	jne	.L2445
.L2339:
	leaq	144(%rsp), %rax
	cmpq	%rax, %rbp
	je	.L2340
	movq	144(%rsp), %rax
	leaq	1(%rax), %rdx
	movq	%rbp, %rcx
	call	_ZdlPvy
.L2340:
	movq	%r12, 128(%rsp)
	movq	%rsi, 144(%rsp)
	jmp	.L2337
.L2445:
	movq	%rbx, %r8
	movq	%rdi, %rdx
	movq	%rax, %rcx
	call	memcpy
	jmp	.L2339
.L2443:
	leaq	.LC16(%rip), %rcx
.LEHB8:
	call	_ZSt20__throw_length_errorPKc
.L2342:
	cmpq	$15, %r12
	jbe	.L2343
	movl	$15, %eax
.L2344:
	addq	%rax, %rax
	movabsq	$9223372036854775806, %rdx
	cmpq	%rdx, %rax
	cmovbe	%rax, %rdx
	cmpq	%rax, %r12
	movq	%rdx, %rdi
	cmovnb	%r12, %rdi
	leaq	1(%rdi), %rcx
	call	_Znwy
.LEHE8:
	movq	%rax, %rsi
	movq	%rbp, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	memcpy
	leaq	(%rsi,%rbp), %rax
	movl	$1634745376, (%rax)
	movl	$1047032929, 3(%rax)
	leaq	144(%rsp), %rax
	cmpq	%rax, %rbx
	je	.L2347
	movq	144(%rsp), %rax
	leaq	1(%rax), %rdx
	movq	%rbx, %rcx
	call	_ZdlPvy
.L2347:
	movq	%rsi, 128(%rsp)
	movq	%rdi, 144(%rsp)
	jmp	.L2345
.L2438:
	leaq	1(%rbx), %rcx
.LEHB9:
	call	_Znwy
.LEHE9:
	movq	%rax, %rcx
	movq	%rax, 656(%rsp)
	movq	%rbx, 672(%rsp)
	leaq	1(%rbx), %r8
	jmp	.L2352
.L2439:
	movzbl	(%rsi), %eax
	movb	%al, (%rcx)
.L2353:
	movq	%rbx, 664(%rsp)
	leaq	656(%rsp), %rdx
	leaq	128(%rsp), %rcx
	movl	$4, %r8d
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode
	testb	$5, 384(%rsp)
	jne	.L2446
	movq	128(%rsp), %rax
	movq	-24(%rax), %rax
	movq	360(%rsp,%rax), %rsi
	movl	$0, %r15d
	movl	$0, %ebx
	movl	$0, %ebp
	movabsq	$9223372036854775807, %r14
	jmp	.L2355
.L2446:
	leaq	.LC17(%rip), %rdx
	movq	.refptr._ZSt4cerr(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	664(%rsp), %r8
	movq	656(%rsp), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rax, %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$1, %ecx
	call	exit
.L2448:
	movq	(%rsi), %rax
	movq	%rsi, %rcx
.LEHB10:
	call	*72(%rax)
	movl	%eax, %r13d
	cmpl	$-1, %eax
	movl	$0, %eax
	cmove	%rax, %rsi
.L2356:
	cmpq	%r15, %rbx
	je	.L2357
	movb	%r13b, (%rbx)
	addq	$1, %rbx
.L2358:
	movq	16(%rsi), %rax
	cmpq	24(%rsi), %rax
	jnb	.L2362
	addq	$1, %rax
	movq	%rax, 16(%rsi)
.L2355:
	testq	%rsi, %rsi
	je	.L2364
	movq	24(%rsi), %rax
	cmpq	%rax, 16(%rsi)
	jnb	.L2447
.L2365:
	movq	16(%rsi), %rax
	cmpq	24(%rsi), %rax
	jnb	.L2448
	movzbl	(%rax), %r13d
	jmp	.L2356
.L2357:
	subq	%rbp, %rbx
	cmpq	%r14, %rbx
	je	.L2449
	testq	%rbx, %rbx
	movl	$1, %edi
	cmovne	%rbx, %rdi
	addq	%rbx, %rdi
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, %rdi
	cmova	%rax, %rdi
	movq	%rdi, %rcx
	call	_Znwy
	jmp	.L2450
.L2449:
	leaq	.LC18(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
.LEHE10:
.L2419:
	movq	%rax, %rcx
	call	__cxa_begin_catch
.LEHB11:
	call	__cxa_rethrow
.LEHE11:
.L2418:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbp, 96(%rsp)
	movq	%rbp, 104(%rsp)
	movq	%r15, 112(%rsp)
	leaq	96(%rsp), %rcx
	call	_ZNSt12_Vector_baseIhSaIhEED2Ev
	movq	%rbx, %rcx
	call	__cxa_call_terminate
.L2450:
	movq	%rax, %r12
	movb	%r13b, (%rax,%rbx)
	testq	%rbx, %rbx
	jg	.L2451
.L2360:
	leaq	1(%r12,%rbx), %rbx
	testq	%rbp, %rbp
	je	.L2361
	movq	%r15, %rdx
	subq	%rbp, %rdx
	movq	%rbp, %rcx
	call	_ZdlPvy
.L2361:
	leaq	(%r12,%rdi), %r15
	movq	%r12, %rbp
	jmp	.L2358
.L2451:
	movq	%rbx, %r8
	movq	%rbp, %rdx
	movq	%rax, %rcx
	call	memcpy
	jmp	.L2360
.L2362:
	movq	(%rsi), %rax
	movq	%rsi, %rcx
.LEHB12:
	call	*80(%rax)
	jmp	.L2355
.L2447:
	movq	(%rsi), %rax
	movq	%rsi, %rcx
	call	*72(%rax)
.LEHE12:
	cmpl	$-1, %eax
	jne	.L2365
.L2364:
	movq	%rbx, %r12
	subq	%rbp, %r12
	movl	$0, %edi
	movl	$0, %r14d
	movq	$0, 48(%rsp)
	movl	$0, %esi
	movl	$0, %eax
	movq	%r15, 40(%rsp)
	movq	%rbx, 56(%rsp)
	movq	%rdi, %rbx
	jmp	.L2404
.L2369:
	movq	48(%rsp), %rax
	subq	%rax, %r14
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, %r14
	je	.L2452
	testq	%r14, %r14
	movl	$1, %esi
	cmovne	%r14, %rsi
	addq	%r14, %rsi
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, %rsi
	cmova	%rax, %rsi
	movq	%rsi, %rcx
	call	_Znwy
	movq	%rax, %rdi
	movb	$10, (%rax,%r14)
	testq	%r14, %r14
	jg	.L2453
.L2372:
	leaq	1(%rdi,%r14), %r14
	movq	48(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L2373
	subq	%rcx, %rbx
	movq	%rbx, %rdx
	call	_ZdlPvy
.L2373:
	leaq	(%rdi,%rsi), %rbx
	movq	%rdi, 48(%rsp)
	movl	%r13d, %esi
	jmp	.L2370
.L2452:
	leaq	.LC18(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
.L2453:
	movq	%r14, %r8
	movq	48(%rsp), %rdx
	movq	%rax, %rcx
	call	memcpy
	jmp	.L2372
.L2368:
	cmpq	%r14, %rbx
	je	.L2374
	movb	%dil, (%r14)
	addq	$1, %r14
.L2370:
	addl	$1, %esi
	movl	%esi, %eax
.L2404:
	cmpq	%r12, %rax
	jnb	.L2454
	movzbl	0(%rbp,%rax), %edi
	cmpb	$13, %dil
	jne	.L2368
	leal	1(%rsi), %r13d
	movl	%r13d, %eax
	cmpq	%r12, %rax
	jnb	.L2368
	cmpb	$10, 0(%rbp,%rax)
	jne	.L2368
	cmpq	%r14, %rbx
	je	.L2369
	movb	$10, (%r14)
	addq	$1, %r14
	movl	%r13d, %esi
	jmp	.L2370
.L2374:
	movq	48(%rsp), %rax
	subq	%rax, %r14
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, %r14
	je	.L2455
	testq	%r14, %r14
	movl	$1, %r13d
	cmovne	%r14, %r13
	addq	%r14, %r13
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, %r13
	cmova	%rax, %r13
	movq	%r13, %rcx
	call	_Znwy
	movq	%rax, %r15
	movb	%dil, (%rax,%r14)
	testq	%r14, %r14
	jg	.L2456
.L2376:
	leaq	1(%r15,%r14), %r14
	movq	48(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L2377
	subq	%rcx, %rbx
	movq	%rbx, %rdx
	call	_ZdlPvy
.L2377:
	leaq	(%r15,%r13), %rbx
	movq	%r15, 48(%rsp)
	jmp	.L2370
.L2455:
	leaq	.LC18(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
.L2456:
	movq	%r14, %r8
	movq	48(%rsp), %rdx
	movq	%rax, %rcx
	call	memcpy
	jmp	.L2376
.L2454:
	movq	40(%rsp), %r15
	movq	%rbx, 88(%rsp)
	movq	56(%rsp), %rbx
	movq	%rbp, 96(%rsp)
	movq	%rbx, 104(%rsp)
	movq	%r15, 112(%rsp)
	leaq	96(%rsp), %rcx
	call	_ZNSt12_Vector_baseIhSaIhEED2Ev
	leaq	128(%rsp), %rcx
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	movq	48(%rsp), %rax
	cmpq	%r14, %rax
	je	.L2412
	movq	$0, 56(%rsp)
	movl	$0, %edi
	movq	$0, 64(%rsp)
	jmp	.L2394
.L2458:
	movzbl	(%rsi), %eax
	movb	%al, (%rbx)
	addq	$1, %rbx
.L2382:
	addq	$1, %rsi
	cmpb	%sil, %r12b
	je	.L2432
	cmpq	%r14, %rsi
	je	.L2457
.L2386:
	cmpq	%rbx, %rbp
	jne	.L2458
	subq	%r15, %rbx
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, %rbx
	je	.L2459
	testq	%rbx, %rbx
	movl	$1, %edi
	cmovne	%rbx, %rdi
	addq	%rbx, %rdi
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, %rdi
	cmova	%rax, %rdi
	movq	%rdi, %rcx
	call	_Znwy
	movq	%rax, %r13
	movzbl	(%rsi), %eax
	movb	%al, 0(%r13,%rbx)
	testq	%rbx, %rbx
	jg	.L2460
.L2384:
	leaq	1(%r13,%rbx), %rbx
	testq	%r15, %r15
	je	.L2385
	movq	%rbp, %rdx
	subq	%r15, %rdx
	movq	%r15, %rcx
	call	_ZdlPvy
.L2385:
	leaq	0(%r13,%rdi), %rbp
	movq	%r13, %r15
	jmp	.L2382
.L2459:
	leaq	.LC18(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
.L2460:
	movq	%rbx, %r8
	movq	%r15, %rdx
	movq	%r13, %rcx
	call	memcpy
	jmp	.L2384
.L2457:
	movq	40(%rsp), %rdi
.L2380:
	movq	56(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L2388
	movq	%r15, (%rdi)
	movq	%rbx, 8(%rdi)
	movq	%rbp, 16(%rdi)
	addq	$24, %rdi
.L2389:
	cmpq	%rsi, %r14
	je	.L2461
	movq	%rsi, %rax
.L2394:
	movzbl	(%rax), %edx
	leaq	1(%rax), %rsi
	cmpq	%r14, %rsi
	je	.L2413
	testb	%dl, %dl
	je	.L2413
	movl	$0, %ebp
	movl	$0, %ebx
	movl	$0, %r15d
	leal	1(%rdx,%rax), %r12d
	movq	%rdi, 40(%rsp)
	jmp	.L2386
.L2413:
	movl	$0, %ebp
	movl	$0, %ebx
	movl	$0, %r15d
	jmp	.L2380
.L2432:
	movq	40(%rsp), %rdi
	jmp	.L2380
.L2388:
	movq	%rdi, %rax
	movq	64(%rsp), %rcx
	subq	%rcx, %rax
	movq	%rax, 40(%rsp)
	sarq	$3, %rax
	movabsq	$-6148914691236517205, %rdx
	imulq	%rdx, %rax
	movabsq	$384307168202282325, %rdx
	cmpq	%rdx, %rax
	je	.L2462
	testq	%rax, %rax
	movl	$1, %r12d
	cmovne	%rax, %r12
	addq	%rax, %r12
	movabsq	$384307168202282325, %rax
	cmpq	%rax, %r12
	cmova	%rax, %r12
	imulq	$24, %r12, %r12
	movq	%r12, %rcx
	call	_Znwy
	movq	%rax, %r13
	movq	40(%rsp), %rax
	addq	%r13, %rax
	movq	%r15, (%rax)
	movq	%rbx, 8(%rax)
	movq	%rbp, 16(%rax)
	movq	64(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L2414
	movq	%r13, %rdx
	.p2align 6
.L2392:
	movq	(%rax), %rcx
	movq	%rcx, (%rdx)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rdx)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rdx)
	addq	$24, %rax
	addq	$24, %rdx
	cmpq	%rax, %rdi
	jne	.L2392
	leaq	-24(%rdi), %rax
	movq	64(%rsp), %rdi
	subq	%rdi, %rax
	shrq	$3, %rax
	movabsq	$768614336404564651, %rdx
	imulq	%rdx, %rax
	movabsq	$2305843009213693951, %rdx
	andq	%rdx, %rax
	addq	$1, %rax
	imulq	$24, %rax, %rax
	addq	%r13, %rax
.L2391:
	leaq	24(%rax), %rdi
	movq	64(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L2393
	movq	56(%rsp), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L2393:
	leaq	0(%r13,%r12), %rax
	movq	%rax, 56(%rsp)
	movq	%r13, 64(%rsp)
	jmp	.L2389
.L2462:
	leaq	.LC18(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
.L2414:
	movq	%r13, %rax
	jmp	.L2391
.L2461:
	movq	%rdi, %r15
	movq	%rdi, %rbx
	movq	64(%rsp), %rax
	subq	%rax, %rbx
	sarq	$3, %rbx
	movabsq	$-6148914691236517205, %rax
	imulq	%rax, %rbx
.L2379:
	movl	$0, 128(%rsp)
	movl	$0, %eax
	leaq	128(%rsp), %rdi
	leaq	functions(%rip), %rsi
	movq	64(%rsp), %rbp
.L2395:
	cmpq	%rbx, %rax
	jnb	.L2463
	leaq	(%rax,%rax,2), %rax
	movq	0(%rbp,%rax,8), %rax
	leaq	2(%rax), %rcx
	movzwl	(%rax), %eax
	movq	%rdi, %rdx
	call	*(%rsi,%rax,8)
	movl	128(%rsp), %eax
	jmp	.L2395
.L2412:
	movl	$0, %r15d
	movl	$0, %ebx
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	jmp	.L2379
.L2463:
	movq	$0, 128(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 144(%rsp)
	leaq	128(%rsp), %rcx
	call	_ZNSt12_Vector_baseIhSaIhEED2Ev
	movq	64(%rsp), %rax
	movq	%r15, %rsi
	cmpq	%r15, %rax
	je	.L2397
	movq	%rax, %rbx
	jmp	.L2399
.L2464:
	movq	16(%rbx), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L2398:
	addq	$24, %rbx
	cmpq	%rbx, %rsi
	je	.L2397
.L2399:
	movq	(%rbx), %rcx
	testq	%rcx, %rcx
	jne	.L2464
	jmp	.L2398
.L2397:
	movq	64(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L2400
	movq	56(%rsp), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L2400:
	movq	48(%rsp), %rax
	movq	%rax, 624(%rsp)
	movq	%r14, 632(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 640(%rsp)
	leaq	624(%rsp), %rcx
	call	_ZNSt12_Vector_baseIhSaIhEED2Ev
	leaq	656(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	72(%rsp), %rax
	movq	%rax, 688(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 704(%rsp)
	leaq	688(%rsp), %rcx
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev
	movl	$0, %eax
	addq	$728, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L2416:
	movq	%rax, %rbx
	movq	72(%rsp), %rax
	movq	%rax, 688(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 704(%rsp)
	leaq	688(%rsp), %rcx
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev
	movq	%rbx, %rcx
.LEHB13:
	call	_Unwind_Resume
.LEHE13:
.L2336:
	addq	%rsi, %rax
	movabsq	$9223372036854775806, %rdx
	cmpq	%rdx, %rax
	cmovbe	%rax, %rdx
	cmpq	%rax, %rbx
	movq	%rdx, %rsi
	cmovnb	%rbx, %rsi
	leaq	1(%rsi), %rcx
.LEHB14:
	call	_Znwy
.LEHE14:
	jmp	.L2465
.L2408:
	movq	$0, 72(%rsp)
.L2328:
	movq	72(%rsp), %rax
	movq	8(%rax), %rbx
	movq	(%rax), %rdi
	leaq	144(%rsp), %rax
	movq	%rax, 128(%rsp)
	movq	$0, 136(%rsp)
	movb	$0, 144(%rsp)
	leaq	7(%rbx), %rsi
	cmpq	$15, %rsi
	ja	.L2466
	movq	128(%rsp), %rcx
	jmp	.L2407
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA4240:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT4240-.LLSDATTD4240
.LLSDATTD4240:
	.byte	0x1
	.uleb128 .LLSDACSE4240-.LLSDACSB4240
.LLSDACSB4240:
	.uleb128 .LEHB3-.LFB4240
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB4240
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L2421-.LFB4240
	.uleb128 0
	.uleb128 .LEHB5-.LFB4240
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L2420-.LFB4240
	.uleb128 0
	.uleb128 .LEHB6-.LFB4240
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB4240
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L2417-.LFB4240
	.uleb128 0
	.uleb128 .LEHB8-.LFB4240
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L2417-.LFB4240
	.uleb128 0
	.uleb128 .LEHB9-.LFB4240
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L2416-.LFB4240
	.uleb128 0
	.uleb128 .LEHB10-.LFB4240
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L2419-.LFB4240
	.uleb128 0x1
	.uleb128 .LEHB11-.LFB4240
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L2418-.LFB4240
	.uleb128 0
	.uleb128 .LEHB12-.LFB4240
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L2419-.LFB4240
	.uleb128 0x1
	.uleb128 .LEHB13-.LFB4240
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB14-.LFB4240
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L2417-.LFB4240
	.uleb128 0
.LLSDACSE4240:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT4240:
	.text
	.seh_endproc
	.def	_GLOBAL__sub_I_regByte1Number1;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I_regByte1Number1
_GLOBAL__sub_I_regByte1Number1:
.LFB5467:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	leaq	__tcf_ZL7returns(%rip), %rcx
	call	atexit
	nop
	addq	$40, %rsp
	ret
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I_regByte1Number1
	.globl	functions
	.bss
	.align 32
functions:
	.space 32768
	.globl	regTable
	.data
	.align 32
regTable:
	.quad	regByte1Number1
	.quad	regByte1Number2
	.quad	regByte1Number3
	.quad	regByte1Number4
	.quad	regByte2Number1
	.quad	regByte2Number2
	.quad	regByte2Number3
	.quad	regByte2Number4
	.quad	regByte4Number1
	.quad	regByte4Number2
	.quad	regByte4Number3
	.quad	regByte4Number4
	.quad	regByte8Number1
	.quad	regByte8Number2
	.quad	regByte8Number3
	.quad	regByte8Number4
	.globl	regByte8Number4
	.bss
	.align 8
regByte8Number4:
	.space 8
	.globl	regByte8Number3
	.align 8
regByte8Number3:
	.space 8
	.globl	regByte8Number2
	.align 8
regByte8Number2:
	.space 8
	.globl	regByte8Number1
	.align 8
regByte8Number1:
	.space 8
	.globl	regByte4Number4
	.align 4
regByte4Number4:
	.space 4
	.globl	regByte4Number3
	.align 4
regByte4Number3:
	.space 4
	.globl	regByte4Number2
	.align 4
regByte4Number2:
	.space 4
	.globl	regByte4Number1
	.align 4
regByte4Number1:
	.space 4
	.globl	regByte2Number4
	.align 2
regByte2Number4:
	.space 2
	.globl	regByte2Number3
	.align 2
regByte2Number3:
	.space 2
	.globl	regByte2Number2
	.align 2
regByte2Number2:
	.space 2
	.globl	regByte2Number1
	.align 2
regByte2Number1:
	.space 2
	.globl	regByte1Number4
regByte1Number4:
	.space 1
	.globl	regByte1Number3
regByte1Number3:
	.space 1
	.globl	regByte1Number2
regByte1Number2:
	.space 1
	.globl	regByte1Number1
regByte1Number1:
	.space 1
.lcomm _ZL10returnsPtr,4,4
.lcomm _ZL7returns,24,16
.lcomm _ZL6memory,1048576,32
	.section .rdata,"dr"
	.align 8
.LC3:
	.long	0
	.long	1138753536
	.align 4
.LC4:
	.long	1593835520
	.def	__main;	.scl	2;	.type	32;	.endef
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (x86_64-posix-seh-rev1, Built by MinGW-Builds project) 15.2.0"
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	putchar;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEi;	.scl	2;	.type	32;	.endef
	.def	_ZNSo3putEc;	.scl	2;	.type	32;	.endef
	.def	_ZNSo5flushEv;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__throw_bad_castv;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt5ctypeIcE13_M_widen_initEv;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt19__throw_logic_errorPKc;	.scl	2;	.type	32;	.endef
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	__cxa_call_terminate;	.scl	2;	.type	32;	.endef
	.def	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	__cxa_begin_catch;	.scl	2;	.type	32;	.endef
	.def	__cxa_rethrow;	.scl	2;	.type	32;	.endef
	.def	__cxa_end_catch;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cerr, "dr"
	.p2align	3, 0
	.globl	.refptr._ZSt4cerr
	.linkonce	discard
.refptr._ZSt4cerr:
	.quad	_ZSt4cerr
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.p2align	3, 0
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
