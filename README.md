# AssemblyMaze

## LOADING FILES

To play the maze, a user must load: Maze Maze.asm, Maze Traps.asm, MAZE TRAPS COMPLETE.asm, MazeKeyInput.asm, MAZE End.asm, and MAZE Start.asm.
MAZE Start.asm must be the last file loaded, or the PC counter can initially be set to x3000 after loading all the files.

## OPERATION OF THE MAZE

Operation is explained in the text that is produced upon running the program.
“a”, “w”, “d” are used for movement, no other keys will be accepted for user input once the maze has started.
I recommend opening Maze Basic.jpg and using it while playing the maze. While navigating the maze, it will help you to determine your position. If you require a bigger challenge, don't use the map.
The exit will be only be seen if staring at it. Being in the correct square isn't enough, you must be facing the correct direction as well.
The images produced are as if you are staring forward and are able to see what is to your left and to your right. The images are very rudimentary and require a bit of imagination.

## ADDITIONS WE LEFT OUT

We considered adding a random key somewhere in the maze that was required before exiting the maze. We would've used a memory location to store a flag of if the key was found or not, and when the player tried to exit, the code would check that memory location for the proper flag.
If we had more time, we would've created more interesting images for the walls, and we would've created more variations in their appearances. This could've been accomplished with some more TRAP codes for the variations and tweaks to the ASCII art used to produce more interesting images.
We wanted to print the step count to inform the user of how many steps (accepted inputs) it took them to reach the end. We ran out of time to accurately convert this hexadecimal number into decimal for display. We did come up with a way of displaying the hexadecimal value but decided against including this, as most people don't understand the value intuitively.

## OTHER INFORMATION

The PowerPoint presentation should contain most of the rest of the required information for how to operate the maze, as well as problems we encountered.
The .asm files also contain comments for how the code works that was cut out of the PowerPoint presentation for simplification's sake.
The PowerPoint was originally built in Google Sheets and then downloaded as a .pptx. It may contain a few formatting abnormalities because of this.
The virtual lc3 environments were not with the labels in MAZE Start.asm, so the labels were removed from the .FILL and replaced with the actual locations in memory that they were supposed to be filled with.
