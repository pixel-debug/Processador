module test_memoria_dados();
	reg [7:0] TB_label,TB_dado;
	reg TB_clk, TB_reset, TB_EscrMemo, TB_LerMemo;
	wire [7:0] TB_dadoEscrito;
	
	memoria_dados gate(TB_label, TB_dado, TB_dadoEscrito, TB_clk, TB_reset, TB_LerMemo,TB_EscrMemo);
	

	initial begin: stop_at
		#20 $stop;
	end
	
	initial begin
		$display("Testando MEMORIA ...");
		$monitor(" Endereco = %b  reset = %b 	dado = %b saida = %b lerMemo = %b escreveMemo = %b ", TB_label, TB_reset,  TB_dado, TB_dadoEscrito,  TB_LerMemo,TB_EscrMemo );	
		end
	
	initial begin: Init
		TB_clk = 0;
		TB_label = 0;
		TB_reset = 0;
		TB_dado = 0;
		TB_LerMemo = 0;
		TB_EscrMemo = 1;
		
	end
	
	always begin: main_process
		#1 TB_clk = TB_clk + 1;
		#1 TB_label = TB_label + 1;
		#1 TB_dado = TB_dado + 1;
		#2 TB_EscrMemo = 0;
		#2 TB_LerMemo = 1;
		#2 TB_reset = 1;
		end
endmodule 
	
	
	
