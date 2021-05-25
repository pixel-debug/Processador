library verilog;
use verilog.vl_types.all;
entity registradores is
    port(
        Reg1            : in     vl_logic_vector(2 downto 0);
        Reg2            : in     vl_logic_vector(2 downto 0);
        regDestino      : in     vl_logic_vector(2 downto 0);
        dadosEscritos   : in     vl_logic_vector(7 downto 0);
        Escrita         : in     vl_logic;
        Dados1          : out    vl_logic_vector(7 downto 0);
        Dados2          : out    vl_logic_vector(7 downto 0);
        clock           : in     vl_logic;
        reset           : in     vl_logic
    );
end registradores;
