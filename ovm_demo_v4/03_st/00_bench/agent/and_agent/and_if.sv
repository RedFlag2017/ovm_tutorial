interface and_if();
	logic rst;
	logic clk;
	logic A;
	logic B;
	logic Y;
parameter U_DLY = 1ps;	
	
	initial begin
		if(rst==1)
		begin
			A<=0;
			B<=0;
		end	
		else 
			gen_AB();
		
	end
		
	task gen_AB();
  	automatic int stim_num=100;
  	
  	while(stim_num>0) begin
  		@(posedge clk)
  		A<=#U_DLY $random();
  		B<=#U_DLY $random();
  		stim_num--;
  	end
  endtask: gen_AB
			
	
endinterface:and_if