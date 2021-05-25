library verilog;
use verilog.vl_types.all;
entity dados is
    port(
        \label\         : in     vl_logic_vector(7 downto 0);
        escrever        : out    vl_logic_vector(7 downto 0);
        dadoEscrito     : in     vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        LerMemo         : in     vl_logic;
        EscrMemo        : in     vl_logic
    );
end dados;
