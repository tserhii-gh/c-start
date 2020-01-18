CXX = gcc
CXXFLAGS = -Wall -Werror -Wextra -pedantic -std=c11 -g -fsanitize=address
LDFLAGS =  -fsanitize=address

SRC = src/main.c
OBJ = $(SRC:.c=.o)
# a.out rename
EXEC = main

all: $(EXEC)

$(EXEC): $(OBJ)
	$(CXX) $(LDFLAGS) -o $@ $(OBJ) $(LBLIBS)

clean:
	rm -rf $(OBJ) $(EXEC)