module controleUnit (instru, clk, reset,escrita, escritaPC,ulaFonte, ulaOP, pula, regFonte, comparador,lerMemo, escreveMemo);
	input [7:0] instru;		
	input clk, reset;
	output reg escrita, escritaPC,ulaFonte, ulaOP, pula, regFonte, comparador,lerMemo, escreveMemo;
	
	
	initial begin
		$display("Testando CONTROLE ...");
		$monitor(" Instrucao = %b  reset = %b 	escrita = %b escritaPC = %b ulaFonte = %b ulaOP = %b pula = %b regFonte = %b comparador = %b lerMemo = %b escreveMemo = %b",instru,reset,escrita, escritaPC,ulaFonte, ulaOP, pula, regFonte, comparador,lerMemo, escreveMemo );	
		end
	
	
	
	
	
	initial begin
					escrita = 1'b0;
					ulaFonte = 1'b0;
					ulaOP = 1'b0;
					pula = 1'b0;
					regFonte = 1'b0;
					comparador = 1'b0;
					lerMemo = 1'b0;
					escreveMemo = 1'b0;		
					escritaPC = 1'b0;
	end
	
	
	
	
	 always@(instru, clk, reset)
		if(reset)
			begin
					escrita = 1'b0;
					ulaFonte = 1'b0;
					ulaOP = 1'b0;
					pula = 1'b0;
					regFonte = 1'b0;
					comparador = 1'b0;
					lerMemo = 1'b0;
					escreveMemo = 1'b0;			
				end
		else	
			begin
				if(clk)
						begin
							if (escritaPC)
								escritaPC = 0;
							else
								escritaPC = 1;
							case(instru)
								8'b00000000: 
									begin
										escrita = 1'b1;
										ulaFonte = 1'b0;
										ulaOP = 1'b0;
										pula = 1'b0;
										regFonte = 1'b0;
										comparador = 1'b0;
										lerMemo = 1'b0;
										escreveMemo = 1'b0;	
									
									end
								8'b00000001: 
									begin
										escrita = 1'b0;
										ulaFonte = 1'b1;
										ulaOP = 1'b0;
										pula = 1'b0;
										regFonte = 1'b0;
										comparador = 1'b0;
										lerMemo = 1'b0;
										escreveMemo = 1'b0;	
									end
								8'b00000010:
									begin
										escrita = 1'b0;
										ulaFonte = 1'b0;
										ulaOP = 1'b1;
										pula = 1'b0;
										regFonte = 1'b0;
										comparador = 1'b0;
										lerMemo = 1'b0;
										escreveMemo = 1'b0;
									end
								8'b00000011:
									begin
										escrita = 1'b0;
										ulaFonte = 1'b0;
										ulaOP = 1'b0;
										pula = 1'b1;
										regFonte = 1'b0;
										comparador = 1'b0;
										lerMemo = 1'b0;
										escreveMemo = 1'b0;
									end
								8'b00000100:
									begin
										escrita = 1'b0;
										ulaFonte = 1'b0;
										ulaOP = 1'b0;
										pula = 1'b0;
										regFonte = 1'b1;
										comparador = 1'b0;
										lerMemo = 1'b0;
										escreveMemo = 1'b0;	
									end
								8'b00000101: 
									begin
										escrita = 1'b0;
										ulaFonte = 1'b0;
										ulaOP = 1'b0;
										pula = 1'b0;
										regFonte = 1'b0;
										comparador = 1'b1;
										lerMemo = 1'b0;
										escreveMemo = 1'b0;	
									end
								8'b00000110:
									begin
										escrita = 1'b0;
										ulaFonte = 1'b0;
										ulaOP = 1'b0;
										pula = 1'b0;
										regFonte = 1'b0;
										comparador = 1'b0;
										lerMemo = 1'b1;
										escreveMemo = 1'b0;	
									end
								8'b00000111: 
									begin
										escrita = 1'b0;
										ulaFonte = 1'b0;
										ulaOP = 1'b0;
										pula = 1'b0;
										regFonte = 1'b0;
										comparador = 1'b0;
										lerMemo = 1'b0;
										escreveMemo = 1'b1;
									end
								8'b00001000: 
									begin
										escrita = 1'b0;
										ulaFonte = 1'b0;
										ulaOP = 1'b0;
										pula = 1'b0;
										regFonte = 1'b0;
										comparador = 1'b0;
										lerMemo = 1'b0;
										escreveMemo = 1'b0;
									end
								
							endcase		
							
			end
		end
endmodule
