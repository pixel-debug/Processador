module dados(label, escrever, dadoEscrito, clk, reset, LerMemo, EscrMemo);
	input [7:0] label;
	input [7:0] dadoEscrito;
	input clk, reset, EscrMemo, LerMemo;
	output reg[7:0] escrever;
	
	reg[7:0] Memo[29:0];
	
	integer i;
	
	initial
		begin	
			$readmemb("C:/marinaSD/PROCESSADOR/DADOS/banco_de_dados.dat",Memo);
         $monitor("Endereco: %b Dado: %b EscMem: %b ", label, Memo[label], EscrMemo);
		end
	always@(posedge clk)
		begin	
			if(EscrMemo)
				begin
					Memo[label] <= dadoEscrito;
				end
			if(reset)
				begin
				for(i = 0; i < 29; i = i + 1)Memo[i] = 0;
				end
				$writememb("banco_de_dados.dat",Memo);
		end
		
	always@ (negedge clk)
		begin 
			if(LerMemo)
				begin
				escrever <= Memo[label];
				end
		end
endmodule					
	
	