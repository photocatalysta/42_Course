

# 42 Course

Repository containing all the projects from the 42 Course:

## Layer 0

### :books: :octocat: [Libft](https://github.com/photocatalysta/42_0_libft) :octocat:

A library containing my own version of basic C function. They do not require any external functions and are supposed to be reused throughout the rest of the projects:

* int			ft_isalpha(int c);
* int			ft_isalnum(int c);
* int			ft_isascii(int c);
* int			ft_isprint(int c);
* int			ft_isdigit(int c);
* int			ft_tolower(int c);
* int			ft_toupper(int c);

* int			ft_atoi(char *str);

* void			ft_bzero(void *s, size_t n);
* void			*ft_memchr(const void *s, int c, size_t n);
* int			ft_memcmp(const void *str1, const void *str2, size_t n);
* void			*ft_memcpy(void *dest, const void *src, size_t n);
* void			*ft_memmove(void *dest, const void *src, size_t n);
* void			*ft_memset(void *s, int c, size_t n);

* char			*ft_strchr(const char *s, int c);
* char			*ft_strdup(char *src);
* unsigned int	ft_strlcat(char *dest, char *src, unsigned int size);
* int			ft_strlen(char *str);
* int			ft_strncmp(char *s1, char *s2, unsigned int n);
* char 			*ft_strrchr(const char *s, int c);

## Layer 1

### :computer: :octocat: [Born 2 Be Root](https://github.com/photocatalysta/42_Course/tree/main/Layer_1/42_1_Born2beRoot) :octocat:

Set up your first server by following specific rules specified in the PDF. This is made to learn how a basic Linux - Debian system works

### :book: [Get next line](https://github.com/photocatalysta/42_1_Get_next_line) :octocat:

This set of functions allows to read a part of a file to return the next line of a file, given its file descriptor. The bonus part allows to manage a series of different file descriptors.

### :black_nib: :octocat: [Printf](https://github.com/photocatalysta/42_1_Printf) :octocat:

Because putchar, putstr and putnbr are not enough. Reproduces the basic function of printf()

## Layer 2

### :microphone: :speaker: :octocat: [Minitalk](https://github.com/photocatalysta/42_2_minitalk) :octocat:

A small conversation between a client and a server, through bitwise signals 

### :recycle: :octocat: [Push Swap](https://github.com/photocatalysta/42_2_push_swap) :octocat:

Sorts data on a stack, with a limited set of instructions, using the lowest possible number of actions. 

### :boy: :european_castle: :princess: :octocat: [So long](https://github.com/photocatalysta/42_2_so_long) :octocat:

So long (and thanks for all the fish) is a very small 2D game with the purpose to make you work with textures, sprites, and some other very basic gameplay elements.

## Layer 3


### :octocat: [Minishell](https://github.com/photocatalysta/42_3_minishell) :octocat:

The objective of this project is for you to create a simple shell.

### :octocat: Philosophers - Incomplete

This is a final C project that complements minishell. It is an implementation of the famous [Dining philosophers problem](https://en.wikipedia.org/wiki/Dining_philosophers_problem) where `N` philosophers sit at a table with `N` forks. To be able to eat they are required to have 2 forks in their hand and must do this without talking to each others. This exercise focuses on improving the knowledge in regards to `deadlocks` and `race conditions` 

-----------

🫡 My journey in 42 Barcelona has terminated at this point :salute:s