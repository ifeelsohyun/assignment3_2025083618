library ieee;
use ieee.std_logic_1164.all;

entity d_ff_sc is
    port (
        clk : in  std_logic;
        d   : in  std_logic;
        clr : in  std_logic;   -- asynchronous clear (highest priority)
        set : in  std_logic;   -- asynchronous set
        q   : out std_logic
    );
end entity d_ff_sc;

architecture bhv of d_ff_sc is
begin
    process(clk, clr, set)
    begin
        if clr = '1' then
            q <= '0';
        elsif set = '1' then
            q <= '1';
        elsif rising_edge(clk) then
            q <= d;
        end if;
    end process;
end architecture bhv;