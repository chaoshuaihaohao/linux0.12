	.file	"init/main.c"
gcc -m32_compiled.:
.text
LC0:
	.ascii "out of memory\12\15\0"
	.align 4
sprintf:
	movl 4(%esp),%edx
	leal 12(%esp),%eax
	pushl %eax
	pushl 12(%esp)
	pushl %edx
	call vsprintf
	addl $12,%esp
	ret
	.align 4
time_init:
	pushl %ebp
	movl %esp,%ebp
	subl $44,%esp
L65:
	movl $128,%eax
	movl $112,%edx
/APP
	outb %al,%dx
	jmp 1f
1:	jmp 1f
1:
/NO_APP
	movl $113,%edx
/APP
	inb %dx,%al
	jmp 1f
1:	jmp 1f
1:
/NO_APP
	movb %al,-40(%ebp)
	movzbl -40(%ebp),%eax
	movl %eax,-36(%ebp)
	movl $130,%eax
	movl $112,%edx
/APP
	outb %al,%dx
	jmp 1f
1:	jmp 1f
1:
/NO_APP
	movl $113,%edx
/APP
	inb %dx,%al
	jmp 1f
1:	jmp 1f
1:
/NO_APP
	movb %al,-40(%ebp)
	movzbl -40(%ebp),%eax
	movl %eax,-32(%ebp)
	movl $132,%eax
	movl $112,%edx
/APP
	outb %al,%dx
	jmp 1f
1:	jmp 1f
1:
/NO_APP
	movl $113,%edx
/APP
	inb %dx,%al
	jmp 1f
1:	jmp 1f
1:
/NO_APP
	movb %al,-40(%ebp)
	movzbl -40(%ebp),%eax
	movl %eax,-28(%ebp)
	movl $135,%eax
	movl $112,%edx
/APP
	outb %al,%dx
	jmp 1f
1:	jmp 1f
1:
/NO_APP
	movl $113,%edx
/APP
	inb %dx,%al
	jmp 1f
1:	jmp 1f
1:
/NO_APP
	movb %al,-40(%ebp)
	movzbl -40(%ebp),%eax
	movl %eax,-24(%ebp)
	movl $136,%eax
	movl $112,%edx
/APP
	outb %al,%dx
	jmp 1f
1:	jmp 1f
1:
/NO_APP
	movl $113,%edx
/APP
	inb %dx,%al
	jmp 1f
1:	jmp 1f
1:
/NO_APP
	movb %al,-40(%ebp)
	movzbl -40(%ebp),%eax
	movl %eax,-20(%ebp)
	movl $137,%eax
	movl $112,%edx
/APP
	outb %al,%dx
	jmp 1f
1:	jmp 1f
1:
/NO_APP
	movl $113,%edx
/APP
	inb %dx,%al
	jmp 1f
1:	jmp 1f
1:
/NO_APP
	movb %al,-40(%ebp)
	movzbl -40(%ebp),%eax
	movl %eax,-16(%ebp)
	movl $128,%eax
	movl $112,%edx
/APP
	outb %al,%dx
	jmp 1f
1:	jmp 1f
1:
/NO_APP
	movl $113,%edx
/APP
	inb %dx,%al
	jmp 1f
