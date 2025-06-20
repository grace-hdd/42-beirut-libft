# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: grhaddad <grhaddad@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/06/04 16:21:00 by grhaddad          #+#    #+#              #
#    Updated: 2025/06/04 16:21:00 by grhaddad         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CC = gcc
CFLAGS = -Wall -Wextra -Werror
SRC = ft_memset.c ft_memcpy.c ft_memmove.c ft_memchr.c ft_memcmp.c ft_calloc.c\
      ft_strlen.c ft_strdup.c ft_strchr.c ft_bzero.c ft_strlcpy.c\
      ft_strrchr.c ft_strnstr.c ft_strncmp.c ft_substr.c ft_strlcat.c\
      ft_strjoin.c ft_strtrim.c ft_split.c ft_strmapi.c ft_striteri.c \
      ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c \
      ft_toupper.c ft_tolower.c ft_putchar_fd.c ft_putstr_fd.c ft_atoi.c\
      ft_putendl_fd.c ft_putnbr_fd.c ft_itoa.c

SRC_BONUS = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c \
            ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c \
            ft_lstmap.c
OBJ = $(SRC:.c=.o)
OBJ_BONUS = $(SRC_BONUS:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)

bonus: $(OBJ_BONUS)
	ar rcs $(NAME) $(OBJ_BONUS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(OBJ_BONUS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re