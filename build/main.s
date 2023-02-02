	.file	"main.c"
	.text
#APP
	.code16gcc
	call main
	
#NO_APP
	.align 2
	.globl	_ZN3RomC2Ev
	.type	_ZN3RomC2Ev, @function
_ZN3RomC2Ev:
.LFB1:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movb	31872, %dl
	movb	%dl, (%eax)
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	_ZN3RomC2Ev, .-_ZN3RomC2Ev
	.globl	_ZN3RomC1Ev
	.set	_ZN3RomC1Ev,_ZN3RomC2Ev
	.align 2
	.globl	_ZN3RomD2Ev
	.type	_ZN3RomD2Ev, @function
_ZN3RomD2Ev:
.LFB4:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE4:
	.size	_ZN3RomD2Ev, .-_ZN3RomD2Ev
	.globl	_ZN3RomD1Ev
	.set	_ZN3RomD1Ev,_ZN3RomD2Ev
	.align 2
	.globl	_ZN3Rom17load_boot_disk_idEv
	.type	_ZN3Rom17load_boot_disk_idEv, @function
_ZN3Rom17load_boot_disk_idEv:
.LFB6:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movb	31872, %dl
	movl	8(%ebp), %eax
	movb	%dl, (%eax)
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE6:
	.size	_ZN3Rom17load_boot_disk_idEv, .-_ZN3Rom17load_boot_disk_idEv
	.align 2
	.globl	_ZN3Rom16get_boot_disk_idEv
	.type	_ZN3Rom16get_boot_disk_idEv, @function
_ZN3Rom16get_boot_disk_idEv:
.LFB7:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movb	(%eax), %al
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE7:
	.size	_ZN3Rom16get_boot_disk_idEv, .-_ZN3Rom16get_boot_disk_idEv
	.align 2
	.globl	_ZN3Rom16get_daps_addressEP6s_daps
	.type	_ZN3Rom16get_daps_addressEP6s_daps, @function
_ZN3Rom16get_daps_addressEP6s_daps:
.LFB8:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, %ecx
	shrl	$4, %ecx
	movw	%cx, 2(%edx)
	andl	$15, %eax
	movw	%ax, (%edx)
	movl	%edx, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
.LFE8:
	.size	_ZN3Rom16get_daps_addressEP6s_daps, .-_ZN3Rom16get_daps_addressEP6s_daps
	.align 2
	.globl	_ZN3Rom16get_address_dapsE9s_address
	.type	_ZN3Rom16get_address_dapsE9s_address, @function
_ZN3Rom16get_address_dapsE9s_address:
.LFB9:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	12(%ebp), %eax
	movzwl	%ax, %edx
	shrl	$16, %eax
	sall	$4, %eax
	addl	%edx, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE9:
	.size	_ZN3Rom16get_address_dapsE9s_address, .-_ZN3Rom16get_address_dapsE9s_address
	.align 2
	.globl	_ZN3Rom18load_data_use_dapsEP6s_daps
	.type	_ZN3Rom18load_data_use_dapsEP6s_daps, @function
_ZN3Rom18load_data_use_dapsEP6s_daps:
.LFB10:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	.cfi_offset 6, -12
	movl	12(%ebp), %esi
	movl	8(%ebp), %eax
	movb	(%eax), %dl
	movl	%esi, %ecx
	shrl	$4, %ecx
	andl	$15, %esi
#APP
# 60 "../include/lib/rom/rom.h" 1
	mov $0x42, %ah
push %cs
pop %ds
int $0x13

# 0 "" 2
#NO_APP
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE10:
	.size	_ZN3Rom18load_data_use_dapsEP6s_daps, .-_ZN3Rom18load_data_use_dapsEP6s_daps
	.globl	_Z14get_video_modev
	.type	_Z14get_video_modev, @function
_Z14get_video_modev:
.LFB11:
	.cfi_startproc
#APP
# 19 "../include/lib/graphics/graphics.h" 1
	mov $0x0f00, %ax