1:	jmp 1f
1:
/NO_APP
	movb %al,-40(%ebp)
	movzbl -40(%ebp),%eax
	cmpl -36(%ebp),%eax
	jne L65
	movl -36(%ebp),%eax
	andl $15,%eax
	movl -36(%ebp),%edx
	sarl $4,%edx
	leal (%edx,%edx,4),%edx
	leal (%eax,%edx,2),%eax
	movl %eax,-36(%ebp)
	movl -32(%ebp),%eax
	andl $15,%eax
	movl -32(%ebp),%edx
	sarl $4,%edx
	leal (%edx,%edx,4),%edx
	leal (%eax,%edx,2),%eax
	movl %eax,-32(%ebp)
	movl -28(%ebp),%eax
	andl $15,%eax
	movl -28(%ebp),%edx
	sarl $4,%edx
	leal (%edx,%edx,4),%edx
	leal (%eax,%edx,2),%eax
	movl %eax,-28(%ebp)
	movl -24(%ebp),%eax
	andl $15,%eax
	movl -24(%ebp),%edx
	sarl $4,%edx
	leal (%edx,%edx,4),%edx
	leal (%eax,%edx,2),%eax
	movl %eax,-24(%ebp)
	movl -20(%ebp),%eax
	andl $15,%eax
	movl -20(%ebp),%edx
	sarl $4,%edx
	leal (%edx,%edx,4),%edx
	leal (%eax,%edx,2),%eax
	movl %eax,-20(%ebp)
	movl -16(%ebp),%eax
	andl $15,%eax
	movl -16(%ebp),%edx
	sarl $4,%edx
	leal (%edx,%edx,4),%edx
	leal (%eax,%edx,2),%eax
	movl %eax,-16(%ebp)
	decl -20(%ebp)
	leal -36(%ebp),%eax
	pushl %eax
	call kernel_mktime
	movl %eax,startup_time
	leave
	ret
.data
	.align 4
memory_end:
	.long 0
	.align 4
buffer_memory_end:
	.long 0
	.align 4
main_memory_start:
	.long 0
.text
LC1:
	.ascii "/bin/sh\0"
.data
	.align 4
argv_rc:
	.long LC1
	.long 0
.text
LC2:
	.ascii "HOME=/\0"
.data
	.align 4
envp_rc:
	.long LC2
	.long 0
	.long 0
.text
LC3:
	.ascii "-/bin/sh\0"
.data
	.align 4
argv:
	.long LC3
	.long 0
.text
LC4:
	.ascii "HOME=/usr/root\0"
.data
	.align 4
envp:
	.long LC4
	.long 0
	.long 0
.text
LC5:
	.ascii "TERM=con%dx%d\0"
	.align 4
.globl main
main:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	movzwl 590332,%eax
	movl %eax,ROOT_DEV
	movzwl 590330,%eax
	movl %eax,SWAP_DEV
	movw 589838,%dx
	andl $255,%edx
	pushl %edx
	movw 589838,%ax
	andw $65280,%ax
	shrw $8,%ax
	movw %ax,-4(%ebp)
	movzwl -4(%ebp),%eax
	pushl %eax
	pushl $LC5
	pushl $term
	call sprintf
	movl $term,envp+4
	movl $term,envp_rc+4
	movl $drive_info,%edi
	movl $589952,%esi
	movl $8,%ecx
	cld
	rep
	movsl
	movzwl 589826,%eax
	sall $10,%eax
	addl $1048576,%eax
	movl %eax,memory_end
	andl $-4096,memory_end
	addl $16,%esp
	cmpl $16777216,memory_end
	jle L69
	movl $16777216,memory_end
L69:
	cmpl $12582912,memory_end
	jle L70
	movl $4194304,buffer_memory_end
	jmp L71
	.align 4
L70:
	cmpl $6291456,memory_end
	jle L72
	movl $2097152,buffer_memory_end
	jmp L71
	.align 4
L72:
	movl $1048576,buffer_memory_end
L71:
	movl buffer_memory_end,%eax
	movl %eax,main_memory_start
	pushl memory_end
	pushl buffer_memory_end
	call mem_init
	call trap_init
	call blk_dev_init
	call chr_dev_init
	call tty_init
	call time_init
	call sched_init
	pushl buffer_memory_end
	call buffer_init
	call hd_init
	call floppy_init
/APP
	sti
	movl %esp,%eax
	pushl $0x17
	pushl %eax
	pushfl
	pushl $0x0f
	pushl $1f
	iret
1:	movl $0x17,%eax
	movw %ax,%ds
	movw %ax,%es
	movw %ax,%fs
	movw %ax,%gs
/NO_APP
	addl $12,%esp
	movl $2,%eax
/APP
	int $0x80
/NO_APP
	movl %eax,%edx
	testl %edx,%edx
	jge L75
	negl %edx
	movl %edx,_errno
	movl $-1,%edx
