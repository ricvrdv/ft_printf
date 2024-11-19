#include "ft_printf.h"

void	ft_print_str(char *s, int *len)
{
	size_t	i;

	i = 0;
	if (!s)
	{
		ft_print_str("(null)", len);
		return ;
	}
	while (s[i] != '\0')
	{
		ft_print_char(s[i], len);
		i++;
	}
}