int $0x10

# 0 "" 2
#NO_APP
	ret
	.cfi_endproc
.LFE11:
	.size	_Z14get_video_modev, .-_Z14get_video_modev
	.globl	_Z14set_video_modeh
	.type	_Z14set_video_modeh, @function
_Z14set_video_modeh:
.LFB12:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movb	8(%ebp), %al
#APP
# 31 "../include/lib/graphics/graphics.h" 1
	mov $0x00, %ah
int $0x10

# 0 "" 2
#NO_APP
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE12:
	.size	_Z14set_video_modeh, .-_Z14set_video_modeh
	.globl	_Z19get_video_mode_infov
	.type	_Z19get_video_mode_infov, @function
_Z19get_video_mode_infov:
.LFB13:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	movl	8(%ebp), %edx
#APP
# 46 "../include/lib/graphics/graphics.h" 1
	mov $0x0f00, %ax
int $0x10
mov %ah, %cl
mov %bh, %bl
# 0 "" 2
#NO_APP
	movzbl	%al, %eax
	movw	%ax, (%edx)
	movzbl	%cl, %ecx
	movw	%cx, 2(%edx)
	movzbl	%bl, %ebx
	movw	%bx, 4(%edx)
	movl	%edx, %eax
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
.LFE13:
	.size	_Z19get_video_mode_infov, .-_Z19get_video_mode_infov
	.globl	_Z19get_supported_modesv
	.type	_Z19get_supported_modesv, @function
_Z19get_supported_modesv:
.LFB14:
	.cfi_startproc
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE14:
	.size	_Z19get_supported_modesv, .-_Z19get_supported_modesv
	.globl	_Z9str_new_fv
	.type	_Z9str_new_fv, @function
_Z9str_new_fv:
.LFB15:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %edx
	movl	%edx, %eax
	leal	255(%edx), %ecx
.L21:
	movb	$0, 1(%eax)
	incl	%eax
	cmpl	%ecx, %eax
	jne	.L21
	movl	%edx, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
.LFE15:
	.size	_Z9str_new_fv, .-_Z9str_new_fv
	.globl	_Z9str_clearPh
	.type	_Z9str_clearPh, @function
_Z9str_clearPh:
.LFB16:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %edx
	xorl	%eax, %eax
.L26:
	movb	$0, (%edx,%eax)
	incl	%eax
	cmpl	$255, %eax
	jne	.L26
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE16:
	.size	_Z9str_clearPh, .-_Z9str_clearPh
	.globl	_Z11str_clear_f11s_f_string8
	.type	_Z11str_clear_f11s_f_string8, @function
_Z11str_clear_f11s_f_string8:
.LFB17:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	leal	9(%ebp), %eax
	pushl	%eax
	call	_Z9str_clearPh
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE17:
	.size	_Z11str_clear_f11s_f_string8, .-_Z11str_clear_f11s_f_string8
	.globl	_Z11str_get_lenPh
	.type	_Z11str_get_lenPh, @function
_Z11str_get_lenPh:
.LFB18:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %ecx
	xorl	%eax, %eax
.L33:
	movb	%al, %dl
	cmpb	$0, (%ecx,%eax)
	je	.L31
	incl	%eax
	cmpl	$255, %eax
	jne	.L33
	xorl	%edx, %edx
.L31:
	movb	%dl, %al
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE18:
	.size	_Z11str_get_lenPh, .-_Z11str_get_lenPh
	.globl	_Z12str_calc_len11s_f_string8
	.type	_Z12str_calc_len11s_f_string8, @function
_Z12str_calc_len11s_f_string8:
.LFB19:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	movl	8(%ebp), %eax
	movb	12(%ebp), %cl
	xorl	%edx, %edx
.L39:
	cmpb	$0, 13(%ebp,%edx)
	jne	.L37
	movb	%dl, %cl
	jmp	.L38
.L37:
	incl	%edx
	cmpl	$255, %edx
	jne	.L39
