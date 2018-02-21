create_project prj -part xc7z020clg484-1 -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
source "C:/Users/Stavros/Imperial/2ndTerm/ADSD/Part2/git_files/CORDIC_design/cordic_hls/solution1/syn/verilog/coshsinh_cordic_ap_dadddsub_3_full_dsp_64_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips coshsinh_cordic_ap_dadddsub_3_full_dsp_64]]
}
source "C:/Users/Stavros/Imperial/2ndTerm/ADSD/Part2/git_files/CORDIC_design/cordic_hls/solution1/syn/verilog/coshsinh_cordic_ap_dadd_3_full_dsp_64_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips coshsinh_cordic_ap_dadd_3_full_dsp_64]]
}
source "C:/Users/Stavros/Imperial/2ndTerm/ADSD/Part2/git_files/CORDIC_design/cordic_hls/solution1/syn/verilog/coshsinh_cordic_ap_dcmp_0_no_dsp_64_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips coshsinh_cordic_ap_dcmp_0_no_dsp_64]]
}
source "C:/Users/Stavros/Imperial/2ndTerm/ADSD/Part2/git_files/CORDIC_design/cordic_hls/solution1/syn/verilog/coshsinh_cordic_ap_dmul_4_max_dsp_64_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips coshsinh_cordic_ap_dmul_4_max_dsp_64]]
}
