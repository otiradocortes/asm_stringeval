# Osvaldo Tirado-Cortes
# 7/8/2020
# histogram to plot the characters C, H, A, R, G, E, O, N in upper and lower case from previous program
# Registers used:
# $t0 - register holding the string argument to be compared loop counter
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
str: .asciiz "fYYpVKxRJRDi5pReqVv3PpPOocjv3 a4eKznoHakEmnKiGOfTOiA3AV m9M VN4RIYU6U6OeR95gW9oFN5GkaEJW3TfjTKxoek53kzj0HQQhg6CL75PETzcPJcDWvF2VwvthOmrH2AIXj6wdVo1CvWOsGmv5y5zRvIdU5k3dmSfzrWo1bZsWcpITyOjOpdr 06iOwRyVL4TbZ8uKIcEvfrkU1yXCVfVYiggdkr8V57w4WJisvAHjEM6K6 osACMBNWYrCZgSqcGQeajqlzg0Dk0ch44ebR2J07yDD1Thmy99yytXdep4qEpxLVaG0DXAkep3OdKv8veAsFMjuh7yZzRotDx0dkNA0AwSXVp4h3NP4kdHzaA toDtffsK25OLSon6tkdTMZZ1ahJoqWgEDpLqyiZ86NidJyyt0apzn7ZwaYA7ILkZw2xBH7e5NvY4EImE1HKgTwuCUZEp7CMmnormaiX8dN1n2wRogPN6rwXrFfdrt3jU7Ez2v6zAmfqFu2h291odz62Smz6tiwATobiS IHFQAYnFwwBLCFCCpqdy qpZfosGx7mBAqcDSNVgxCqosYmvJvay9ANK7BtVghz5WPCW6xXwN3DGoiuWOkHV5INONeyHVQ  X46KKdVgMBn52t8rK8WjI9pHmkfHQzVtqC 4feTf 0uzSLBuLsBlbrRIOMf4u0 PAHeiZnCcvvn56pWQtAhDHwGm5bkUUbvJ8e4bkw0yW4hYXfpVqZxGyXc6cElZ4cLZyKnji82GM2MTYjkBqeXIXy0G6wfovFVWDu12wCbIGZ155LNh3zINle2vhqJRnXhtXo92M2ouH9wdCykhtM3tqbZcHOK1SWInj3LSLwXOWghWLX3ew9Zvy7HOkagEjVIKpTecbh7TLWQ7ZC0oaq2wGj1VfcI3N jsiTrksUL7sm9ZpCKzwftVVljX2lBV7oOv3kmXuplNavHs9JA59hlmmSgxZrdlOuqCUO3Xxv0eYVGWSwz"
char_c: .asciiz "\nC: "
char_h: .asciiz "\nH: "
char_a: .asciiz "\nA: "
char_r: .asciiz "\nR: "
char_g: .asciiz "\nG: "
char_e: .asciiz "\nE: "
char_o: .asciiz "\nO: "
char_n: .asciiz "\nN: "
char_hashtag: .asciiz "#"
newline_string: .asciiz "\n"


.text
la $t0, str		#load address into t1

loop:
lb $t1, 0($t0) 		# load the next character into s1
beqz $t1, outputChars 	# check for the null character and if found goes to outputChars

beq $t1, 99, lowerC	#check for lower and upper case C
beq $t1, 67, lowerC	#then jumps to label 

beq $t1, 104, lowerH	#checks for both cases of H
beq $t1, 72, lowerH	#then jumps to label

beq $t1, 97, lowerA	#checks for both cases of A
beq $t1, 65, lowerA	#then jumps to label

beq $t1, 114, lowerR	#checks for both cases of R
beq $t1, 82, lowerR	#then jumps to label

beq $t1, 103, lowerG	#checks for both cases of G
beq $t1, 71, lowerG	#then jumps to label

beq $t1, 101, lowerE	#checks for both cases of E
beq $t1, 69, lowerE	#then jumps to label

beq $t1, 111, lowerO	#checks for both cases of H
beq $t1, 79, lowerO	#then jumps to label

beq $t1, 110, lowerN	#checks for both cases of H
beq $t1, 78, lowerN	#then jumps to label

addi $t0, $t0, 1	# add one to address of string in register $s1
j loop			# loop until breakout

lowerC:
	addi $t2, $t2, 1	#label lowerC and upperC increment shared counter by 1
	addi $t0, $t0, 1	# add one to address of string in register $s1
	j loop			# loop until breakout

