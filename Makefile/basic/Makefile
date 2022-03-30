all: dance

dance: bin obj obj/dance.o
	clang++ obj/dance.o -o bin/dance

obj/dance.o: src/dance.cpp
	clang++ -c src/dance.cpp -o obj/dance.o

bin:
	mkdir bin

obj:
	mkdir obj

clean:
	rm -rf dance
