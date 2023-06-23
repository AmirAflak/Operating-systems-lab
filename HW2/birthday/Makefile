obj-m := birthday.o

KERNEL_SOURCE ?= /lib/modules/$(shell uname -r)/build
PWD = $(shell pwd)

all default: modules
install: modules_install

modules modules_install help clean:
	$(MAKE) -C $(KERNEL_SOURCE) M=$(PWD) $@
