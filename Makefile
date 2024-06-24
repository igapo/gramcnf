
# gramcnf for Linux

all:
	gcc -c main.c     -o main.o
	gcc -c globals.c  -o globals.o
	gcc -c compiler.c -o compiler.o
	gcc -c lexer.c    -o lexer.o
	gcc -c parser.c   -o parser.o
	gcc -c tree.c     -o tree.o
# Link
	gcc -Wall -o gramcnf main.o globals.o compiler.o lexer.o parser.o tree.o 

clean:
	rm *.o  
	-rm ./gramcnf  
	-rm output.asm 