.L38:
	movb	%cl, 12(%ebp)
	leal	12(%ebp), %esi
	movl	$64, %ecx
	movl	%eax, %edi
	rep movsl
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
.LFE19:
	.size	_Z12str_calc_len11s_f_string8, .-_Z12str_calc_len11s_f_string8
	.globl	_Z7str_cmpPhS_
	.type	_Z7str_cmpPhS_, @function
_Z7str_cmpPhS_:
.LFB20:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$24, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %edi
	movl	12(%ebp), %esi
	pushl	%edi
	call	_Z11str_get_lenPh
	movb	%al, %bl
	movl	%esi, (%esp)
	call	_Z11str_get_lenPh
	addl	$16, %esp
	movb	$1, %cl
	cmpb	%al, %bl
	jne	.L42
	xorl	%eax, %eax
.L44:
	cmpb	%al, %bl
	jbe	.L49
	movb	(%edi,%eax), %cl
	incl	%eax
	cmpb	-1(%esi,%eax), %cl
	je	.L44
	movb	$1, %cl
	jmp	.L42
.L49:
	xorl	%ecx, %ecx
.L42:
	movb	%cl, %al
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE20:
	.size	_Z7str_cmpPhS_, .-_Z7str_cmpPhS_
	.globl	_Z7str_revPhS_h
	.type	_Z7str_revPhS_h, @function
_Z7str_revPhS_h:
.LFB21:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	8(%ebp), %edx
	movl	12(%ebp), %ecx
	movl	16(%ebp), %eax
	cmpb	$1, %al
	jbe	.L50
	movzbl	(%edx), %esi
	movb	(%ecx), %bl
	movb	%bl, (%edx)
	movl	%esi, %ebx
	movb	%bl, (%ecx)
	subl	$2, %eax
	movzbl	%al, %eax
	movl	%eax, 16(%ebp)
	decl	%ecx
	movl	%ecx, 12(%ebp)
	incl	%edx
	movl	%edx, 8(%ebp)
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	jmp	_Z7str_revPhS_h
.L50:
	.cfi_restore_state
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE21:
	.size	_Z7str_revPhS_h, .-_Z7str_revPhS_h
	.globl	_Z12str_conv_decm
	.type	_Z12str_conv_decm, @function
_Z12str_conv_decm:
.LFB22:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$268, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %ebx
	movl	12(%ebp), %eax
	movl	%ebx, %edx
	leal	255(%ebx), %ecx
.L54:
	movb	$0, 1(%edx)
	incl	%edx
	cmpl	%edx, %ecx
	jne	.L54
	xorl	%ecx, %ecx
	leal	1(%ebx), %esi
	movl	$10, %edi
.L56:
	movl	%ecx, %edx
	testl	%eax, %eax
	je	.L55
	xorl	%edx, %edx
	divl	%edi
	addl	$48, %edx
	movb	%dl, (%esi,%ecx)
	incl	%ecx
	cmpl	$255, %ecx
	jne	.L56
	movl	$255, %edx
.L55:
	movzwl	%dx, %edi
	pushl	%eax
	pushl	%edi
	leal	-1(%esi,%edi), %eax
	pushl	%eax
	pushl	%esi
	call	_Z7str_revPhS_h
	movb	$0, 1(%ebx,%edi)
	leal	-280(%ebp), %eax
	subl	$252, %esp
	movl	$64, %ecx
	movl	%esp, %edi
	movl	%ebx, %esi
	rep movsl
	pushl	%eax
	call	_Z12str_calc_len11s_f_string8
	movl	$64, %ecx
	movl	%ebx, %edi
	leal	-280(%ebp), %eax
	movl	%eax, %esi
	rep movsl
	movl	%ebx, %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
.LFE22:
	.size	_Z12str_conv_decm, .-_Z12str_conv_decm
	.globl	_Z12str_conv_binm
	.type	_Z12str_conv_binm, @function
