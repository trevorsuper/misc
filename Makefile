cc = gcc
debug_flags = -Wall -Wextra -Werror -march=native -MMD -MP -std=c17
debug_san_flags = -Wall -Wextra -Werror -fsanitize=undefined,address -march=native -MMD -MP -std=c17
release_flags = -Wall -Wextra -Werror -02 -march=native -MMD -MP -stdc=17
source = inductive_data_type.c
target = idt

debug:
	$(cc) $(debug_flags) $(source) -o $(target)
san:
	$(cc) $(debug_san_flags) $(source) -o $(target)
release:
	$(cc) $(release_flags) $(source) -o $(target)
clean:
	rm $(target) $(target).d
