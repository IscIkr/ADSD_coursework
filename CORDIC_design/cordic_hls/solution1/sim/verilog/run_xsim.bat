
call xelab xil_defaultlib.apatb_coshsinh_cordic_top -prj coshsinh_cordic.prj --initfile "C:/Xilinx/Vivado/2016.2/bin/../data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s coshsinh_cordic 
call xsim --noieeewarnings coshsinh_cordic -tclbatch coshsinh_cordic.tcl

