##**
##* @file makefile
##* @author William Hayes
##* @date 2022-09-11
##* @brief short
##*
##* long
##*

CC = g++
CFLAGS = -g -Wall -Wextra
TARGET = employee

all:	$(TARGET)

$(TARGET):	Employee.o Supervisor.o Officer.o main.o
	$(CC) $(CFlags) -o $(TARGET) Supervisor.o Employee.o Officer.o main.o

Employee.o:	Employee.cpp Employee.o
	$(CC) $(CFLAGS) -c Employee.cpp

Supervisor.o: 	Supervisor.cpp Supervisor.h
	$(CC) $(CFLAGS) -c Supervisor.cpp

Officer.o:	Officer.cpp Officer.h
	$(CC) $(CFLAGS) -c Officer.cpp

main.o: 	main.cpp Employee.h Supervisor.h Officer.h
	$(CC) $(CFLAGS) -c main.cpp

clean:
	$(RM) $(TARGET) *.o *~
