# Script for Programming system generation
all: komppl kompassr absloadm
#komppl.o: komppl.c
#	gcc -o komppl.o komppl.c
komppl: komppl.c
	@echo "________k o m p p l . e x e        g e n e r a t i o n______"
	gcc -o komppl.exe komppl.c
	@echo "____________________________________________________________"
kompassr: kompassr.c
	@echo "________k o m p a s s r . e x e    g e n e r a t i o n______"
	gcc -o kompassr.exe kompassr.c
	@echo "____________________________________________________________"
absloadm: absloadm.c
	@echo "________a b s l o a d m . e x e    g e n e r a t i o n______"
	gcc -o absloadm.exe absloadm.c -lncurses
	@echo "____________________________________________________________"

