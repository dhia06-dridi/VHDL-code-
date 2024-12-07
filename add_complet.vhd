library ieee;
use ieee.std_logic_1164.all;

entity FULLADD is 
    port ( 
        A, B, Cin : in bit; 
        Cout, S   : out bit
    );
end FULLADD;

architecture struct of FULLADD is 

    signal I1, I2, I3 : bit;

    component demi_add is
        port (
            A, B : in bit;
            S, C : out bit
        );
    end component;

begin 

    HA1: demi_add port map (A, B, I1, I2);
    HA2: demi_add port map (I1, Cin, S, I3);

    Cout <= I3 or I2;

end struct;

