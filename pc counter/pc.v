module programCounter(clk, label, pc_in, pc_out, reset);
	input [7:0] label;
	input clk, pc_in, reset;
	output reg [7:0] pc_out;
	initial
		begin
			$display("Program Counter");
			$monitor(" label = %b pc_in = %b pc_out = %b  ", label, pc_in, pc_out );
		end
	always@(posedge clk)
		begin	
			if(pc_in)
				begin
					pc_out = label;
				end
			if(reset)
				begin
					pc_out = 0;
				end
		end
endmodule




