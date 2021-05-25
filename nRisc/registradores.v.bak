module registradores(Reg1,Reg2,regDestino,dadosEscritos,Escrita,Dados1,Dados2,clock, reset);
    input [2:0] Reg1,Reg2,regDestino; 
    input [7:0] dadosEscritos; 
    input Escrita, clock, reset; 
    output [7:0] Dados1, Dados2; 
	 reg[7:0] ra;
    reg [7:0] Memo [4:0];

    integer i;
    initial 
        begin
				$display("Lendo o banco de registradores...");
				for(i = 0; i < 5; i = i + 1) Memo[i] = i;
		   	$monitor("%b %b %b %b %b", Memo[0], Memo[1], Memo[2] , Memo[3], Memo[4]);
        end
		  
    assign Dados1 = Memo[Reg1];
	 assign Dados2 = Memo[Reg2];
			
    always @(posedge clock)
    begin
		if (Escrita)
			begin
				if(regDestino == 8'b 00000111)
					ra <= dadosEscritos;
				else
					Memo[regDestino] = dadosEscritos;
			end
         $writememb("banco_de_registradores.txt",Memo);
		if(reset) begin
			Memo[0] <= 0;
			Memo[1] <= 0;
			Memo[2] <= 0;
			Memo[3] <= 0;
			Memo[4] <= 0;
			$monitor("%b %b %b %b %b", Memo[0], Memo[1], Memo[2] , Memo[3], Memo[4]);
     end
	 end
	
endmodule

