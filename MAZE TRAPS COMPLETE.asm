		.ORIG x0510
;;TRAP x30
	;;save all the register information
		ST R0 save0R0
		ST R1 save0R1
		ST R2 save0R2
		ST R3 save0R3
		ST R4 save0R4
		ST R5 save0R5
		ST R7 save0R7
		
;;WHW picture
	;;create space before the picture
		AND R0 R0 x0
		ADD R0 R0 x0A
		ADD R1 R0 x-3
space0	TRAP x21
		ADD R1 R1 x-1
		BRnp space0

	;;create the picture
		AND R1 R1 x0		;WHW
		ADD R1 R1 x-5		;+++++		+++++
start0	AND R0 R0 x0		;+++++		+++++
		ADD R0 R0 x0A		;+++++		+++++
		TRAP x21			;+++++		+++++
		LEA R0 WHW			;+++++		+++++
		PUTS
		ADD R1 R1 x1
		BRnp start0
	
	;;create space after the picture
		AND R0 R0 x0
		ADD R0 R0 x0A
		ADD R1 R0 x-3
AftrSP0	TRAP x21
		ADD R1 R1 x-1
		BRnp AftrSP0

	;;set R6 to 0 to indicate no wall ahead
		AND R6 R6 x0
		
	;;restore all of the registers
		LD R0 save0R0
		LD R1 save0R1
		LD R2 save0R2
		LD R3 save0R3
		LD R4 save0R4
		LD R5 save0R5
		LD R7 save0R7
		
	;;return from the TRAP
		RET
		
	;;clear memory locations for storing registers
save0R0	.BLKW x1
save0R1	.BLKW x1
save0R2	.BLKW x1
save0R3	.BLKW x1
save0R4	.BLKW x1
save0R5	.BLKW x1
save0R7	.BLKW x1
WHW		.STRINGZ "					+++++		+++++"


;;TRAP x31
	;;save all the register information
		ST R0 save1R0
		ST R1 save1R1
		ST R2 save1R2
		ST R3 save1R3
		ST R4 save1R4
		ST R5 save1R5
		ST R7 save1R7

;;WHrH picture
	;;create space before the picture
		AND R0 R0 x0
		ADD R0 R0 x0A
		ADD R1 R0 x-3
space1	TRAP x21
		ADD R1 R1 x-1
		BRnp space1

	;;create the picture
		AND R1 R1 x0		;WHrH
		ADD R1 R1 x-5		;+++++		+
start1	AND R0 R0 x0		;+++++		+
		ADD R0 R0 x0A		;+++++		+
		TRAP x21			;+++++		+
		LEA R0 WHrH			;+++++		+
		PUTS
		ADD R1 R1 x1
		BRnp start1
		
	;;create space after the picture
		AND R0 R0 x0
		ADD R0 R0 x0A
		ADD R1 R0 x-3
AftrSP1	TRAP x21
		ADD R1 R1 x-1
		BRnp AftrSP1

	;;set R6 to 0 to indicate no wall ahead
		AND R6 R6 x0
		
	;;restore all of the registers
		LD R0 save1R0
		LD R1 save1R1
		LD R2 save1R2
		LD R3 save1R3
		LD R4 save1R4
		LD R5 save1R5
		LD R7 save1R7
		
	;;return from the TRAP
		RET
		
	;;clear memory locations for storing registers
save1R0	.BLKW x1
save1R1	.BLKW x1
save1R2	.BLKW x1
save1R3	.BLKW x1
save1R4	.BLKW x1
save1R5	.BLKW x1
save1R7	.BLKW x1
WHrH	.STRINGZ "					+++++		+"


;;TRAP x32
	;;save all the register information
		ST R0 save2R0
		ST R1 save2R1
		ST R2 save2R2
		ST R3 save2R3
		ST R4 save2R4
		ST R5 save2R5
		ST R7 save2R7

;;lHHW picture
	;;create space before the picture
		AND R0 R0 x0
		ADD R0 R0 x0A
		ADD R1 R0 x-3
space2	TRAP x21
		ADD R1 R1 x-1
		BRnp space2

	;;create the picture
		AND R1 R1 x0		;lHHW
		ADD R1 R1 x-5		;+		+++++
