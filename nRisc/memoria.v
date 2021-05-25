module memoria ( label, clk, instrucao, reset);
	input[7:0] label;
	input clk;
	output reg [7:0] instrucao;
	reg [7:0]Memo[29:0];
	input reset;
	
	
	
	initial begin
		$display("Testando MEMORIA ...");
		$monitor(" Endereco = %b  reset = %b instrucao = %b ", label, reset,instrucao );	
		end
	
	
	integer i;
	initial begin
		
		$display("Lendo o banco de memoria...");
		for (i = 0; i < 29; i = i + 1) Memo[i] = 0;
		//$monitor(" endereço = %b 	instrucao = %b ", label, Memo[label]);	
		$readmemb("banco_de_memoria.dat",Memo);
		end
	always @(posedge clk) begin
		if(reset)
			instrucao = Memo[0];
		else
		   instrucao <= Memo[label]; 	
	  end
endmodule


