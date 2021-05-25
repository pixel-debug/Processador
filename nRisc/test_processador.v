module test_processador();
	
	reg TB_clk, TB_reset ;
	
	processador gate(TB_clk, TB_reset);
	
	initial begin: stop_at
		#100 $stop;
	end
	initial begin: Init
		TB_clk = 0;
		TB_reset = 0;		
	end
	always begin: main_process
		#1 TB_clk = TB_clk + 1;
		#1 TB_reset = 1;
		
		end
endmodule 