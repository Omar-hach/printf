# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ohachami <ohachami@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/30 22:51:04 by ohachami          #+#    #+#              #
#    Updated: 2022/10/30 22:51:14 by ohachami         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME = libftprintf.a

CC = gcc

CFLAGS = -Wall -Werror -Wextra

SRC = ft_strlen.c\
	ft_putnbr.c\
	ft_putnbr_abs.c\
	ft_putstr.c\
	ft_putchar.c\
	ft_printf.c\
	ft_address.c
#dec_to_hex.c
#convertion_check

OBJ = $(SRC:.c=.o)

all: $(OBJ)
	ar rc $(NAME) $(OBJ)

bonus: $(OBJ)
	ar rc $(NAME) $(OBJ)

clean:
	rm -f *.o

fclean: clean
	rm -f $(NAME)

re: fclean all

.PONY: clean fclean re
