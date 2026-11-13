library ieee;
use ieee.std_logic_1164.all;

entity rs_latch is
    port (
        r, s : in  std_logic;
        q    : out std_logic;
        qn   : out std_logic
    );
end entity rs_latch;

architecture bhv of rs_latch is
    signal q_i  : std_logic := '0';
    signal qn_i : std_logic := '1';
begin
    process(s, r)
    begin
        if s = '1' and r = '1' then      -- forbidden: both outputs 0
            q_i <= '0'; qn_i <= '0';
        elsif s = '1' then               -- set
            q_i <= '1'; qn_i <= '0';
        elsif r = '1' then               -- reset
            q_i <= '0'; qn_i <= '1';
        end if;                          -- s=0, r=0: hold
    end process;
    q  <= q_i;
    qn <= qn_i;
end architecture bhv;