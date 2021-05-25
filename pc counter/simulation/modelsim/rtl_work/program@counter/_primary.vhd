library verilog;
use verilog.vl_types.all;
entity programCounter is
    port(
        clk             : in     vl_logic;
        \label\         : in     vl_logic_vector(7 downto 0);
        pc_in           : in     vl_logic;
        pc_out          : out    vl_logic_vector(7 downto 0);
        reset           : in     vl_logic
    );
end programCounter;
