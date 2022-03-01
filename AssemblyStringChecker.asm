# Osvaldo Tirado-Cortes
# 7/1/2020

# stringeval - compares the provided string and checks for characters C, H, A, R, G, E, O, N in upper and lower case
# Registers used:
# $t0 - register holding the string argument to be compared
# $t1 - register that holds the address of the string for comparison
# $t2 - register holding custom counter for C
# $t3 - register holding custom counter for H
# $t4 - register holding custom counter for A
# $t5 - register holding custom counter for R
# $t6 - register holding custom counter for G
# $t7 - register holding custom counter for E
# $t8 - register holding custom counter for O
# $t9 - register holding custom counter for N
# $a0 - argument parameter for syscall
# $v0 - syscall parameter and return value

.data
str: .asciiz "The Knights field 16 varsity teams (6 men's, 9 women's and one co-ed sport) that have won numerous national and conference titles. The UCF Knights Football team won conference championships in 2007 and 2010, and the Knights women's basketball team won conference titles the 2009 and 2010."
char_c: .asciiz "C: "
char_h: .asciiz "\nH: "
char_a: .asciiz "\nA: "
char_r: .asciiz "\nR: "
char_g: .asciiz "\nG: "
char_e: .asciiz "\nE: "
char_o: .asciiz "\nO: "
char_n: .asciiz "\nN: "


.text
la $t0, str		#load address into t1

loop:
lb $t1, 0($t0) 		# load the next character into s1
beqz $t1, outputChars 	# check for the null character and if found goes to outputChars

beq $t1, 99, lowerC	#check for lower and upper case C
beq $t1, 67, upperC	#then jumps to label 

beq $t1, 104, lowerH	#checks for both cases of H
beq $t1, 72, upperH	#then jumps to label

beq $t1, 97, lowerA	#checks for both cases of A
beq $t1, 65, upperA	#then jumps to label

beq $t1, 114, lowerR	#checks for both cases of R
beq $t1, 82, upperR	#then jumps to label

beq $t1, 103, lowerG	#checks for both cases of G
beq $t1, 71, upperG	#then jumps to label

beq $t1, 101, lowerE	#checks for both cases of E
beq $t1, 69, upperE	#then jumps to label

beq $t1, 111, lowerO	#checks for both cases of H
beq $t1, 79, upperO	#then jumps to label

beq $t1, 110, lowerN	#checks for both cases of H
beq $t1, 78, upperN	#then jumps to label

loopIncrement:		# adds one to counter nested in main loop and jumpable from the cases below
addi $t0, $t0, 1	# add one to address of string in register $s1
j loop			# loop until breakout


lowerC:
	addi $t2, $t2, 1	#label lowerC and upperC increment shared counter by 1
	j loopIncrement		#and jump to loopIncrement label
upperC:
	addi $t2, $t2, 1
	j loopIncrement

lowerH:
	addi $t3, $t3, 1	#label lowerH and upperH increment shared counter by 1
	j loopIncrement		#and jump to loopIncrement label
upperH:
	addi $t3, $t3, 1
	j loopIncrement

lowerA:
	addi $t4, $t4, 1	#label lowerH and upperA increment shared counter by 1
	j loopIncrement		#and jump to loopIncrement label
upperA:
	addi $t4, $t4, 1
	j loopIncrement

lowerR:
	addi $t5, $t5, 1	#label lowerR and upperR increment shared counter by 1
	j loopIncrement		#and jump to loopIncrement label
upperR:
	addi $t5, $t5, 1
	j loopIncrement

lowerG:
	addi $t6, $t6, 1	#label lowerG and upperG increment shared counter by 1
	j loopIncrement		#and jump to loopIncrement label
upperG:
	addi $t6, $t6, 1
	j loopIncrement

lowerE:
	addi $t7, $t7, 1	#label lowerE and upperE increment shared counter by 1
	j loopIncrement		#and jump to loopIncrement label
upperE:
	addi $t7, $t7, 1
	j loopIncrement

lowerO:
	addi $t8, $t8, 1	#label lowerO and upperO increment shared counter by 1
	j loopIncrement		#and jump to loopIncrement label
upperO:
	addi $t8, $t8, 1
	j loopIncrement

lowerN:
	addi $t9, $t9, 1	#label lowerO and upperO increment shared counter by 1
	j loopIncrement		#and jump to loopIncrement label
upperN:
	addi $t9, $t9, 1
	j loopIncrement

outputChars:

	li $v0, 4			#loads service code 4 to print string in $v0
	la $a0, char_c			#loads string to print "C: "
	syscall 			#Operating system call

	add $a0, $t2, $zero		#pseudocode to move contents of t2 to a0
	li $v0, 1			#print integer system code
	syscall				#Operating system call

	li $v0, 4			#loads service code 4 to print string in $v0
	la $a0, char_h			#loads string to print "H: "
	syscall 			#Operating system call

	add $a0, $t3, $zero		#pseudocode to move contents of t3 to a0
	li $v0, 1			#print integer system code
	syscall				#Operating system call
	
	li $v0, 4			#loads service code 4 to print string in $v0
	la $a0, char_a			#loads string to print "A: "
	syscall 			#Operating system call

	add $a0, $t4, $zero		#pseudocode to move contents of t4 to a0
	li $v0, 1			#print integer system code
	syscall				#Operating system call
	
	li $v0, 4			#loads service code 4 to print string in $v0
	la $a0, char_r			#loads string to print "R: "
	syscall 			#Operating system call

	add $a0, $t5, $zero		#pseudocode to move contents of t5 to a0
	li $v0, 1			#print integer system code
	syscall				#Operating system call
	
	li $v0, 4			#loads service code 4 to print string in $v0
	la $a0, char_g			#loads string to print "G: "
	syscall 			#Operating system call

	add $a0, $t6, $zero		#pseudocode to move contents of t6 to a0
	li $v0, 1			#print integer system code
	syscall				#Operating system call

	li $v0, 4			#loads service code 4 to print string in $v0
	la $a0, char_e			#loads string to print "E: "
	syscall 			#Operating system call

	add $a0, $t7, $zero		#pseudocode to move contents of t7 to a0
	li $v0, 1			#print integer system code
	syscall				#Operating system call
	
	li $v0, 4			#loads service code 4 to print string in $v0
	la $a0, char_o			#loads string to print "O: "
	syscall 			#Operating system call

	add $a0, $t8, $zero		#pseudocode to move contents of t8 to a0
	li $v0, 1			#print integer system code
	syscall				#Operating system call
	
	li $v0, 4			#loads service code 4 to print string in $v0
	la $a0, char_n			#loads string to print "N: "
	syscall 			#Operating system call

	add $a0, $t9, $zero		#pseudocode to move contents of t9 to a0
	li $v0, 1			#print integer system code
	syscall				#Operating system call


exit:
	li $v0, 10			#loads exit service code into $v0
	syscall				#operating system call to exit program
