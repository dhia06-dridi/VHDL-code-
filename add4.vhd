library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Full_Adder_4bit is
    Port (
        A0,A1,A2,A3,B0,B1,B2,B3,C0 : in  bit;
        
        Sum0,Sum1,Sum2,Sum3,Cout: out bit
    );
end Full_Adder_4bit;

architecture struct of Full_Adder_4bit is
signal c1, c2, c3 : bit;
    component add_complet
        Port (
            A, B, Cin : in bit;
            S, Cout : out bit
        );
    end component;

    

begin

    FA0: add_complet port map (A0, B0, C0, Sum0, c1);
    FA1: add_complet port map (A1, B1, c1, Sum1, c2);
    FA2: add_complet port map (A2, B2, c2, Sum2, c3);
    FA3: add_complet port map (A3, B3, c3, Sum3, Cout);

end struct;
