library verilog;
use verilog.vl_types.all;
entity ulaControl is
    port(
        ALUOp           : in     vl_logic;
        FuncCode_tipoR  : in     vl_logic_vector(3 downto 0);
        FuncCode        : in     vl_logic_vector(1 downto 0);
        ALUCtl          : out    vl_logic_vector(3 downto 0)
    );
end ulaControl;
