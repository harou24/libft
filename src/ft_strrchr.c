/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   ft_strrchr.c                                       :+:    :+:            */
/*                                                     +:+                    */
/*   By: haachtch <marvin@codam.nl>                   +#+                     */
/*                                                   +#+                      */
/*   Created: 2019/10/28 16:09:10 by haachtch      #+#    #+#                 */
/*   Updated: 2019/11/16 20:22:30 by haachtch      ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strrchr(const char *str, int c)
{
	char	*ptr;

	ptr = (char*)str;
	while (*ptr)
		ptr++;
	while (ptr >= str)
	{
		if (*ptr == c)
			return (ptr);
		ptr--;
	}
	return (NULL);
}
