library verilog;
use verilog.vl_types.all;
entity memoria_dados is
    port(
        \label\         : in     vl_logic_vector(7 downto 0);
        dado            : in     vl_logic_vector(7 downto 0);
        dadoEscrito     : out    vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        LerMemo         : in     vl_logic;
        EscrMemo        : in     vl_logic
    );
end memoria_dados;
