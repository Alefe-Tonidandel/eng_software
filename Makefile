CXX = g++
CXXFLAGS = -Wall -Iinclude

SRC = $(wildcard src/*.cpp)
OBJ = $(SRC:.cpp=.o)
EXEC = bin/app.exe

all: $(EXEC)

$(EXEC): $(OBJ)
	$(CXX) $(OBJ) -o $(EXEC)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Regra para compilar os testes (usada mais a frente)
test: test/main.cpp src/bib.cpp
	$(CXX) $(CXXFLAGS) test/main.cpp src/bib.cpp -o bin/testeRegressivo.exe

clean:
	rm -f src/*.o bin/*
