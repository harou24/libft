# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: haachtch <haachtch@student.codam.n>          +#+                      #
#                                                    +#+                       #
#    Created: 2020/08/31 19:48:29 by haachtch      #+#    #+#                  #
#    Updated: 2020/08/31 19:48:34 by haachtch      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

NAME	=	libft.a

SRC_D  = src
INC_D = inc
OBJ_D = obj

SRC		=	$(SRC_D)/ft_memset.c\
			$(SRC_D)/ft_bzero.c\
			$(SRC_D)/ft_memcpy.c\
			$(SRC_D)/ft_memccpy.c\
			$(SRC_D)/ft_memmove.c\
			$(SRC_D)/ft_putnbr_fd.c\
			$(SRC_D)/ft_memchr.c\
			$(SRC_D)/ft_calloc.c\
			$(SRC_D)/ft_putchar_fd.c\
			$(SRC_D)/ft_putendl_fd.c\
			$(SRC_D)/ft_putstr_fd.c\
			$(SRC_D)/ft_strlen.c\
			$(SRC_D)/ft_strlcpy.c\
			$(SRC_D)/ft_strlcat.c\
			$(SRC_D)/ft_strrchr.c\
			$(SRC_D)/ft_strnstr.c\
			$(SRC_D)/ft_itoa.c\
			$(SRC_D)/ft_split.c\
			$(SRC_D)/ft_strchr.c\
			$(SRC_D)/ft_strdup.c\
			$(SRC_D)/ft_strjoin.c\
			$(SRC_D)/ft_strmapi.c\
			$(SRC_D)/ft_strtrim.c\
			$(SRC_D)/ft_substr.c\
			$(SRC_D)/ft_memcmp.c\
			$(SRC_D)/ft_strcmp.c\
			$(SRC_D)/ft_strncmp.c\
			$(SRC_D)/ft_atoi.c\
			$(SRC_D)/ft_isalpha.c\
			$(SRC_D)/ft_isalnum.c\
			$(SRC_D)/ft_isascii.c\
			$(SRC_D)/ft_isprint.c\
			$(SRC_D)/ft_toupper.c\
			$(SRC_D)/ft_tolower.c\
			$(SRC_D)/ft_isdigit.c\
			$(SRC_D)/ft_iswhitespace.c\
			$(SRC_D)/ft_isemptyline.c\
			$(SRC_D)/ft_realloc.c\
			$(SRC_D)/pair.c

INC =		$(INC_D)/libft.h\
		$(INC_D)/pair.h

OBJ := $(SRC:$(SRC_D)/%.c=$(OBJ_D)/%.o)

CC = clang
CC_FLAGS	=	-Wall -Wextra -Werror
AR_COMMAND	=	ar rsv

all: $(NAME)

$(NAME): $(OBJ_D) $(OBJ) $(INC_D) $(INC)
			$(AR_COMMAND) $(NAME) $(OBJ)

$(OBJ_D):
		mkdir -p $(OBJ_D)

$(OBJ): $(OBJ_D)/%.o: $(SRC_D)/%.c
		@$(CC) $(CC_FLAGS) -I$(INC_D) -c $< -o $@

clean:
		rm -rf $(OBJ_D)
		rm	-rf *.dSYM

fclean: clean
	rm -f $(NAME)

re: fclean all
