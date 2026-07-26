vlib work
vlog AES_package.svh
vlog +cover AES_top.sv AES_intf.svh  AES_wrapper.sv 
vsim -voptargs=+acc -coverage work.AES_top
add wave *
run -all
coverage report -cvg -codeAll -details -output aes_coverage_report.txt