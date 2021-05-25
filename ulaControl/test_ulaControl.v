module test_ulaControl();
	reg [1:0] TB_ALUOp;
	reg [3:0] TB_FuncCode_tipoR;
	reg [1:0] TB_FuncCode;
	wire [3:0] TB_ALUCtl;
	
	
	
	ulaControl gate(TB_ALUOp,TB_FuncCode_tipoR, TB_FuncCode, TB_ALUCtl);

	initial begin: stop_at
		#20 $stop;
	end
	
	
	
	initial begin: Init
		TB_ALUOp = 0;
		TB_FuncCode_tipoR = 4'b1000;
		TB_FuncCode = 2'b00;
	end
	
	always begin: main_process
		#1 TB_ALUOp <= 10;
		#1 TB_ALUOp <= 1;
		#2 TB_FuncCode <= 4'b1000;
		#2 TB_FuncCode_tipoR <= 4'b1000;
		#3 TB_FuncCode <= 2'b10;
		#4 TB_FuncCode <= 2'b01;
		#5 TB_FuncCode_tipoR <= 4'b1111;
		end
endmodule 
	
	
	
