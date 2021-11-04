// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

//intialise
@R2
M=0;
@i
M=0     //set i = 0
@temp
M=0     //set temp = 0

//looping - condition check
(LOOP)
@i
D = M     //D=i
@R1
D = D - M //i-[R1]
@END
D;JEQ

//looping - add R1
@R0
D = M       //load R0 in D
@temp
M = D + M       //temp = temp + R0

//looping - increment
@i
M = M + 1       //i++
@LOOP
0;JMP

(END)
@temp
D = M       //load temp in D
@R2
M = D       //store temp in R2

(INF)
@INF
0;JMP
