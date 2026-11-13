library ieee;
use ieee.std_logic_1164.all;

entity d_ff is
    port (
        clk : in  std_logic;
        d   : in  std_logic;
        q   : out std_logic
    );
end entity d_ff;

architecture bhv of d_ff is
    signal q_i : std_logic := '0';
begin
    process(clk)
    begin
        if rising_edge(clk) then
            q_i <= d;
        end if;
    end process;
    q <= q_i;
end architecture bhv;
