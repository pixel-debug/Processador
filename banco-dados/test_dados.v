module test_dados();
	reg [7:0] TB_label;
	reg [7:0] TB_dadoEscrito;
	reg TB_clk, TB_reset, TB_EscrMemo, TB_LerMemo;
	wire [7:0] TB_escrever;
	
	dados gate(TB_label, TB_escrever, TB_dadoEscrito, TB_clk, TB_reset, TB_LerMemo,TB_EscrMemo);

	initial begin: stop_at
		#20 $stop;
	end

	initial begin: Init
		TB_clk = 0;
		TB_label = 0;
		TB_reset = 1;
		TB_dadoEscrito = 0;
		TB_LerMemo = 0;
		TB_EscrMemo = 1;
		
	end
	
	always begin: main_process
		#1 TB_clk = TB_clk + 1;
		#1 TB_label <= 7;
		#1 TB_LerMemo = 1;
		#1 TB_EscrMemo = 0;
		#1 TB_dadoEscrito <= 5;
		#2 TB_reset = 0;
		end
endmodule 
	
	
	
