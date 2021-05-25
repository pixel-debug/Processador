module test_memoria();
	reg [7:0] TB_label;
	reg TB_clk, TB_reset;
	wire [7:0] TB_instrucao;
	
	memoria gate( TB_label, TB_clk, TB_instrucao, TB_reset);

	initial begin: stop_at
		#20 $stop;
	end
	
	
	
	initial begin: Init
		TB_clk = 0;
		TB_label = 0;
		TB_reset = 1;
		
	end
	
	always begin: main_process
		#1 TB_clk = TB_clk + 1;
		#1 TB_label <= 7;
		#2 TB_reset = 0;
		end
endmodule 
	
	
	