lowerH:
	addi $t3, $t3, 1	#label lowerH and upperH increment shared counter by 1
	addi $t0, $t0, 1	# add one to address of string in register $s1
	j loop			# loop until breakout

lowerA:
	addi $t4, $t4, 1	#label lowerH and upperA increment shared counter by 1
	addi $t0, $t0, 1	# add one to address of string in register $s1
	j loop			# loop until breakout

lowerR:
	addi $t5, $t5, 1	#label lowerR and upperR increment shared counter by 1
	addi $t0, $t0, 1	# add one to address of string in register $s1
	j loop			# loop until breakout

lowerG:
	addi $t6, $t6, 1	#label lowerG and upperG increment shared counter by 1
	addi $t0, $t0, 1	# add one to address of string in register $s1
	j loop			# loop until breakout

lowerE:
	addi $t7, $t7, 1	#label lowerE and upperE increment shared counter by 1
	addi $t0, $t0, 1	# add one to address of string in register $s1
	j loop			# loop until breakout

lowerO:
	addi $t8, $t8, 1	#label lowerO and upperO increment shared counter by 1
	addi $t0, $t0, 1	# add one to address of string in register $s1
	j loop			# loop until breakout

lowerN:
	addi $t9, $t9, 1	#label lowerO and upperO increment shared counter by 1
	addi $t0, $t0, 1	# add one to address of string in register $s1
	j loop			# loop until breakout
	
	
outputChars:

	li $v0, 4			#loads service code 4 to print string in $v0
	la $a0, char_c			#loads string to print "C: "
	syscall 			#Operating system call

	addi $a0, $t2, 0		#pseudocode to move contents of t2 to a0
	li $v0, 1			#print integer system code
	syscall				#Operating system call

	li $v0, 4			#loads service code 4 to print string in $v0
	la $a0, char_h			#loads string to print "H: "
	syscall 			#Operating system call

	addi $a0, $t3, 0		#pseudocode to move contents of t3 to a0
	li $v0, 1			#print integer system code
	syscall				#Operating system call
	
	li $v0, 4			#loads service code 4 to print string in $v0
	la $a0, char_a			#loads string to print "A: "
	syscall 			#Operating system call

	addi $a0, $t4, 0		#pseudocode to move contents of t4 to a0
	li $v0, 1			#print integer system code
	syscall				#Operating system call
	
	li $v0, 4			#loads service code 4 to print string in $v0
	la $a0, char_r			#loads string to print "R: "
	syscall 			#Operating system call

	addi $a0, $t5, 0		#pseudocode to move contents of t5 to a0
	li $v0, 1			#print integer system code
	syscall				#Operating system call
	
	li $v0, 4			#loads service code 4 to print string in $v0
	la $a0, char_g			#loads string to print "G: "
	syscall 			#Operating system call

	addi $a0, $t6, 0		#pseudocode to move contents of t6 to a0
	li $v0, 1			#print integer system code
	syscall				#Operating system call

	li $v0, 4			#loads service code 4 to print string in $v0
	la $a0, char_e			#loads string to print "E: "
	syscall 			#Operating system call

	addi $a0, $t7, 0		#pseudocode to move contents of t7 to a0
	li $v0, 1			#print integer system code
	syscall				#Operating system call
	
	li $v0, 4			#loads service code 4 to print string in $v0
	la $a0, char_o			#loads string to print "O: "
	syscall 			#Operating system call

	addi $a0, $t8, 0		#pseudocode to move contents of t8 to a0
	li $v0, 1			#print integer system code
	syscall				#Operating system call
	
	li $v0, 4			#loads service code 4 to print string in $v0
	la $a0, char_n			#loads string to print "N: "
	syscall 			#Operating system call

	addi $a0, $t9, 0		#pseudocode to move contents of t9 to a0
	li $v0, 1			#print integer system code
	syscall				#Operating system call
	
	li $v0, 4			#loads service code 4 to print string in $v0
	la $a0, newline_string		#loads string to print newline under output
	syscall 			#Operating system call

#
#
#	
#
#beginning of histogram section
#
#
#
#
	
	li $v0, 4			#loads service code 4 to print string in $v0
	la $a0, char_c			#loads string to print "C: "
	syscall 			#Operating system call
	li $t0, 0			#Reset Loop variable counter to 0

histo_loopc:
	bge $t0, $t2, histo_h		#exit condition for code to continue past loop to next character
	li $v0, 4			#loads service code 4 to print string in $v0
	la $a0, char_hashtag		#loads string to print "#"
	syscall 			#Operating system call
	addi $t0, $t0, 1		#adds one to loop counter
	j histo_loopc			#jumps back to beginning of loopc

