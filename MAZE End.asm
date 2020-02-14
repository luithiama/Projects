	.ORIG x4000
	
	LEA R0 OUTRO1
	PUTS
	AND R0 R0 x0
	ADD R0 R0 x0A
	TRAP x21
	TRAP x21
	LEA R0 OUTRO2
	PUTS
	AND R0 R0 x0
	ADD R0 R0 x0A
	TRAP x21
	TRAP x21
	
	HALT
	
OUTRO1	.STRINGZ "Congratulations on successfully making it out of the maze!" 
OUTRO2	.STRINGZ "Restart and enter a new name for a new playthrough."

	.END