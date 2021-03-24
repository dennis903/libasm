TARGET = libasm.a

SRCS = ./ft_read.s	\
		./ft_strcmp.s	\
		./ft_strcpy.s	\
		./ft_strdup.s	\
		./ft_strlen.s	\
		./ft_write.s

OBJS	=	$(SRCS:.s=.o)

%.o	:	%.s
	nasm	-f	macho64	$<	-o	$@

$(TARGET)	:	$(OBJS)
	ar	rcs	$(TARGET)	$(OBJS)

all	:	$(TARGET)

clean	:
	rm	-f	$(OBJS)

try: all
	@touch	test
	@echo	"Ceci est un test"	>	test
	gcc -Wall -Wextra -Werror -I./libasm.h libasm.a main.c -o try_libasm
	./try_libasm

fclean:	clean
	rm	-f	$(TARGET)
	rm	-f	try_libasm
	rm	-f	test

re: fclean all