histo_h:
	li $v0, 4			#loads service code 4 to print string in $v0
	la $a0, char_h			#loads string to print "H: "
	syscall 			#Operating system call
	li $t0, 0			#Reset Loop variable counter to 0

histo_looph:
	bge $t0, $t3, histo_a		#exit condition for code to continue past loop to next character
	li $v0, 4			#loads service code 4 to print string in $v0
	la $a0, char_hashtag		#loads string to print "#"
	syscall 			#Operating system call
	addi $t0, $t0, 1		#adds one to loop counter
	j histo_looph			#jumps back to beginning of loop
	
histo_a:
	li $v0, 4			#loads service code 4 to print string in $v0
	la $a0, char_a			#loads string to print "A: "
	syscall 			#Operating system call
	li $t0, 0			#Reset Loop variable counter to 0

histo_loopa:
	bge $t0, $t4, histo_r		#exit condition for code to continue past loop to next character
	li $v0, 4			#loads service code 4 to print string in $v0
	la $a0, char_hashtag		#loads string to print "#"
	syscall 			#Operating system call
	addi $t0, $t0, 1		#adds one to loop counter
	j histo_loopa			#jumps back to beginning of loop

histo_r:
	li $v0, 4			#loads service code 4 to print string in $v0
	la $a0, char_r			#loads string to print "R: "
	syscall 			#Operating system call
	li $t0, 0			#Reset Loop variable counter to 0

histo_loopr:
	bge $t0, $t5, histo_g		#exit condition for code to continue past loop to next character
	li $v0, 4			#loads service code 4 to print string in $v0
	la $a0, char_hashtag		#loads string to print "#"
	syscall 			#Operating system call
	addi $t0, $t0, 1		#adds one to loop counter
	j histo_loopr			#jumps back to beginning of loop
	
histo_g:
	li $v0, 4			#loads service code 4 to print string in $v0
	la $a0, char_g			#loads string to print "G: "
	syscall 			#Operating system call
	li $t0, 0			#Reset Loop variable counter to 0

histo_loopg:
	bge $t0, $t6, histo_e		#exit condition for code to continue past loop to next character
	li $v0, 4			#loads service code 4 to print string in $v0
	la $a0, char_hashtag		#loads string to print "#"
	syscall 			#Operating system call
	addi $t0, $t0, 1		#adds one to loop counter
	j histo_loopg			#jumps back to beginning of loop
	
histo_e:
	li $v0, 4			#loads service code 4 to print string in $v0
	la $a0, char_e			#loads string to print "E: "
	syscall 			#Operating system call
	li $t0, 0			#Reset Loop variable counter to 0

histo_loope:
	bge $t0, $t7, histo_o		#exit condition for code to continue past loop to next character
	li $v0, 4			#loads service code 4 to print string in $v0
	la $a0, char_hashtag		#loads string to print "#"
	syscall 			#Operating system call
	addi $t0, $t0, 1		#adds one to loop counter
	j histo_loope			#jumps back to beginning of loop
	
histo_o:
	li $v0, 4			#loads service code 4 to print string in $v0
	la $a0, char_o			#loads string to print "O: "
	syscall 			#Operating system call
	li $t0, 0			#Reset Loop variable counter to 0

histo_loopo:
	bge $t0, $t8, histo_n		#exit condition for code to continue past loop to next character
	li $v0, 4			#loads service code 4 to print string in $v0
	la $a0, char_hashtag		#loads string to print "#"
	syscall 			#Operating system call
	addi $t0, $t0, 1		#adds one to loop counter
	j histo_loopo			#jumps back to beginning of loop
	
histo_n:
	li $v0, 4			#loads service code 4 to print string in $v0
	la $a0, char_n			#loads string to print "N: "
	syscall 			#Operating system call
	li $t0, 0			#Reset Loop variable counter to 0

histo_loopn:
	bge $t0, $t9, exit		#exit condition for code to continue past loop to next character
	li $v0, 4			#loads service code 4 to print string in $v0
	la $a0, char_hashtag		#loads string to print "#"
	syscall 			#Operating system call
	addi $t0, $t0, 1		#adds one to loop counter
	j histo_loopn			#jumps back to beginning of loop
	
exit:
	li $v0, 4			#loads service code 4 to print string in $v0
	la $a0, newline_string		#loads string to print newline under output
	syscall 			#Operating system call
	li $v0, 10			#loads exit service code into $v0
	syscall				#operating system call to exit program
