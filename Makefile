# compiler to use
CC = clang

# flags
CFLAGS = -std=c99

# executable
EXE = find

# header files
HDRS = find.h 

# source files
SRCS = main.c find.c 

# object files
OBJS = $(SRCS:.c=.o)

# default target
$(EXE): $(OBJS) $(HDRS) Makefile
	$(CC) $(CFLAGS) -o $@ $(OBJS) $(LIBS)

# dependencies 
$(OBJS): $(HDRS) Makefile

# clean
clean:
	rm -f core $(EXE) *.o
