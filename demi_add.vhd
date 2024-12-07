library ieee ;
use ieee.std_logic_1164.all;
entity HALFADD is 
port (A,B : in bit ;
S,C : out bit);
end HALFADD; 
architecture struct of HALFADD is 
begin
S <= A xor B ;
C <= A and B ;
end struct ;
