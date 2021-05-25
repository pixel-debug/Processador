module memoria_dados(label, dado, dadoEscrito, clk, reset, LerMemo, EscrMemo);
	input [7:0] label, dado;
	input clk, reset, EscrMemo, LerMemo;
	output reg[7:0] dadoEscrito;
	
	reg[7:0] Memo[23:0];
	
	integer i;
	
	initial
		begin	
			$readmemb("banco_de_memoria.dat",Memo);
			//for(i = 0; i < 23 ; i = i + 1)
				//$display(" Memo = %b ", Memo[i] );	
		end
	always@(posedge clk)
		begin	
			if(EscrMemo)
				begin
					Memo[label] = dado;
					$writememb("banco_de_memoria.dat",Memo);
				end
			else if(LerMemo)
				begin
					dadoEscrito = Memo[label];
				end
			else if(reset)
				begin
				for(i = 0; i < 23; i = i + 1)Memo[i] = 0;
				end
			   
		end

endmodule					
	
	