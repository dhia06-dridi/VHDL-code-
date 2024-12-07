LIBRARY IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
entity bascuke is
port(
d,clk,set,reset:in std_logic;
s:out std_logic);
end bascuke;
architecture description of bascuke is
begin 
pro_bascuke :process (clk ,reset ,set)
begin 
if(clk'event and clk='1') then 
if (reset='1') then
s<='0';
elsif (set ='1') then
s<='1';
else 
s<=d;
end if;
end if;
end process pro_bascuke;
end description;