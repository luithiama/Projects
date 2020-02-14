.ORIG x2000

ST R7 RETURN ;; this is remembering where you are in the maze. R7 will be ovewritten, so this is us making that place in the maze persist

SUBBEG LD R2 CHECK ;; initialize to the 'middle' value(which is right) so it returns positive, negative, or zero, depending on input

TRAP x20

ADD R1 R2 R0 ;;checking for a 'd' with a -100
BRz SUBRETURN
ADD R2 R2 #3 ;; -97, or check for 'a'
ADD R1 R2 R0 ;;checking for a 'a' with a -97
BRz SUBRETURN
ADD R2 R2 #-15 ;; -112
ADD R2 R2 #-7 ;; -119, or check for 'w'
ADD R1 R2 R0 ;; checking for 'w'
BRz SUBCOND
BRnzp SUBBEG

SUBCOND ADD R1 R6 #-1 ;; Checking to see if there is a wall

BRz SUBMESS
ADD R1 R6 #-2 ;; checking for end of maze
BRz SUBBEND
BRnzp SUBRETURN

SUBMESS LEA R0 WALLMESS ;; Sends to the wall message
PUTS 
AND R0 R0 #0
ADD R0 R0 #10
TRAP x21
BRnzp SUBBEG

SUBRETURN LD R2 CHECK  ;; reset to the 'middle' value, d)
LD R7 RETURN
ADD R3 R3 #1
ADD R0 R2 R0
RET


SUBBEND LD R7 ENDING
ADD R3 R3 #1
RET



RETURN .BLKW x1
CHECK .FILL #-100
WALLMESS .STRINGZ "You can't walk through walls. Turn left or right, or keep going straight to bang your head on the wall."

ENDING .FILL x4000
.END