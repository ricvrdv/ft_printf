#include "ft_printf.h"

void	ft_print_char(char c, int *len)
{
	if (write(1, &c, 1) == 1)
		(*len)++;
}