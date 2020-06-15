import ovm_pkg::*;
`timescale 1ps/1ps
`include "../00_bench/clk_rst/reset_gen.sv"
`include "../00_bench/clk_rst/clock_gen.sv"

`include "ovm_macros.svh"

`include "../00_bench/agent/and_agent/and_agent.svh"



reg Y;

module harness();
`include "../00_bench/testbench/tb.svh"
`include "../03_testcase/tc.svh"

//output logic Clock; 

//logic arst;
and_if u_and_vif();

reset_gen  u_reset_gen(u_and_vif.rst);
clock_gen #(.param_time_end_of_sim(10000),.param_clock_half_period(50)) u_clock_gen( u_and_vif.clk, u_and_vif.rst );

initial begin
	$display("greetting from harness");
	fork
//		print_signal();

	join_none
	run_test();
	$display("hahahhahh");
//	run_test();
end

always @(Y)
begin
	   $display("Y changed!!!!!!!!!!!");
end
and2 duv(
  .Y(Y),
  .A(u_and_vif.A),
  .B(u_and_vif.B),
  .clk(u_and_vif.clk),
  .rst(u_and_vif.rst)
  );

endmodule

