library verilog;
use verilog.vl_types.all;
entity jumper is
    port(
        \label\         : in     vl_logic_vector(7 downto 0);
        label_extendido : out    vl_logic_vector(7 downto 0)
    );
end jumper;
