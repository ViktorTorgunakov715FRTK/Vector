.PHONY: all clean install uninstall
all: test
clean:
	rm -rf test *.o
test1.o: test1.cpp
	g++ -c -Weffc++ -o test1.o test1.cpp
vector.o: vector.cpp
	g++ -c -Weffc++ -o vector.o vector.cpp
test: test1.o vector.o
	g++ vector.o test1.o -o test
install: 
	install ./test/usr/local/bin
uninstall:
	rm -rf /usr/local/bin/test