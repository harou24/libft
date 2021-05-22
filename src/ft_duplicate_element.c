#include "libft.h"

void	*ft_duplicate_element(void *_element, int _size_of_element)
{
	void	*element;

	element = malloc(_size_of_element);
	return (ft_memcpy(element, _element, _size_of_element));
}
