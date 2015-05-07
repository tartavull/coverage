CC=g++
CFLAGS=-c -Wall -O0 --coverage
LDFLAGS= --coverage
SOURCES=main.cpp hello.cpp factorial.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=hello

all: $(SOURCES) $(EXECUTABLE)
    
$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -f *.o hello *.gcda *.gcno
	rm -rf coverage

coverage: all
	mkdir -p coverage
	rm -f *.gcda
	./$(EXECUTABLE)
	lcov --directory ./ --capture --output-file ./coverage/app.info
	genhtml --output-directory ./coverage ./coverage/app.info              


.PHONY: clean coverage