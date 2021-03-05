#ifndef PAIR_H
# define PAIR_H

typedef struct	s_pair {
		void *first;
		void *second;
}		t_pair;

t_pair	*pair_create(void *_first, int _size_of_first, void *_second, int _size_of_second);
void	pair_destroy(t_pair *_pair, void (*_ft_delete_first)(void *), void (*_ft_delete_second)(void *));

#endif