_Z12str_conv_binm:
.LFB23:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$268, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %ebx
	movl	12(%ebp), %edi
	movl	%ebx, %eax
	leal	255(%ebx), %ecx
.L64:
	movb	$0, 1(%eax)
	incl	%eax
	cmpl	%eax, %ecx
	jne	.L64
	xorl	%eax, %eax
	leal	1(%ebx), %ecx
.L66:
	movzwl	%ax, %esi
	testl	%edi, %edi
	je	.L65
	movl	%edi, %esi
	andl	$1, %esi
	shrl	%edi
	addl	$48, %esi
	movl	%esi, %edx
	movb	%dl, (%ecx,%eax)
	incl	%eax
	cmpl	$255, %eax
	jne	.L66
	movl	$255, %esi
.L65:
	pushl	%eax
	pushl	%esi
	leal	-1(%ecx,%esi), %eax
	pushl	%eax
	pushl	%ecx
	call	_Z7str_revPhS_h
	movb	$0, 1(%ebx,%esi)
	leal	-280(%ebp), %eax
	subl	$252, %esp
	movl	$64, %ecx
	movl	%esp, %edi
	movl	%ebx, %esi
	rep movsl
	pushl	%eax
	call	_Z12str_calc_len11s_f_string8
	movl	$64, %ecx
	movl	%ebx, %edi
	leal	-280(%ebp), %eax
	movl	%eax, %esi
	rep movsl
	movl	%ebx, %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
.LFE23:
	.size	_Z12str_conv_binm, .-_Z12str_conv_binm
	.globl	_Z16int_conv_str_dec11s_f_string8
	.type	_Z16int_conv_str_dec11s_f_string8, @function
_Z16int_conv_str_dec11s_f_string8:
.LFB24:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	$1, %ecx
	xorl	%eax, %eax
.L75:
	movzbl	8(%ecx,%ebp), %edx
	testb	%dl, %dl
	je	.L74
	addl	%eax, %edx
	imull	$10, %edx, %eax
	subl	$480, %eax
	incl	%ecx
	cmpl	$256, %ecx
	jne	.L75
.L74:
	movl	$10, %ecx
	xorl	%edx, %edx
	divl	%ecx
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE24:
	.size	_Z16int_conv_str_dec11s_f_string8, .-_Z16int_conv_str_dec11s_f_string8
	.globl	_Z16int_conv_str_bin11s_f_string8
	.type	_Z16int_conv_str_bin11s_f_string8, @function
_Z16int_conv_str_bin11s_f_string8:
.LFB25:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	$1, %edx
	xorl	%eax, %eax
.L83:
	movzbl	8(%edx,%ebp), %ecx
	testb	%cl, %cl
	je	.L82
	leal	-48(%eax,%ecx), %eax
	addl	%eax, %eax
	incl	%edx
	cmpl	$256, %edx
	jne	.L83
.L82:
	shrl	%eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE25:
	.size	_Z16int_conv_str_bin11s_f_string8, .-_Z16int_conv_str_bin11s_f_string8
	.globl	_Z10print_charhhhht
	.type	_Z10print_charhhhht, @function
_Z10print_charhhhht:
.LFB26:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	movzbl	20(%ebp), %edi
	movzwl	24(%ebp), %eax
	imull	%eax, %edi
	movzbl	16(%ebp), %eax
	addl	%eax, %edi
	addl	%edi, %edi
	movl	8(%ebp), %eax
	movl	12(%ebp), %ecx
#APP
# 13 "../src/kernel/main.c" 1
	mov %cl, %ah
	push $0xb800
	pop %es
	stosw
	
# 0 "" 2
#NO_APP
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE26:
	.size	_Z10print_charhhhht, .-_Z10print_charhhhht
	.globl	_Z10print_logo17s_video_mode_infoh
	.type	_Z10print_logo17s_video_mode_infoh, @function
