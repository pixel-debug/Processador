library verilog;
use verilog.vl_types.all;
entity mux21 is
    port(
        a               : in     vl_logic_vector(7 downto 0);
        b               : in     vl_logic_vector(7 downto 0);
        \out\           : out    vl_logic_vector(7 downto 0);
        sinal           : in     vl_logic
    );
end mux21;
