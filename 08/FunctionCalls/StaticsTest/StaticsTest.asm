// Bootstrap
@256
D=A
@SP
M=D

// Sys.init 0
@Sys.init$RETURN1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.init
0;JMP
(Sys.init$RETURN1)

// Class1.set 0
(Class1.set)

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

// pop static 0
@Class10
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

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

// pop static 1
@Class11
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

 // return
@LCL
D=M
@R15
M=D
@5
A=D-A
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
M=M+1
D=M
@SP
M=D
@R15
D=M-1
AM=D
D=M
@THAT
M=D
@R15
D=M-1
AM=D
D=M
@THIS
M=D
@R15
D=M-1
AM=D
D=M
@ARG
M=D
@R15
D=M-1
AM=D
D=M
@LCL
M=D
@R14
A=M
0;JMP

// Class1.get 0
(Class1.get)

// push static 0
@Class10
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@Class11
D=M
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

 // return
@LCL
D=M
@R15
M=D
@5
A=D-A
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
M=M+1
D=M
@SP
M=D
@R15
D=M-1
AM=D
D=M
@THAT
M=D
@R15
D=M-1
AM=D
D=M
@THIS
M=D
@R15
D=M-1
AM=D
D=M
@ARG
M=D
@R15
D=M-1
AM=D
D=M
@LCL
M=D
@R14
A=M
0;JMP
// Bootstrap
@256
D=A
@SP
M=D

// Sys.init 0
@Sys.init$RETURN2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.init
0;JMP
(Sys.init$RETURN2)

// Class2.set 0
(Class2.set)

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

// pop static 0
@Class20
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

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

// pop static 1
@Class21
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

 // return
@LCL
D=M
@R15
M=D
@5
A=D-A
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
M=M+1
D=M
@SP
M=D
@R15
D=M-1
AM=D
D=M
@THAT
M=D
@R15
D=M-1
AM=D
D=M
@THIS
M=D
@R15
D=M-1
AM=D
D=M
@ARG
M=D
@R15
D=M-1
AM=D
D=M
@LCL
M=D
@R14
A=M
0;JMP

// Class2.get 0
(Class2.get)

// push static 0
@Class20
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@Class21
D=M
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

 // return
@LCL
D=M
@R15
M=D
@5
A=D-A
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
M=M+1
D=M
@SP
M=D
@R15
D=M-1
AM=D
D=M
@THAT
M=D
@R15
D=M-1
AM=D
D=M
@THIS
M=D
@R15
D=M-1
AM=D
D=M
@ARG
M=D
@R15
D=M-1
AM=D
D=M
@LCL
M=D
@R14
A=M
0;JMP
// Bootstrap
@256
D=A
@SP
M=D

// Sys.init 0
@Sys.init$RETURN3
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.init
0;JMP
(Sys.init$RETURN3)

// Sys.init 0
(Sys.init)

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

// Class1.set 2
@Class1.set$RETURN4
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Class1.set
0;JMP
(Class1.set$RETURN4)

// pop temp 0
@5
D=A
@R5
A=M
D=D+A
@R5
M=D
@SP
AM=M-1
D=M
@R5
A=M
M=D
@5
D=A
@R5
A=M
D=A-D
@R5
M=D

// push constant 23
@23
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// Class2.set 2
@Class2.set$RETURN5
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Class2.set
0;JMP
(Class2.set$RETURN5)

// pop temp 0
@5
D=A
@R5
A=M
D=D+A
@R5
M=D
@SP
AM=M-1
D=M
@R5
A=M
M=D
@5
D=A
@R5
A=M
D=A-D
@R5
M=D

// Class1.get 0
@Class1.get$RETURN6
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Class1.get
0;JMP
(Class1.get$RETURN6)

// Class2.get 0
@Class2.get$RETURN7
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Class2.get
0;JMP
(Class2.get$RETURN7)

 // WHILE
(Class2.get$WHILE)

 // goto WHILE
@Class2.get$WHILE
0;JMP