start2	AND R0 R0 x0		;+		+++++
		ADD R0 R0 x0A		;+		+++++
		TRAP x21			;+		+++++
		LEA R0 lHHW			;+		+++++
		PUTS
		ADD R1 R1 x1
		BRnp start2

	;;create space after the picture
		AND R0 R0 x0
		ADD R0 R0 x0A
		ADD R1 R0 x-3
AftrSP2	TRAP x21
		ADD R1 R1 x-1
		BRnp AftrSP2

	;;set R6 to 0 to indicate no wall ahead
		AND R6 R6 x0
		
	;;restore all of the registers
		LD R0 save2R0
		LD R1 save2R1
		LD R2 save2R2
		LD R3 save2R3
		LD R4 save2R4
		LD R5 save2R5
		LD R7 save2R7
		
	;;return from the TRAP
		RET
		
	;;clear memory locations for storing registers
save2R0	.BLKW x1
save2R1	.BLKW x1
save2R2	.BLKW x1
save2R3	.BLKW x1
save2R4	.BLKW x1
save2R5	.BLKW x1
save2R7	.BLKW x1		
lHHW	.STRINGZ "					+		+++++"


;;TRAP x33
	;;save all the register information
		ST R0 save3R0
		ST R1 save3R1
		ST R2 save3R2
		ST R3 save3R3
		ST R4 save3R4
		ST R5 save3R5
		ST R7 save3R7

;;lHHrH picture
	;;create space before the picture
		AND R0 R0 x0
		ADD R0 R0 x0A
		ADD R1 R0 x-3
space3	TRAP x21
		ADD R1 R1 x-1
		BRnp space3

	;;create the picture
		AND R1 R1 x0		;lHHrH
		ADD R1 R1 x-5		;+		+
start3	AND R0 R0 x0		;+		+
		ADD R0 R0 x0A		;+		+
		TRAP x21			;+		+
		LEA R0 lHHrH		;+		+
		PUTS
		ADD R1 R1 x1
		BRnp start3

	;;create space after the picture
		AND R0 R0 x0
		ADD R0 R0 x0A
		ADD R1 R0 x-3
AftrSP3	TRAP x21
		ADD R1 R1 x-1
		BRnp AftrSP3

	;;set R6 to 0 to indicate no wall ahead
		AND R6 R6 x0
		
	;;restore all of the registers
		LD R0 save3R0
		LD R1 save3R1
		LD R2 save3R2
		LD R3 save3R3
		LD R4 save3R4
		LD R5 save3R5
		LD R7 save3R7
		
	;;return from the TRAP
		RET
		
	;;clear memory locations for storing registers
save3R0	.BLKW x1
save3R1	.BLKW x1
save3R2	.BLKW x1
save3R3	.BLKW x1
save3R4	.BLKW x1
save3R5	.BLKW x1
save3R7	.BLKW x1
lHHrH	.STRINGZ "					+		+"


;;TRAP x34
	;;save all the register information
		ST R0 save4R0
		ST R1 save4R1
		ST R2 save4R2
		ST R3 save4R3
		ST R4 save4R4
		ST R5 save4R5
		ST R7 save4R7

;;lHWrH picture
	;;create space before the picture
		AND R0 R0 x0
		ADD R0 R0 x0A
		ADD R1 R0 x-3
space4	TRAP x21
		ADD R1 R1 x-1
		BRnp space4

	;;create the picture
		AND R1 R1 x0		;lHWrH
		ADD R1 R1 x-5		;+   +++++   +
start4	AND R0 R0 x0		;+   +++++   +
		ADD R0 R0 x0A		;+   +++++   +
		TRAP x21			;+   +++++   +
		LEA R0 lHWrH		;+   +++++   +
		PUTS
		ADD R1 R1 x1
		BRnp start4

	;;create space after the picture
		AND R0 R0 x0
		ADD R0 R0 x0A
		ADD R1 R0 x-3