L75:
	testl %edx,%edx
	jne L74
	call init
L74:
L77:
	movl $29,%eax
/APP
	int $0x80
/NO_APP
	jmp L77
	.align 4
	leal -16(%ebp),%esp
	popl %esi
	popl %edi
	leave
	ret
	.align 4
printf:
	pushl %ebx
	leal 12(%esp),%eax
	pushl %eax
	pushl 12(%esp)
	pushl $_printbuf
	call vsprintf
	movl %eax,%ebx
	pushl %ebx
	pushl $_printbuf
	pushl $1
	call write
	movl %ebx,%eax
	addl $24,%esp
	popl %ebx
	ret
LC6:
	.ascii "/dev/tty1\0"
LC7:
	.ascii "%d buffers = %d bytes buffer space\12\15\0"
LC8:
	.ascii "Free mem: %d bytes\12\15\0"
LC9:
	.ascii "/etc/rc\0"
LC10:
	.ascii "Fork failed in init\15\12\0"
LC11:
	.ascii "\12\15child %d died with code %04x\12\15\0"
	.align 4
.globl _init
init:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	xorl %eax,%eax
	movl $drive_info,%ebx
/APP
	int $0x80
/NO_APP
	testl %eax,%eax
	jge L82
	negl %eax
	movl %eax,errno
L82:
	pushl $0
	pushl $2
	pushl $LC6
	call open
	pushl $0
	call dup
	pushl $0
	call dup
	movl nr_buffers,%eax
	sall $10,%eax
	pushl %eax
	pushl nr_buffers
	pushl $LC7
	call printf
	addl $32,%esp
	movl memory_end,%eax
	subl main_memory_start,%eax
	pushl %eax
	pushl $LC8
	call printf
	addl $8,%esp
	movl $2,%eax
/APP
	int $0x80
/NO_APP
	testl %eax,%eax
	jl L86
	movl %eax,%edi
	jmp L85
	.align 4
L86:
	negl %eax
	movl %eax,errno
	movl $-1,%edi
L85:
	testl %edi,%edi
	jne L84
	pushl $0
	call close
	pushl $0
	pushl $0
	pushl $LC9
	call open
	addl $16,%esp
	testl %eax,%eax
	je L87
	pushl $1
	call _exit
	.align 4
L87:
	pushl $envp_rc
	pushl $argv_rc
	pushl $LC1
	call execve
	pushl $2
	call _exit
	.align 4
L84:
	testl %edi,%edi
	jle L88
	leal -4(%ebp),%esi
L89:
	pushl %esi
	call wait
	addl $4,%esp
	cmpl %edi,%eax
	jne L89
L88:
	leal -4(%ebp),%esi
L91:
	movl $2,%eax
/APP
	int $0x80
/NO_APP
	testl %eax,%eax
	jge L94
	negl %eax
	movl %eax,errno
	movl $-1,%eax
L94:
	movl %eax,%edi
	testl %edi,%edi
	jge L93
	pushl $LC10
	call printf
	addl $4,%esp
	jmp L91
	.align 4
L93:
	testl %edi,%edi
	jne L96
	pushl $0
	call close
	pushl $1
	call close
	pushl $2
	call close
	call setsid
	pushl $0
	pushl $2
	pushl $LC6
	call open
	pushl $0
	call dup
	pushl $0
	call dup
	addl $32,%esp
	pushl $envp
	pushl $argv
	pushl $LC1
	call execve
	pushl %eax
	call _exit
	.align 4
L96:
L97:
	pushl %esi
	call wait
	addl $4,%esp
	cmpl %edi,%eax
	jne L97
	pushl -4(%ebp)
	pushl %edi
	pushl $LC11
	call printf
	addl $12,%esp
	movl $36,%eax
/APP
	int $0x80
/NO_APP
	testl %eax,%eax
	jge L91
	negl %eax
	movl %eax,errno
	jmp L91
	.align 4
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	leave
	ret
.comm drive_info,32
.lcomm term,32
.lcomm printbuf,1024
