library ieee;
      Use ieee.std_logic_1164.all;
      Use ieee.numeric_std.all;
      Use ieee.std_logic_unsigned.all;
      entity CMP4BIIS IS 
        PORT(
          H:in bit;
          RESET:in bit;
          S: out std_logic_vector(3 downto 0));
        end CMP4BIIS;
        architecture Description of CMP4BIIS is
        signal CMP :std_logic_vector(3 downto 0);
        begin
          process (RESET,H)
            begin 
              if RESET ='1' then 
                CMP<="0000";
              elsif(H='1' and H'event )then
              CMP<=CMP+1;
            end if ;
          end process;
          S<=CMP;
        end Description;