library IEEE;
use IEEE.std_logic_1164.all;
entity MUX is
 port (E1,E2,E3,E4 : in std_logic;
SEL:in std_logic_vector(1 downto 0);
s: out std_logic);
end MUX;
architecture struct of MUX is begin
process(E1,E2,E3,E4,SEL)begin
if SEL = "00" then s<= E1;
elsif SEL = "01" then s<= E2;
elsif SEL = "10" then s<= E3;
elsif SEL = "11" then s<= E4;
end if;
end process;
end struct ;
