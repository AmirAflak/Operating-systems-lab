cmd_/root/Operating-systems-lab/HW2/my_module/hello_world.ko := ld -r -m elf_x86_64 -z noexecstack --no-warn-rwx-segments --build-id=sha1  -T scripts/module.lds -o /root/Operating-systems-lab/HW2/my_module/hello_world.ko /root/Operating-systems-lab/HW2/my_module/hello_world.o /root/Operating-systems-lab/HW2/my_module/hello_world.mod.o;  true
