module test_ula();
	reg [3:0] TB_ALUctl;
	reg [1:0] TB_A, TB_B;
	wire [8:0] TB_ALUOut;
	wire TB_Zero;
	
	ula gate(TB_ALUctl, TB_A, TB_B, TB_ALUOut, TB_Zero);

	initial begin: stop_at
		#20 $stop;
	end
		
	initial begin: Init
		TB_ALUctl = 0;
		TB_A = 0;
		TB_B = 0;
		
	end
	
	always begin: main_process
		#1 TB_A = 2'b11;
		#1 TB_B = 2'b01;
		#2 TB_ALUctl <= 2;
		#3 TB_ALUctl <= 4;
		#3 TB_A = 2'b00;
		#3 TB_B = 2'b10;
		#4 TB_ALUctl <= 5;
		#5 TB_ALUctl <= 7;
		end
endmodule 
	
	
	
