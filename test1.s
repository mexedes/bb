.data

prompt: 	.asciiz  "abc:"
prompt1:	.asciiz  "\n"

.globl main

.text

main:
	li	$v0,4
	la	$a0,prompt
	syscall

int1:	li	$v0,5
	syscall
	move 	$t0,$v0
	li	$v0,1		
	move	$a0,$t0	
	syscall
	li	$v0,4
	la	$a0,prompt1
	syscall
int2:	li	$v0,5
	syscall
	move 	$t1,$v0
	li	$v0,1		
	move	$a0,$t1	
	syscall
	li	$v0,4
	la	$a0,prompt1
	syscall
addint: add	$t2,$t1,$t0
	li	$v0,1
	move	$a0,$t2
	syscall
	li	$v0,4
	la	$a0,prompt1
	syscall
	j main

end: 	li	$v0,10
	syscall

iny:	li	$v0,5
	syscall		
	move	$t0,$v0
	li	$v0,1
	move	$a0,t0
	syscall

oka:	li	v0,5
	syscall
	move	t0,v0
	li	v0,1
	move	a0,t0
	syscall	