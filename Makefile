NAME = libftprintf.a

CC = cc

CFLAGS = -Wall -Wextra -Werror

SRCS = ft_printf.c \
       ft_print_char.c \
       ft_print_str.c \
       ft_print_int.c \
       ft_print_unsigned_int.c \
       ft_print_hex.c \
       ft_print_pointer.c 

OBJS = $(SRCS:.c=.o)

EXEC = a.out

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(OBJS) $(EXEC)

fclean: clean
	rm -rf $(NAME)

re: fclean all

.PHONY: all clean fclean re