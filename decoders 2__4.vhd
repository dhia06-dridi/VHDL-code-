library IEEE;
use IEEE.std_logic_1164.all;

entity myentity is
    port (
        e : in std_logic_vector(2 downto 1);
        s : out std_logic_vector(3 downto 0)
    );
end myentity;

architecture struct of myentity is 
begin
    s <= "0001" when (e = "00") else
         "0010" when (e = "01") else 
         "0100" when (e = "10") else
         "1000";
end struct;

