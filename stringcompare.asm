######## Brett Carter  String Compare #########



.data
prompt1:   .asciiz	"input first string: \n"		#user prompt message
prompt2:   .asciiz	"input second string: \n"
eq:        .asciiz	"strings are equal \n"
lss:	   .asciiz	"First string is less than second string \n"
grt:	   .asciiz	"First string is greater than second string \n"
str1: 	   .space 	25					#25 byte buffer
str2:	   .space	25



.text
main:	li $v0, 4				#print string instruction
	la $a0, prompt1				#ask user for a string
	syscall
	li $v0, 8				#read string instruction
	la $a0, str1				#put read string into the strbuffer
	li $a1, 25
	syscall					#got 1st string
	li $v0, 4
	la $a0, prompt2
	syscall
	li $v0, 8
	la $a0, str2
	li $a1, 25
	syscall					#got 2nd string
	
	la $a0, str1				#load 1st string
	la $a1, str2				#load 2nd string
	jal strcmp				#jump to compare method
	move $a0, $v0				#load result of compare into a0
	beq $a0, 1, greater			#1st string "larger"
	beq $a0, -1, less			#2nd string "larger"
	
	
	li $v0, 4
	la $a0, eq
	syscall
	li $v0, 10
	syscall					#end equal strings
greater:li $v0, 4
	la $a0, grt
	syscall
	li $v0, 10
	syscall					#end first string greater
less:	li $v0, 4
	la $a0, lss
	syscall
	li $v0, 10
	syscall					#end second string greater
	
strcmp: add $t0, $zero, $zero			#set t0 to zero
	add $t1, $zero, $a0			#move string one from a0 to t1
	add $t2, $zero, $a1			#move string two from a1 to t2
loop:	lb $t3($t1)				#loab byte from first string
	lb $t4($t2)				#load byte form second string
	beqz $t3, str1end			#at null char in string 1
	beqz $t4, strgreater			#at null char in string 2
	blt $t3, $t4, strless
	bgt $t3, $t4, strgreater 
	addi $t1, $t1, 1			#look at next byte
	addi $t2, $t2, 1			#look at next byte
	j loop
	
str1end:     bne $t4, 0, strless 
	     li $v0, 0				#both strings ended. equal
	     jr $ra
strgreater:  li $v0, 1				#first string is larger
	     jr $ra
strless:     li $v0, -1				#first string is less
	     jr $ra	
	