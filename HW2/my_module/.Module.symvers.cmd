cmd_/root/Operating-systems-lab/HW2/my_module/Module.symvers := sed 's/ko$$/o/' /root/Operating-systems-lab/HW2/my_module/modules.order | scripts/mod/modpost -m -a  -o /root/Operating-systems-lab/HW2/my_module/Module.symvers -e -i Module.symvers   -T -