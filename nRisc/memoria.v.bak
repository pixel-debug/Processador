module memoria ( label, clk, instrucao, reset);
	input[7:0] label;
	input clk;
	output reg [7:0] instrucao;
	reg [7:0]Memo[29:0];
	input reset;
	
	integer i;
	initial begin
		$readmemb("C:/marinaSD/PROCESSADOR/MEMORIA/banco_de_memoria.dat", Memo);
		$display("Lendo o banco de memoria...");
	//	for (i = 0; i < 29; i = i + 1) Memo[i] = i;
		$monitor(" endereço = %b 	instrucao = %b ", label, Memo[label]);	
		end
	always @(posedge clk) begin
		if(reset)
			instrucao = Memo[0];
		else
		   instrucao <= Memo[label]; 	
	  end
endmodule


