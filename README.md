
# UCR CS100 RShell Assignment (Fall 2018)

## Programmed by:

Jeff Trang (SID: 861261717)

Mitchell Doan (SID: 862022288)

## Summary

We will be designing and implementing a rshell program which acts as a basic command line. The rshell command line will take input from the user and output executables based on what the user has input, such as listing all files within a directory or outputting a message on the command line. Our program will split the user's input string into two separate vectors, one for the commands (ls -a) and one for the connectors ('&', '|', ';', '(', or ')'). These vectors will then be used to create the Base* object which will either be composed of its derived Command* or Connector* objects. The Command* object will call execvp() with its properly stored parsed string and execute the function. The Connector* object will take its two stored Base* objects that may be recursively stored if there are parenthesis in the command line and will call executes of the Command class. We will also introduce a new TestCmd* object that checks if the passed in string is a path to a directory or file and returns true or false depending on if it is found. This will be done using the stat() function call along with its S_ISDIR and S_ISREG macros.

## Makefile

1. git submodule init
2. git submodule update
3. cmake3 .
4. make
5. ./test or ./rshell

## Bugs

- Does not function properly when single ';' is output followed by nothing
- Previous iteration of command line repeats if nothing is input to command line
