#include "ft_printf.h"

void	ft_print_int(int number, int *len)
{
	char	digit;
	long	n_long;

	n_long = (long)number;
	if (n_long < 0)
	{
		ft_print_char('-', len);
		n_long *= -1;
	}
	if (n_long > 9)
		ft_print_int(n_long / 10, len);
	digit = (n_long % 10) + '0';
	ft_print_char(digit, len);
}