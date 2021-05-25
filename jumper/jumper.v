module jumper(label, label_extendido);

    input  [7:0] label;
    output reg [7:0] label_extendido;
    
    always @ (label)
    begin
	 
	 
    label_extendido <= label << 2;
    end

endmodule