
// push argument 1
@1
D=A
@ARG
A=M
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@0
D=A
@THAT
A=M
D=D+A
@THAT
M=D
@SP
AM=M-1
D=M
@THAT
A=M
M=D
@0
D=A
@THAT
A=M
D=A-D
@THAT
M=D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop that 1
@1
D=A
@THAT
A=M
D=D+A
@THAT
M=D
@SP
AM=M-1
D=M
@THAT
A=M
M=D
@1
D=A
@THAT
A=M
D=A-D
@THAT
M=D

// push argument 0
@0
D=A
@ARG
A=M
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

 // sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop argument 0
@0
D=A
@ARG
A=M
D=D+A
@ARG
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@0
D=A
@ARG
A=M
D=A-D
@ARG
M=D

 // MAIN_LOOP_START
($MAIN_LOOP_START)

// push argument 0
@0
D=A
@ARG
A=M
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1

 // if-goto COMPUTE_ELEMENT
@SP
AM=M-1
D=M
@$COMPUTE_ELEMENT
D;JNE

 // goto END_PROGRAM
@$END_PROGRAM
0;JMP

 // COMPUTE_ELEMENT
($COMPUTE_ELEMENT)

// push that 0
@0
D=A
@THAT
A=M
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1

// push that 1
@1
D=A
@THAT
A=M
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1

 // add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop that 2
@2
D=A
@THAT
A=M
D=D+A
@THAT
M=D
@SP
AM=M-1
D=M
@THAT
A=M
M=D
@2
D=A
@THAT
A=M
D=A-D
@THAT
M=D

// push pointer 1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

 // add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D

// push argument 0
@0
D=A
@ARG
A=M
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

 // sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop argument 0
@0
D=A
@ARG
A=M
D=D+A
@ARG
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@0
D=A
@ARG
A=M
D=A-D
@ARG
M=D

 // goto MAIN_LOOP_START
@$MAIN_LOOP_START
0;JMP

 // END_PROGRAM
($END_PROGRAM)