_Z10print_logo17s_video_mode_infoh:
.LFB27:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 3, -12
	movl	8(%ebp), %edx
	shrl	$16, %edx
	movzbl	16(%ebp), %ebx
	pushl	%edx
	pushl	%ebx
	pushl	$3
	movzbl	c_white, %eax
	pushl	%eax
	pushl	$90
	call	_Z10print_charhhhht
	addl	$20, %esp
	pushl	%edx
	pushl	%ebx
	pushl	$4
	movzbl	c_blue, %eax
	pushl	%eax
	pushl	$79
	call	_Z10print_charhhhht
	addl	$20, %esp
	pushl	%edx
	pushl	%ebx
	pushl	$5
	movzbl	c_red, %eax
	pushl	%eax
	pushl	$83
	call	_Z10print_charhhhht
	addl	$32, %esp
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE27:
	.size	_Z10print_logo17s_video_mode_infoh, .-_Z10print_logo17s_video_mode_infoh
	.globl	_Z8print_ok17s_video_mode_infoh
	.type	_Z8print_ok17s_video_mode_infoh, @function
_Z8print_ok17s_video_mode_infoh:
.LFB28:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	8(%ebp), %edx
	shrl	$16, %edx
	movzbl	16(%ebp), %esi
	movzbl	c_green, %ebx
	subl	$12, %esp
	pushl	%edx
	pushl	%esi
	pushl	$2
	pushl	%ebx
	pushl	$79
	call	_Z10print_charhhhht
	addl	$20, %esp
	pushl	%edx
	pushl	%esi
	pushl	$3
	pushl	%ebx
	pushl	$75
	call	_Z10print_charhhhht
	addl	$32, %esp
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE28:
	.size	_Z8print_ok17s_video_mode_infoh, .-_Z8print_ok17s_video_mode_infoh
	.globl	_Z11print_error17s_video_mode_infoh
	.type	_Z11print_error17s_video_mode_infoh, @function
_Z11print_error17s_video_mode_infoh:
.LFB29:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	8(%ebp), %edx
	shrl	$16, %edx
	movzbl	16(%ebp), %esi
	movzbl	c_red, %ebx
	subl	$12, %esp
	pushl	%edx
	pushl	%esi
	pushl	$2
	pushl	%ebx
	pushl	$69
	call	_Z10print_charhhhht
	addl	$20, %esp
	pushl	%edx
	pushl	%esi
	pushl	$3
	pushl	%ebx
	pushl	$82
	call	_Z10print_charhhhht
	addl	$20, %esp
	pushl	%edx
	pushl	%esi
	pushl	$4
	pushl	%ebx
	pushl	$82
	call	_Z10print_charhhhht
	addl	$20, %esp
	pushl	%edx
	pushl	%esi
	pushl	$5
	pushl	%ebx
	pushl	$79
	call	_Z10print_charhhhht
	addl	$20, %esp
	pushl	%edx
	pushl	%esi
	pushl	$6
	pushl	%ebx
	pushl	$82
	call	_Z10print_charhhhht
	addl	$32, %esp
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE29:
	.size	_Z11print_error17s_video_mode_infoh, .-_Z11print_error17s_video_mode_infoh
	.globl	_Z6statusb17s_video_mode_infoh
	.type	_Z6statusb17s_video_mode_infoh, @function
_Z6statusb17s_video_mode_infoh:
.LFB30:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	12(%ebp), %eax
	movl	16(%ebp), %edx
	movzbl	20(%ebp), %ecx
	cmpb	$0, 8(%ebp)
	movl	%ecx, 16(%ebp)
	movl	%eax, 8(%ebp)
	movl	%edx, 12(%ebp)
	je	.L98
	popl	%ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	jmp	_Z8print_ok17s_video_mode_infoh
.L98:
	.cfi_restore_state
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	jmp	_Z11print_error17s_video_mode_infoh
	.cfi_endproc
.LFE30:
	.size	_Z6statusb17s_video_mode_infoh, .-_Z6statusb17s_video_mode_infoh
	.section	.text.startup,"ax",@progbits
	.globl	main
	.type	main, @function
