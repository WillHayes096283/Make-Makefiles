##**
##* @file makefile
##* @author William Hayes
##* @date 2022-09-11
##* @brief This makefile assists in compiling the program files
##*
##* This is a make file that compiles main.cpp, Employee.h,
##* Employee.cpp, Supervisor.h, Supervisor.cpp, Officer.h,
##* and Officer.cpp. It also cleans up the program folder
##* of any onject files, back-ups, and the target via
##* make clean.
##*

CC = g++ ##Assigns the variable CC to be the compiler g++ (Compile the c++ program)
CFLAGS = -g -Wall -Wextra ##Assigns the variable CFLAGS to be the -g -Wall -Wextra (Compile with all warnings and errors)
TARGET = employee ##Assgins the variable TARGET to be the executible file employee

all:	$(TARGET) ##Makes the executible file its dependency to call and run all files/targets

$(TARGET):	Employee.o Supervisor.o Officer.o main.o ##Links all .o files/targets and create the binary executible file
	$(CC) $(CFlags) -o $(TARGET) Supervisor.o Employee.o Officer.o main.o

Employee.o:	Employee.cpp Employee.o ##Compiles the Employee.o file from it's source .h and .cpp files
	$(CC) $(CFLAGS) -c Employee.cpp

Supervisor.o: 	Supervisor.cpp Supervisor.h ##Compiles the Supervisor.o file from it's source .h and .cpp files
	$(CC) $(CFLAGS) -c Supervisor.cpp

Officer.o:	Officer.cpp Officer.h ##Compiles the Officer.o file from it's source .h and .cpp files
	$(CC) $(CFLAGS) -c Officer.cpp

main.o: 	main.cpp Employee.h Supervisor.h Officer.h ##Compiles main.o from it's source file
	$(CC) $(CFLAGS) -c main.cpp
##Removes all object files, emacs back ups, and targets from the program folder
clean:
	$(RM) $(TARGET) *.o *~ 
