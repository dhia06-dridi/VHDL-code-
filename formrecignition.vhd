library ieee;
use ieee.std_logic_1164.all;

entity form_rocon is
    port (
        reset, clk, load : in std_logic;
        pattern, dataIN : in std_logic_vector(7 downto 0);
        found : out std_logic
    );
end entity form_rocon;

architecture behavior of form_rocon is
    signal internal_pattern, internal_data : std_logic_vector(7 downto 0) := (others => '0');
begin
    process (clk, reset)
    begin
        if reset = '1' then
            internal_pattern <= (others => '0');
            internal_data <= (others => '0');
        elsif rising_edge(clk) then
            internal_data <= dataIN;
        end if;
    end process;
    
    found <= '1' when internal_data = pattern else '0';
    
end architecture behavior;