main:
.LFB31:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	movl	%esp, %ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x70,0x6
	.cfi_escape 0x10,0x7,0x2,0x75,0x7c
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	subl	$324, %esp
	movb	31872, %al
	movb	%al, -321(%ebp)
	movb	%al, -297(%ebp)
	pushl	$3
	call	_Z14set_video_modeh
	leal	-320(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z19get_video_mode_infov
	movl	-320(%ebp), %esi
	movl	-316(%ebp), %edi
	movl	%esi, %eax
	shrl	$16, %eax
	movl	%eax, %ebx
	addl	$12, %esp
	pushl	$1
	pushl	%edi
	pushl	%esi
	xorl	%eax, %eax
	cmpw	$3, %si
	sete	%al
	pushl	%eax
	call	_Z6statusb17s_video_mode_infoh
	pushl	$2
	pushl	%edi
	pushl	%esi
	xorl	%eax, %eax
	cmpb	$-128, -321(%ebp)
	sete	%al
	pushl	%eax
	call	_Z6statusb17s_video_mode_infoh
	addl	$28, %esp
	pushl	$4
	pushl	%edi
	pushl	%esi
	call	_Z10print_logo17s_video_mode_infoh
	leal	-280(%ebp), %esi
	popl	%eax
	popl	%edx
	movzbl	-321(%ebp), %eax
	pushl	%eax
	pushl	%esi
	call	_Z12str_conv_decm
	movl	%esi, %edx
	movl	$8, %esi
	addl	$12, %esp
	movzwl	%bx, %ebx
.L101:
	movzbl	c_white, %edi
	incl	%edx
	leal	-8(%esi), %eax
	cmpb	$9, %al
	ja	.L104
	subl	$12, %esp
	pushl	%ebx
	pushl	$2
	pushl	%esi
	pushl	%edi
	movzbl	(%edx), %eax
	pushl	%eax
	call	_Z10print_charhhhht
	incl	%esi
	addl	$32, %esp
	jmp	.L101
.L104:
	leal	-296(%ebp), %esi
	movb	-321(%ebp), %dl
#APP
# 80 "../src/kernel/main.c" 1
	mov $0x42, %ah
	push %cs
	pop %ds
	int $0x13
	
# 0 "" 2
#NO_APP
	subl	$12, %esp
	pushl	%ebx
	pushl	$8
	pushl	$8
	pushl	%edi
	shrw	$8, %ax
	addl	$48, %eax
	movzbl	%al, %eax
	pushl	%eax
	call	_Z10print_charhhhht
	addl	$24, %esp
	pushl	%esi
	leal	-297(%ebp), %eax
	pushl	%eax
	call	_ZN3Rom18load_data_use_dapsEP6s_daps
	movl	%esi, %edx
	shrl	$4, %edx
	movl	%ebx, (%esp)
	pushl	$10
	pushl	$10
	pushl	%edi
	pushl	$49
	call	_Z10print_charhhhht
	addl	$20, %esp
	pushl	%ebx
	pushl	$10
	pushl	$15
	pushl	%edi
	pushl	$124
	call	_Z10print_charhhhht
	addl	$20, %esp
	pushl	%ebx
	pushl	$10
	pushl	$16
	pushl	%edi
	pushl	$0
	call	_Z10print_charhhhht
	addl	$20, %esp
	pushl	%ebx
	pushl	$10
	pushl	$17
	pushl	%edi
	pushl	$0
	call	_Z10print_charhhhht
	addl	$20, %esp
	pushl	%ebx
	pushl	$10
	pushl	$18
	pushl	%edi
	pushl	$0
	call	_Z10print_charhhhht
	addl	$20, %esp
	pushl	%ebx
	pushl	$10
	pushl	$19
	pushl	%edi
	xorl	%eax, %eax
	andl	$12, %esi
	setne	%al
	pushl	%eax
	call	_Z10print_charhhhht
	addl	$20, %esp
	pushl	%ebx
	pushl	$11
	pushl	$10
	pushl	%edi
	pushl	$50
	call	_Z10print_charhhhht
	addl	$20, %esp
	pushl	%ebx
	pushl	$11
	pushl	$15
	pushl	%edi
	pushl	$124
	call	_Z10print_charhhhht
	addl	$20, %esp
	xorl	%eax, %eax
	testb	$15, %dl
	setne	%al
	movl	%eax, %esi
	pushl	%ebx
	pushl	$11
	pushl	$16
	pushl	%edi
	pushl	%esi
	call	_Z10print_charhhhht
	addl	$20, %esp
	pushl	%ebx
	pushl	$11
	pushl	$17
	pushl	%edi
	pushl	%esi
	call	_Z10print_charhhhht
	addl	$20, %esp
	pushl	%ebx
	pushl	$11
	pushl	$18
	pushl	%edi
	pushl	%esi
	call	_Z10print_charhhhht
	addl	$20, %esp
	pushl	%ebx
	pushl	$11
	pushl	$19
	pushl	%edi
	xorl	%eax, %eax
	testw	%dx, %dx
	setne	%al
	pushl	%eax
	call	_Z10print_charhhhht
	movl	$5376, %eax
#APP
# 118 "../src/kernel/main.c" 1
	push $0x0000
	pop %ds
	
# 0 "" 2
#NO_APP
	addl	$32, %esp
	leal	-16(%ebp), %esp
	popl	%ecx
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE31:
	.size	main, .-main
	.globl	new_line
	.data
	.align 4
	.type	new_line, @object
	.size	new_line, 4
new_line:
	.string	"\n\r"
	.string	""
	.globl	c_white
	.align 4
	.type	c_white, @object
	.size	c_white, 4
c_white:
	.long	15
	.globl	c_yellow
	.align 4
	.type	c_yellow, @object
	.size	c_yellow, 4
c_yellow:
	.long	14
	.globl	c_light_purple
	.align 4
	.type	c_light_purple, @object
	.size	c_light_purple, 4
c_light_purple:
	.long	13
	.globl	c_pink
	.align 4
	.type	c_pink, @object
	.size	c_pink, 4
c_pink:
	.long	12
	.globl	c_light_turquoise
	.align 4
	.type	c_light_turquoise, @object
	.size	c_light_turquoise, 4
c_light_turquoise:
	.long	11
	.globl	c_light_green
	.align 4
	.type	c_light_green, @object
	.size	c_light_green, 4
c_light_green:
	.long	10
	.globl	c_light_blue
	.align 4
	.type	c_light_blue, @object
	.size	c_light_blue, 4
c_light_blue:
	.long	9
	.globl	c_gray
	.align 4
	.type	c_gray, @object
	.size	c_gray, 4
c_gray:
	.long	8
	.globl	c_light_gray
	.align 4
	.type	c_light_gray, @object
	.size	c_light_gray, 4
c_light_gray:
	.long	7
	.globl	c_brown
	.align 4
	.type	c_brown, @object
	.size	c_brown, 4
c_brown:
	.long	6
	.globl	c_purple
	.align 4
	.type	c_purple, @object
	.size	c_purple, 4
c_purple:
	.long	5
	.globl	c_red
	.align 4
	.type	c_red, @object
	.size	c_red, 4
c_red:
	.long	4
	.globl	c_turquoise
	.align 4
	.type	c_turquoise, @object
	.size	c_turquoise, 4
c_turquoise:
	.long	3
	.globl	c_green
	.align 4
	.type	c_green, @object
	.size	c_green, 4
c_green:
	.long	2
	.globl	c_blue
	.align 4
	.type	c_blue, @object
	.size	c_blue, 4
c_blue:
	.long	1
	.globl	c_black
	.bss
	.align 4
	.type	c_black, @object
	.size	c_black, 4
c_black:
	.zero	4
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
