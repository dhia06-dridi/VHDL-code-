library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BCD_to_7seg is
    Port (
        BCD : in  STD_LOGIC_VECTOR(3 downto 0);
        SEG : out STD_LOGIC_VECTOR(6 downto 0)
    );
end BCD_to_7seg;

architecture Behavioral of BCD_to_7seg is 
begin
process(BCD) begin
 case BCD is
       when"0000" =>SEG <="0111111";
       when"0001" =>SEG <="0000110";
       when"0010" =>SEG <="1011011";
       when"0011" =>SEG <="1001111";
       when"0100" =>SEG <="1100110";
       when"0101" =>SEG <="1101101";
       when"0110" =>SEG <="1111101";
       when"0111" =>SEG <="0000111";
       when"1000" =>SEG <="1111111";
       when"1001" =>SEG <="1101111";
       when others => NULL;

end case;
end process;
end Behavioral;

