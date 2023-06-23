all: fcfs sjf priority RR

run_fcfs: fcfs
	@./fcfs.out

run_RR: RR
	@./RR.out

run_sjf: sjf
	@./sjf.out

run_priority: priority
	@./priority.out

RR:
	@rm -f RR.out
	@gcc RR.c -o RR.out

fcfs:
	@rm -f fcfs.out
	@gcc fcfs.c -o fcfs.out

sjf:
	@rm -f sjf.out
	@gcc sjf.c -o sjf.out

priority:
	@rm -f priority.out
	@gcc priority.c -o priority.out

clean:
	@rm *.out
