library verilog;
use verilog.vl_types.all;
entity memoria is
    port(
        \label\         : in     vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        instrucao       : out    vl_logic_vector(7 downto 0);
        reset           : in     vl_logic
    );
end memoria;
