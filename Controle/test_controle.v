module test_controle();
	reg [7:0] TB_instru;
	
	reg TB_clk, TB_reset;
	wire  TB_escrita, TB_escritaPC, TB_ulaFonte, TB_ulaOP, TB_pula, TB_regFonte, TB_comparador,TB_lerMemo, TB_escreveMemo;
	
	
	
	
	controleUnit gate(TB_instru,  TB_clk, TB_reset, TB_escrita, TB_escritaPC, TB_ulaFonte, TB_ulaOP, TB_pula, TB_regFonte, TB_comparador, TB_lerMemo, TB_escreveMemo);
	

	initial begin: stop_at
		#20 $stop;
	end
	
	initial begin: Init
		TB_clk = 0;
		TB_instru = 8'b00000000;
		TB_reset = 1;	
			
	end
	
	always begin: main_process
		#1 TB_clk = TB_clk + 1;
		#1 TB_instru = TB_instru + 1;
		#1 TB_reset = 0;
		end
		
	initial begin
		$display("Testando CONTROLE ...");
		$monitor(" Instrucao = %b  reset = %b 	escrita = %b escritaPC = %b ulaFonte = %b ulaOP = %b pula = %b regFonte = %b comparador = %b lerMemo = %b escreveMemo = %b", TB_instru, TB_reset,  TB_escrita, TB_escritaPC, TB_ulaFonte, TB_ulaOP, TB_pula, TB_regFonte, TB_comparador,TB_lerMemo, TB_escreveMemo );	
		end
	
endmodule 
	
	
	
