cc = gcc
flags = -Wall -Wextra -Werror -fsanitize=undefined,address -march=native -MMD -MP -std=c17
source = inductive_data_type.c
target = idt

all:
	$(cc) $(flags) $(source) -o $(target)
clean:
	rm $(target) $(target).d
