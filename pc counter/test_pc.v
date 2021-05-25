module test_pc();
	reg [7:0] TB_label;
	reg TB_clk, TB_pc_in, TB_reset;
	wire [7:0] TB_pc_out;
	
	programCounter gate (TB_clk, TB_label, TB_pc_in, TB_pc_out, TB_reset);
	
	initial begin: stop_at
		#20 $stop;
	end
	
	initial begin: Init
		TB_clk = 0;
		TB_reset = 0;
		TB_label = 0;
		TB_pc_in = 1;
	end
	
	always begin: main_process
		#1 TB_clk = TB_clk + 1;
		end
	always @(posedge TB_clk)
		TB_label = TB_label +1;
		
endmodule 
	
	
	
