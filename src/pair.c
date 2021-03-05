#include "pair.h"
#include "libft.h"
#include <stdlib.h>

void	*ft_duplicate_element(void *_element, int _size_of_element)
{
	void	*element;

	element = malloc(_size_of_element);
	return (ft_memcpy(element, _element, _size_of_element));
}

t_pair	*pair_create(void *_first, int _size_of_first, void *_second, int _size_of_second)
{
	t_pair *pair;

	pair = malloc(sizeof(t_pair));
	if (!pair)
		return (NULL);
	pair->first = ft_duplicate_element(_first, _size_of_first);
	pair->second = ft_duplicate_element(_second, _size_of_second);
	if (!pair->first || !pair->second)
		return (NULL);
	return (pair);
}

void pair_destroy(t_pair *_pair, void (*_ft_delete_first)(void *), void (*_ft_delete_second)(void *))
{
	_ft_delete_first(_pair->first);
	_ft_delete_second(_pair->second);
	free(_pair);
}
