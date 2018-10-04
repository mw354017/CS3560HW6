
all: main.o game.o othello.o
	g++ main.cc game.cc othello.cc -o game

main.o: main.cc colors.h piece.h
	g++ -c main.cc

game.o: game.cc game.h
	g++ -c game.cc

othello.o: othello.cc othello.h
	g++ -c othello.cc

archive: main.cc game.cc othello.cc
	cd ..
	tar -cf game.tar HW5/

build:

clean:
	rm game main.o game.o othello.o

