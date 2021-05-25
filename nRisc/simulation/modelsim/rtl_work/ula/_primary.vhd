library verilog;
use verilog.vl_types.all;
entity ula is
    port(
        ALUctl          : in     vl_logic_vector(3 downto 0);
        A               : in     vl_logic_vector(1 downto 0);
        B               : in     vl_logic_vector(1 downto 0);
        ALUOut          : out    vl_logic_vector(8 downto 0);
        Zero            : out    vl_logic
    );
end ula;
