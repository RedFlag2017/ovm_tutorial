module and2 (
  output reg Y,
  input A, B,
  input clk,
  input rst);

always @(posedge clk or negedge rst)
begin
	if(rst==1)
		Y <= 0;
	else
		Y= A&B;
end

endmodule