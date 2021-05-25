module ula (ALUctl, A, B, ALUOut, Zero);
	input [3:0] ALUctl; // código das instruções
	input [1:0] A,B;	// registradores
	output reg [8:0] ALUOut;	// saida da ula
	output Zero;
	
	
	initial begin
		
		$display("Testando ULA...");
		$monitor(" controle = %b 	saida = %b  zero = %b  reg 1 = %b   reg 2 = %b", ALUctl, ALUOut,Zero, A, B);	
		

		end
	
	
	assign Zero = (ALUOut==0); //Zero is true if ALUOut is 0
	always @(ALUctl, A, B) begin //reevaluate if these change
		case (ALUctl)	
			0: ALUOut <= A < B ? 1 : 0;	// comp short	
			2: ALUOut <= B;			// mov
			4: ALUOut <= A + 1;		//inc
			5: ALUOut <= A - B;		//sub
			7: ALUOut <= A + B;		//add						
	default: ALUOut <=  0;				
		endcase							
	end
	
endmodule


