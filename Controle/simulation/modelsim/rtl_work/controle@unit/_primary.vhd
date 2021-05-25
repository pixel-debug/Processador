library verilog;
use verilog.vl_types.all;
entity controleUnit is
    port(
        instru          : in     vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        escrita         : out    vl_logic;
        escritaPC       : out    vl_logic;
        ulaFonte        : out    vl_logic;
        ulaOP           : out    vl_logic;
        pula            : out    vl_logic;
        regFonte        : out    vl_logic;
        comparador      : out    vl_logic;
        lerMemo         : out    vl_logic;
        escreveMemo     : out    vl_logic
    );
end controleUnit;
