		.ORIG x3000
	
;;start of the program
	;;clear the registers
		AND R0 R0 x0
		AND R1 R1 x0
		AND R2 R2 x0
		AND R3 R3 x0
		AND R4 R4 x0
		AND R5 R5 x0
		AND R6 R6 x0
		AND R7 R7 x0
		
	;;setup the registers
		LD R5 	Steves	;where the subroutine for input is located
		LD R4 	MAX		;prevents the starting place from being after the end of the maze; equal -2000
		LD R2	Matt	;where the maze starts
		ADD R1 R1 x-0A	;used to determine when "enter" is pressed
	
	;;print greeting
		LEA R0 	INTRO
		PUTS			;prints a message explaining how to play the game
ENTER1	TRAP x20
		TRAP x21
		ADD R3 R3 R0	;used to "randomize" the player's starting position
		ADD R0 R0 R1
		BRnp	ENTER1
		NOT R0 R1
		ADD R0 R0 x1
		TRAP x21
		TRAP x21
		LEA R0	EXAMPLE1
		PUTS
		TRAP x37		;an example of a wall-wall-hallway
ENTER2	TRAP x20
		ADD R0 R0 R1
		BRnp	ENTER2
		NOT R0 R1
		ADD R0 R0 x1
		TRAP x21
		TRAP x21
		LD R0 redirect
		PUTS
		TRAP x32		;an example of a hall-hall-wall
ENTER3	TRAP x20
		ADD R0 R0 R1
		BRnp	ENTER3
		NOT R0 R1
		ADD R0 R0 x1
		TRAP x21
		TRAP x21
		
	;;determine a "random" starting place in the maze and "random" exit place
		AND R7 R7 x0
RNDMp	ADD R6 R6 x5
RNDM5	ADD R7 R3 R7	;multiplies the "random" number by 5 to ensure the "random" places are the first line of a block of code
		ADD R6 R6 x-1
		BRnp RNDM5
		ADD R3 R3 -1
		ADD R7 R7 x0
		BRnz	RNDMp	;makes sure the added number starts off positive
		BRp		REDUCE

	;;used to make sure the "random" positions are within the maze
CHECK2000	AND R7 R7 x0
		BRnzp	CHECKok

REDUCE	ADD R7 R7 R4	;makes sure the added number to the start of the maze doesn't go past the end of the maze
		BRp REDUCE
		NOT R7 R7		;this number should be less than the length of the maze
		ADD R7 R7 x1	
		ADD R0 R7 R4	;this will makes sure the final "random" number is not 2000
		BRzp	CHECK2000
CHECKok	ADD R3 R7 x0	;replaces the "random" number in R3 with the new muliple of 5 "random" number
		ADD R7 R7 R2	;adds the "random" number to the starting position of the maze

	;;randomizes the exit's location
		LDI R0	redirect2
		STR R0 R7 x0

	;;places the player in a random place
		LDI R0 redirect3
		ADD R0 R0 R4	;puts -1000 into R0
		ADD R1 R0 R3	;add -1000 to the "random" number
		BRnz	NewNum
NewRand	ADD R3 R1 x0	;replaces R3 with a new number that is 1000 less or greater than the original
		ADD R7 R3 R2	;will be used as the new starting place for the player
		BRnzp	StartsEnd

NewNum	NOT R4 R4
		ADD R4 R4 x1
		ADD R1 R4 R1	;makes the new "random" number 1000 higher than the original number
		BRnzp	NewRand

	;;clear the registers not necessary for later
StartsEnd	AND R0 R0 x0
		AND R1 R1 x0
		AND R2 R2 x0
		AND R3 R3 x0
		AND R4 R4 x0
		AND R6 R6 x0

	;;go to the random starting place in the maze
		RET		

redirect	.FILL EXAMPLE2
redirect2	.FILL RandExit
redirect3	.Fill RandStart		
Steves		.FILL x2000
Matt		.FILL x3200
MAX			.FILL xF830		;equals decimal -2000, which is the length of the code for the maze
INTRO		.STRINGZ "Traverse the maze. Find the ladder to exit, (which may drop behind you in a hall). Use lowercase A and D to turn. Use W to move forward. Type your name and press enter to continue: "
EXAMPLE1	.STRINGZ "This is a wall, with a wall to the left and a hallway to the right. Press enter to continue."
EXAMPLE2	.STRINGZ "This is a hallway, with a hallway to the left and a wall to the right. Press enter to contine."
RandExit	.FILL xF038		;TRAP for the exit
RandStart	.FILL x03E8

		.END