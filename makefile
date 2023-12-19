.PHONY: clean run
CC = gcc
RM = rm
SRC = webserver.c
EXE = webserver
# OBJS = webserver.o
PATH = /home/wcs/Documents/os/cup_os
# 运行程序
run:
	./$(EXE) 8086 $(PATH)
# 生成可执行文件 不运行程序
exe: $(EXE)
$(EXE): $(SRC)
	$(CC) $(SRC) -o $(EXE)
clean:
	$(RM) $(EXE) $(OBJS)