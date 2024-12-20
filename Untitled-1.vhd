library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
entity COM4BITS is 
port(CLOCK: in std_logic;
Q:out std_logic_vector(3 downto 0));
end COM4BITS;
architecture DESCRIPTION of COM4BITS is 
signal Q_BUS_INTERNE:std_logic_vector(3 downto 0);
begin process (CLOCK)
begin 
if (CLOCK='1' and CLOCK'event) then 
Q_BUS_INTERNE<= Q_BUS_INTERNE+1;
end if;
end process;
Q<=Q_BUS_INTERNE;
end DESCRIPTION;