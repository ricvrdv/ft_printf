#include "ft_printf.h"

void	ft_putstr_len(char *s, int *len)
{
	size_t	i;

	i = 0;
	while (!s)
	{
		write(1, "(null)", 6);
		(*len) += 6;
		return ;
	}
	while (s[i] != '\0')
	{
		ft_putchar_len(s[i], len);
		i++;
	}
}