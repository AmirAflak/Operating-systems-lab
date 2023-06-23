all: concurrent serial plot_fork

run_concurrent: concurrent
	@./concurrent.out

run_serial: serial
	@./serial.out

run_plot_fork: plot_fork
	@./plot_fork.out

concurrent:
	@rm -f concurrent.out
	@gcc concurrent.c -lpthread -o concurrent.out

plot_fork:
	@rm -f plot_fork.out
	@gcc plot_fork.c -lpthread -o plot_fork.out

serial:
	@rm -f serial.out
	@gcc serial.c -lpthread -o serial.out

clean:
	@rm *.out