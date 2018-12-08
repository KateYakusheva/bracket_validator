all: brackets

brackets: main stack validator
	g++ -std=c++11 main.o Stack.o Validator.o -o brackets

main: main.cpp
	g++ -std=c++11 -c main.cpp

stack: Stack.h Stack.cpp
	g++ -std=c++11 -c Stack.cpp

validator: Validator.h Validator.cpp
	g++ -std=c++11 -c Validator.cpp

clean:
	rm -rf *.o *.gch brackets

test:
	./brackets input.txt