AftrSP4	TRAP x21
		ADD R1 R1 x-1
		BRnp AftrSP4

	;;set R6 to 1 to indicate a wall ahead
		AND R6 R6 x0
		ADD R6 R6 x1
		
	;;restore all of the registers
		LD R0 save4R0
		LD R1 save4R1
		LD R2 save4R2
		LD R3 save4R3
		LD R4 save4R4
		LD R5 save4R5
		LD R7 save4R7
		
	;;return from the TRAP
		RET
		
	;;clear memory locations for storing registers
save4R0	.BLKW x1
save4R1	.BLKW x1
save4R2	.BLKW x1
save4R3	.BLKW x1
save4R4	.BLKW x1
save4R5	.BLKW x1
save4R7	.BLKW x1
lHWrH	.STRINGZ "					+   +++++   +"


;;TRAP x35
	;;save all the register information
		ST R0 save5R0
		ST R1 save5R1
		ST R2 save5R2
		ST R3 save5R3
		ST R4 save5R4
		ST R5 save5R5
		ST R7 save5R7

;;WWW picture
	;;create space before the picture
		AND R0 R0 x0
		ADD R0 R0 x0A
		ADD R1 R0 x-3
space5		TRAP x21
		ADD R1 R1 x-1
		BRnp space5

	;;create the picture
		AND R1 R1 x0		;WWW
		ADD R1 R1 x-5		;+++++  +++++  +++++
start5	AND R0 R0 x0		;+++++  +++++  +++++
		ADD R0 R0 x0A		;+++++  +++++  +++++
		TRAP x21			;+++++  +++++  +++++
		LEA R0 WWW			;+++++  +++++  +++++
		PUTS
		ADD R1 R1 x1
		BRnp start5

	;;create space after the picutre
		AND R0 R0 x0
		ADD R0 R0 x0A
		ADD R1 R0 x-3
AftrSP5	TRAP x21
		ADD R1 R1 x-1
		BRnp AftrSP5

	;;set R6 to 1 to indicate a wall ahead
		AND R6 R6 x0
		ADD R6 R6 x1
		
	;;restore all of the registers
		LD R0 save5R0
		LD R1 save5R1
		LD R2 save5R2
		LD R3 save5R3
		LD R4 save5R4
		LD R5 save5R5
		LD R7 save5R7
		
	;;return from the TRAP
		RET
		
	;;clear memory locations for storing registers
save5R0	.BLKW x1
save5R1	.BLKW x1
save5R2	.BLKW x1
save5R3	.BLKW x1
save5R4	.BLKW x1
save5R5	.BLKW x1
save5R7	.BLKW x1
WWW		.STRINGZ "					+++++  +++++  +++++"


;;TRAP x36
	;;save all the register information
		ST R0 save6R0
		ST R1 save6R1
		ST R2 save6R2
		ST R3 save6R3
		ST R4 save6R4
		ST R5 save6R5
		ST R7 save6R7

;;lHWW picutre
	;;create space before the picture
		AND R0 R0 x0
		ADD R0 R0 x0A
		ADD R1 R0 x-3
space6	TRAP x21
		ADD R1 R1 x-1
		BRnp space6

	;;create the picture
		AND R1 R1 x0		;lHWW
		ADD R1 R1 x-5		;+	+++++  +++++
start6	AND R0 R0 x0		;+	+++++  +++++
		ADD R0 R0 x0A		;+	+++++  +++++
		TRAP x21			;+	+++++  +++++
		LEA R0 lHWW			;+	+++++  +++++
		PUTS
		ADD R1 R1 x1
		BRnp start6

	;;create space after the picture
		AND R0 R0 x0
		ADD R0 R0 x0A
		ADD R1 R0 x-3
AftrSP6	TRAP x21
		ADD R1 R1 x-1
		BRnp AftrSP6

	;;set R6 to 1 to indicate a wall ahead
		AND R6 R6 x0
		ADD R6 R6 x1
		
	;;restore all of the registers
		LD R0 save6R0
		LD R1 save6R1
		LD R2 save6R2
		LD R3 save6R3
		LD R4 save6R4
		LD R5 save6R5
		LD R7 save6R7
		
	;;return from the TRAP
		RET
		
	;;clear memory locations for storing registers
save6R0	.BLKW x1
save6R1	.BLKW x1
save6R2	.BLKW x1
save6R3	.BLKW x1
save6R4	.BLKW x1
save6R5	.BLKW x1
save6R7	.BLKW x1
lHWW	.STRINGZ "					+	+++++  +++++"


