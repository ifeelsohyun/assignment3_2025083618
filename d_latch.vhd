library ieee;
use ieee.std_logic_1164.all;

entity d_latch is
    port (
        en : in  std_logic;
        d  : in  std_logic;
        q  : out std_logic;
        qn : out std_logic
    );
end entity d_latch;

architecture bhv of d_latch is
    signal q_i : std_logic := '0';
begin
    process(en, d)
    begin
        if en = '1' then
            q_i <= d;
        end if;                          -- en=0: hold
    end process;
    q  <= q_i;
    qn <= not q_i;
end architecture bhv;