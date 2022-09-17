## Make & Makefile Toolkit Assignment
Name: William Hayes
Date: 9/17/2022

# Required Files
* makefile - Compiles the program files: main.cpp, Employee.h, Employee.cpp, etc.
* main.cpp - Main program file, uses classes' methods to print out employee, supervisor, and officer data
* Employee.h - Declares the Employee class
* Employee.cpp - Implements the Employee class
* Supervisor.h - Declares the Supervisor class
* Supervisor.cpp - Implements the Supervisor class
* Officer.h - Declares the Officer class
* Officer.cpp - Implements the Officer class

# Compilation Instructions
Compile the program by typing "make" into console. Next, run the program by typing into console "./employee".
The program needs no user input so it'll simply print out the results to console. You can remove the .o and
backup files by typing "make clean" into console.

# Program Usage
This program is mainly, to test the functionality of makefile, to compile multiple files and use targets like
all, employee.o, main.o, etc.. It also tests the clean target for the makefile.

# Notes
* Added in documentation to the make file, though I wasn't sure on how to document the variable assignments
* Called make clean before submission so the folder should be cleared of any .o and backup files
* This program's purpose is to just test the makefile so I didn't bother documenting the other files
* I wasn't sure on the specific functionality of some of the makefile targets so I simply tried adding comments
that described what I think they do to the best of my ability. So, if the comments are too broad or unspecific
that's the reason why.
