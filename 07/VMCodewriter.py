class CodeWriter:
  def __init__(self, dest):
    self.root = dest[:-4].split('/')[-1]
    self.outfile = open(dest, "w")
    self.nextLabel = 0

  def setFileName(self, source):
    self.fileName = source[:-3]

  def writeArithmetic(self, command):
    trans = ""
    if command == "add":
      trans += "@SP\n"
      trans += "AM=M-1\n"
      trans += "D=M\n"
      trans += "@SP\n"
      trans += "AM=M-1\n"
      trans += "M=D+M\n"
      trans += "@SP\n"
      trans += "M=M+1\n"
    elif command == "sub":
      trans += "@SP\n"
      trans += "AM=M-1\n"
      trans += "D=M\n"
      trans += "@SP\n"
      trans += "AM=M-1\n"
      trans += "M=M-D\n"
      trans += "@SP\n"
      trans += "M=M+1\n"
    elif command == "neg":
      trans += "@SP\n"
      trans += "A=M-1\n"
      trans += "M=-M\n"
    elif command == "not":
      trans += "@SP\n"
      trans += "A=M-1\n"
      trans += "M=!M\n"
    elif command == "or":
      trans += "@SP\n"
      trans += "AM=M-1\n"
      trans += "D=M\n"
      trans += "@SP\n"
      trans += "A=M-1\n"
      trans += "M=D|M\n"
    elif command == "and":
      trans += "@SP\n"
      trans += "AM=M-1\n"
      trans += "D=M\n"
      trans += "@SP\n"
      trans += "A=M-1\n"
      trans += "M=D&M\n"
    elif command == "eq":
      label = str(self.nextLabel)
      self.nextLabel += 1
      trans += "@SP\n"
      trans += "AM=M-1\n"
      trans += "D=M\n"
      trans += "@SP\n"
      trans += "A=M-1\n"
      trans += "D=M-D\n"
      trans += "M=-1\n"
      trans += "@eqTrue" + label + "\n"
      trans += "D;JEQ\n"
      trans += "@SP\n"
      trans += "A=M-1\n"
      trans += "M=0\n"
      trans += "(eqTrue" + label + ")\n"
    elif command == "gt":
      label = str(self.nextLabel)
      self.nextLabel += 1
      trans += "@SP\n"
      trans += "AM=M-1\n"
      trans += "D=M\n"
      trans += "@SP\n"
      trans += "A=M-1\n"
      trans += "D=M-D\n"
      trans += "M=-1\n"
      trans += "@gtTrue" + label + "\n"
      trans += "D;JGT\n"
      trans += "@SP\n"
      trans += "A=M-1\n"
      trans += "M=0\n"
      trans += "(gtTrue" + label + ")\n"
    elif command == "lt":
      label = str(self.nextLabel)
      self.nextLabel += 1
      trans += "@SP\n"
      trans += "AM=M-1\n"
      trans += "D=M\n"
      trans += "@SP\n"
      trans += "A=M-1\n"
      trans += "D=M-D\n"
      trans += "M=-1\n"
      trans += "@ltTrue" + label + "\n"
      trans += "D;JLT\n"
      trans += "@SP\n"
      trans += "A=M-1\n"
      trans += "M=0\n"
      trans += "(ltTrue" + label + ")\n"
    else:
      trans = command + " not implemented yet\n"
    self.outfile.write("// " + command + "\n" + trans)

  def writePushPop(self, command, segment, index):
    trans = ""
    if command == "push":
      trans += "// push " + segment + " " + index + "\n"
      if segment == "constant":
        trans += "@" + index + "\n"
        trans += "D=A\n"
        trans += "@SP\n"
        trans += "A=M\n"
        trans += "M=D\n"
        trans += "@SP\n"
        trans += "M=M+1\n"
      elif segment == "static":
        trans += "@" + self.root + "." + index + "\n"
        trans += "D=M\n"
        trans += "@SP\n"
        trans += "A=M\n"
        trans += "M=D\n"
        trans += "@SP\n"
        trans += "M=M+1\n"
      elif segment == "this":
        trans += "@" + index + "\n"
        trans += "D=A\n"
        trans += "@THIS\n"
        trans += "A=M+D\n"
        trans += "D=M\n"
        trans += "@SP\n"
        trans += "A=M\n"
        trans += "M=D\n"
        trans += "@SP\n"
        trans += "M=M+1\n"
      elif segment == "that":
        trans += "@" + index + "\n"
        trans += "D=A\n"
        trans += "@THAT\n"
        trans += "A=M+D\n"
        trans += "D=M\n"
        trans += "@SP\n"
        trans += "A=M\n"
        trans += "M=D\n"
        trans += "@SP\n"
        trans += "M=M+1\n"
      elif segment == "argument":
        trans += "@" + index + "\n"
        trans += "D=A\n"
        trans += "@ARG\n"
        trans += "A=M+D\n"
        trans += "D=M\n"
        trans += "@SP\n"
        trans += "A=M\n"
        trans += "M=D\n"
        trans += "@SP\n"
        trans += "M=M+1\n"
      elif segment == "local":
        trans += "@" + index + "\n"
        trans += "D=A\n"
        trans += "@LCL\n"
        trans += "A=M+D\n"
        trans += "D=M\n"
        trans += "@SP\n"
        trans += "A=M\n"
        trans += "M=D\n"
        trans += "@SP\n"
        trans += "M=M+1\n"
      elif segment == "temp":
        trans += "@" + index + "\n"
        trans += "D=A\n"
        trans += "@5\n"
        trans += "A=A+D\n"
        trans += "D=M\n"
        trans += "@SP\n"
        trans += "A=M\n"
        trans += "M=D\n"
        trans += "@SP\n"
        trans += "M=M+1\n"
      elif segment == "pointer":
        trans += "@" + index + "\n"
        trans += "D=A\n"
        trans += "@3\n"
        trans += "A=A+D\n"
        trans += "D=M\n"
        trans += "@SP\n"
        trans += "A=M\n"
        trans += "M=D\n"
        trans += "@SP\n"
        trans += "M=M+1\n"
      else:
        trans += segment + " not implemented yet, can't push\n"
    elif command == "pop":
      trans += "// pop " + segment + " " + index + "\n"
      if segment == "static":
        trans += "@SP\n"
        trans += "AM=M-1\n"
        trans += "D=M\n"
        trans += "@" + self.root + "." + index + "\n"
        trans += "M=D\n"
      elif segment == "this":
        trans += "@" + index + "\n"
        trans += "D=A\n"
        trans += "@THIS\n"
        trans += "D=M+D\n"
        trans += "@R13\n"
        trans += "M=D\n"
        trans += "@SP\n"
        trans += "AM=M-1\n"
        trans += "D=M\n"
        trans += "@R13\n"
        trans += "A=M\n"
        trans += "M=D\n"
      elif segment == "that":
        trans += "@" + index + "\n"
        trans += "D=A\n"
        trans += "@THAT\n"
        trans += "D=M+D\n"
        trans += "@R13\n"
        trans += "M=D\n"
        trans += "@SP\n"
        trans += "AM=M-1\n"
        trans += "D=M\n"
        trans += "@R13\n"
        trans += "A=M\n"
        trans += "M=D\n"
      elif segment == "argument":
        trans += "@" + index + "\n"
        trans += "D=A\n"
        trans += "@ARG\n"
        trans += "D=M+D\n"
        trans += "@R13\n"
        trans += "M=D\n"
        trans += "@SP\n"
        trans += "AM=M-1\n"
        trans += "D=M\n"
        trans += "@R13\n"
        trans += "A=M\n"
        trans += "M=D\n"
      elif segment == "local":
        trans += "@" + index + "\n"
        trans += "D=A\n"
        trans += "@LCL\n"
        trans += "D=M+D\n"
        trans += "@R13\n"
        trans += "M=D\n"
        trans += "@SP\n"
        trans += "AM=M-1\n"
        trans += "D=M\n"
        trans += "@R13\n"
        trans += "A=M\n"
        trans += "M=D\n"
      elif segment == "pointer":
        trans += "@" + index + "\n"
        trans += "D=A\n"
        trans += "@3\n"
        trans += "D=A+D\n"
        trans += "@R13\n"
        trans += "M=D\n"
        trans += "@SP\n"
        trans += "AM=M-1\n"
        trans += "D=M\n"
        trans += "@R13\n"
        trans += "A=M\n"
        trans += "M=D\n"
      elif segment == "temp":
        trans += "@" + index + "\n"
        trans += "D=A\n"
        trans += "@5\n"
        trans += "D=A+D\n"
        trans += "@R13\n"
        trans += "M=D\n"
        trans += "@SP\n"
        trans += "AM=M-1\n"
        trans += "D=M\n"
        trans += "@R13\n"
        trans += "A=M\n"
        trans += "M=D\n"
      else:
        trans += segment + " not implemented yet, can't pop\n"
    self.outfile.write(trans)

  def writeError(self):
    self.outfile.write("Whoopsie, command not recognized\n")
