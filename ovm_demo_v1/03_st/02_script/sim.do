
set TEST_NAME tc01

vlib ../10_sim/work
vmap work ../10_sim/work
vlog -L mtiAvm -L mtiOvm -L mtiUvm -L mtiUPF  -f rtl.f ../00_bench/harness.sv
vsim  -novopt work.harness +OVM_TESTNAME=$TEST_NAME 

run -all

