module ulaControl (ALUOp, FuncCode_tipoR,FuncCode, ALUCtl);
	input ALUOp;
	input [1:0] FuncCode;
	input [3:0] FuncCode_tipoR;		// CODIGO DA FUNÇÃO
	output reg[3:0]  ALUCtl;
	
	initial begin
		
		$display("Testando CONTROLE ULA...");
		$monitor(" ALUOp = %b 	FuncCodeR = %b  FuncCode = %b ALUCtl = %b", ALUOp, FuncCode_tipoR,FuncCode, ALUCtl);	
		

		end
	
		always@(*)
			begin
				if(ALUOp)
					case(FuncCode)
						2'b10: ALUCtl<=5;			//branch (10)
						2'b00: ALUCtl<=7;			// transferencia de dados (1)
					default: case (FuncCode_tipoR)	// tipo-R (0)
						4'b1000: ALUCtl<=0; // cmpShort
						4'b1010: ALUCtl<=2; // mov
						4'b1101: ALUCtl<=5; //subtract	
						4'b1111: ALUCtl<=7; // add
						4'b1100:ALUCtl<=4; // inc
						default: ALUCtl<=15; // should not happen
					endcase
			endcase
	end
endmodule
