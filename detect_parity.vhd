library ieee ; 
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;
entity parity is 
port(A:in std_logic_vector(7 downto 0);
p: out std_logic);
end parity;
architecture archi of parity is 
begin 
process(A)
variable k:std_logic;
begin 
k:='0';
for i in 0 to 7 loop 
k:=k xor A(i);
end loop ;
p<=k;
end process ;
end ;