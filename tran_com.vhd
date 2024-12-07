library ieee ; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity tran_com is
port ( clk :  in std_logic ;
s: out std_logic_vector(7 downto 1):="0000000");
end tran_com;
architecture struct of tran_com is 
signal e : std_logic_vector(3 downto 0);
begin
process(clk)
begin 
 if ( clk'event) and (clk='1') then 
e <= std_logic_vector(unsigned(e)+1);
 end if ;
end process ;
with e select 
          s <= "1111110" when "0000",
"0110000" when "0001",
"1101101" when "0010",
"1111001" when "0011",
"0110011" when "0100",
"1011011" when "0101",
"1011111" when "0110",
"1110000" when "0111",
"1111111" when "1000",
"1111011" when "1001",
"0000000" when others ;
end struct ;