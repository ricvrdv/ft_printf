NAME = libftprintf.a

CC = cc

CFLAGS = -Wall -Wextra -Werror

SRCS = ft_printf.c \
       ft_putchar_len.c \
       ft_putstr_len.c \
       ft_putnbr_len.c \
       ft_unsigned_int.c \
       ft_puthex_len.c \
       ft_pointer_len.c 

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