;;TRAP x37
	;;save all the register information
		ST R0 save7R0
		ST R1 save7R1
		ST R2 save7R2
		ST R3 save7R3
		ST R4 save7R4
		ST R5 save7R5
		ST R7 save7R7

;;WWrH picture
	;;create space before the picture
		AND R0 R0 x0
		ADD R0 R0 x0A		;set R0 to new line character
		ADD R1 R0 x-3
space7	TRAP x21
		ADD R1 R1 x-1
		BRnp space7

	;; create the picture
		AND R1 R1 x0		;WWrH
		ADD R1 R1 x-5		;+++++  +++++     +
start7	AND R0 R0 x0		;+++++  +++++	  +
		ADD R0 R0 x0A		;+++++  +++++	  +
		TRAP x21			;+++++  +++++	  +
		LEA R0 WWrH			;+++++  +++++	  +
		PUTS
		ADD R1 R1 x1
		BRnp start7

	;;create space before the picture
		AND R0 R0 x0
		ADD R0 R0 x0A
		ADD R1 R0 x-3
AftrSP7	TRAP x21
		ADD R1 R1 x-1
		BRnp AftrSP7

	;;set R6 to 0 to indicate no wall ahead
		AND R6 R6 x0
		ADD R6 R6 x1
		
	;;restore all of the registers
		LD R0 save7R0
		LD R1 save7R1
		LD R2 save7R2
		LD R3 save7R3
		LD R4 save7R4
		LD R5 save7R5
		LD R7 save7R7
		
	;;return from the TRAP
		RET
		
	;;clear memory locations for storing registers
save7R0	.BLKW x1
save7R1	.BLKW x1
save7R2	.BLKW x1
save7R3	.BLKW x1
save7R4	.BLKW x1
save7R5	.BLKW x1
save7R7	.BLKW x1
WWrH	.STRINGZ "					+++++  +++++     +"


;;TRAP x38
	;;save all the register information
		ST R7 save8R7
		ST R0 save8R0
		ST R1 save8R1
		ST R2 save8R2
		ST R3 save8R3
		ST R4 save8R4
		ST R5 save8R5

;;the end picture
	;;create space before the picture
		AND R0 R0 x0
		ADD R0 R0 x0A
		ADD R1 R0 x-4
space8	TRAP x21
		ADD R1 R1 x-1
		BRnp space8

	;;create the picture
		AND R1 R1 x0		;theend
		ADD R1 R1 x-4		;++++l     l++++
theend1	LEA R0 end1			;++++l-----l++++
		PUTS				;++++l     l++++
		ADD R1 R1 x1		;++++l-----l++++
		BRz theend2			;++++l     l++++
		AND R0 R0 x0		;++++l-----l++++
		ADD R0 R0 x0A		;++++l     l++++
		TRAP x21								
		LEA R0 end2		
		PUTS
		AND R0 R0 x0
		ADD R0 R0 x0A
		TRAP x21
		BRnzp theend1
		
theend2 LEA R0 end3
		PUTS

	;create space after the picture
		AND R0 R0 x0
		ADD R0 R0 x0A
		ADD R1 R0 x-5
AftrSP8	TRAP x21
		ADD R1 R1 x-1
		BRnp AftrSP8

	;;set R6 to 2 to indicate the exit is ahead
		AND R6 R6 x0
		ADD R6 R6 x2
		
	;;restore all of the registers
		LD R0 save8R0
		LD R1 save8R1
		LD R2 save8R2
		LD R3 save8R3
		LD R4 save8R4
		LD R5 save8R5
		LD R7 save8R7
		
	;;return from the TRAP
		RET
		
	;;clear memory locations for storing registers
save8R0	.BLKW x1
save8R1	.BLKW x1
save8R2	.BLKW x1
save8R3	.BLKW x1
save8R4	.BLKW x1
save8R5	.BLKW x1
save8R7	.BLKW x1
end1	.STRINGZ "					++++l     l++++"
end2	.STRINGZ "					++++l-----l++++"
end3	.STRINGZ "     THE EXIT"
	
.END