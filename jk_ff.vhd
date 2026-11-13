library ieee;
use ieee.std_logic_1164.all;

entity jk_ff is
    port (
        clk : in  std_logic;
        j   : in  std_logic;
        k   : in  std_logic;
        q   : out std_logic
    );
end entity jk_ff;

architecture bhv of jk_ff is
    signal q_i : std_logic := '0';
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if    j = '0' and k = '0' then q_i <= q_i;      -- hold
            elsif j = '0' and k = '1' then q_i <= '0';      -- reset
            elsif j = '1' and k = '0' then q_i <= '1';      -- set
            else                           q_i <= not q_i;  -- toggle
            end if;
        end if;
    end process;
    q <= q_i;
end architecture bhv;