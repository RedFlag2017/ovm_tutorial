import ovm_pkg::*;
`timescale 1ps/1ps
`include "../00_bench/clk_rst/reset_gen.sv"
`include "../00_bench/clk_rst/clock_gen.sv"

`include "ovm_macros.svh"






module harness();
`include "../03_testcase/tc.svh"
//output logic Clock; 
logic rst;
logic clk;


reset_gen u_reset_gen(rst);
clock_gen u_clock_gen( clk, arst );

initial begin
	$display("greetting from harness");
	fork
//		print_signal();

	join_none
	run_test();
	$display("hahahhahh");
//	run_test();
end


endmodule

