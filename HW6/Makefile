all: r_w dining_ph

run_r_w: r_w
	@./r_w.out

run_dining_ph: dining_ph
	@./dining_ph.out

r_w:
	@rm -f r_w.out
	@gcc r_w.c -lpthread -o r_w.out

dining_ph:
	@rm -f dining_ph.out
	@gcc dining_ph.c -lpthread -o dining_ph.out

clean:
	@rm *.out