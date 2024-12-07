library IEEE;
use IEEE.std_logic_1164.all;

entity x_or is
    port (
        A,B : in std_logic;
        Y : out std_logic
    );
end x_or;

architecture func of x_or is 
begin
    Y<=A XOR B;
end func;
