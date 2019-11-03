CPP=clang++
OPT= -std=c++11 -Wall

all: bin/test_default_ctor bin/test_int_ctor

bin: 
	mkdir bin

obj: 
	mkdir obj

obj/set.o: set.cpp set.hpp bin obj
	$(CPP) $(OPT) -c $< -o $@

bin/test_default_ctor: test_default_ctor.cpp obj/set.o
	$(CPP) $(OPT) $^ -o $@

bin/test_int_ctor: test_int_ctor.cpp obj/set.o
	$(CPP) $(OPT) $^ -o $@
clean:
	rm -rf obj bin
