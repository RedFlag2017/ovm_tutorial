import ovm_pkg::*;


// `include "../01_lib/ovm-2.1.1/src/ovm_macros.svh"
`include "ovm_macros.svh"




`timescale 1ps/1ps
module harness();
`include "../03_testcase/tc.svh"


initial begin
	$display("greetting from harness");

	run_test();

end


endmodule

