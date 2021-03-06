import os, sys


class Parser:
  def __init__(self, source):
    self.infile = open(source)
    self.command = [""]
    self.advanceReachedEOF = False

    self.cType = {
        "sub" : "arithmetic",
        "add" : "arithmetic",
        "neg" : "arithmetic",
        "eq"  : "arithmetic",
        "gt"  : "arithmetich",
        "lt"  : "arithmetic",
        "and" : "arithmetic",
        "or"  : "arithmetic",
        "not" : "arithmetic",
        "push" : "push",
        "pop"  : "pop",
        "EOF"  : "EOF",
        }

  def hasMoreCommands(self):
    position = self.infile.tell()
    self.advance()
    self.infile.seek(position)
    return not self.advanceReachedEOF

  def advance(self):
    thisLine = self.infile.readline()
    if thisLine == '':
      self.advanceReachedEOF = True
    else:
      splitLine = thisLine.split("/")[0].strip()
      if splitLine == '':
        self.advance()
      else:
        self.command = splitLine.split()

  def commandType(self):
    return self.cType.get(self.command[0], "invalid cType")

  def arg1(self):
    return self.command[1]

  def arg2(self):
    return self.command[2]
