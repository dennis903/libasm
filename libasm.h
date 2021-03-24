#ifndef LIBASM_H
# define LIBASM_H

#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdlib.h>
#include <string.h>

size_t		ft_strlen(char *str);
char		*ft_strcpy(char *dst, char *src);
ssize_t		ft_read (int fd, void *buf, size_t nbytes);
ssize_t		ft_write(int fd, void *buf, size_t nbyte);
int			ft_strcmp(const char *s1, const char *s2);
char		*ft_strdup(const char *s1);
#endif