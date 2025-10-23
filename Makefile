cc = gcc
debug_flags = -Wall -Wextra -Werror -O0 -march=native -MMD -MP -std=c17
debug_sanitizer_flags = -Wall -Wextra -Werror -O0 -fsanitize=undefined,address -march=native -MMD -MP -std=c17
release_flags = -Wall -Wextra -Werror -O3 -march=native -MMD -MP -std=c17
source = weather.c
target = weather

objs_dir = objs
deps_dir = deps

objs = $(patsubst %.c, $(objs_dir)/%.o, ${source})
deps = $(patsubst %.c, $(deps_dir)/%.d, ${source})

debug: $(source)
	mkdir -p $(objs_dir)
	mkdir -p $(deps_dir)
	$(cc) $(debug_flags) -c $(source)
	$(cc) -o $(target) *.o -fsanitize=undefined,address
	mv *.o $(objs_dir)/$(target).o
	mv *.d $(deps_dir)/$(target).d
san: $(source)
	mkdir -p $(objs_dir)
	mkdir -p $(deps_dir)
	$(cc) $(debug_sanitizer_flags) -c $(source)
	$(cc) -o $(target) *.o -fsanitize=undefined,address
	mv *.o $(objs_dir)/$(target).o
	mv *.d $(deps_dir)/$(target).d
release: $(source)
	mkdir -p $(objs_dir)
	mkdir -p $(deps_dir)
	$(cc) $(release_flags) -c $(source)
	$(cc) -o $(target) *.o -fsanitize=undefined,address
	mv *.o $(objs_dir)/$(target).o
	mv *.d $(deps_dir)/$(target).d
clean:
	rm -rf $(objs_dir) $(deps_dir)
	rm $(target)

