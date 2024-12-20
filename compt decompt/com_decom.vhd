library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity CompteurDecompteur is
    port (
        p : in std_logic_vector(3 downto 0); -- Entr�e de donn�es pour le chargement
        load : in std_logic; -- Entr�e de chargement
        Clk : in std_logic; -- Horloge
        clear : in std_logic; -- Activation du remise � z�ro
        Count_ena: in std_logic;
        Direction : in std_logic; -- Direction du comptage (0 pour d�comptage, 1 pour comptage)
        Q : out std_logic_vector(3 downto 0) -- Sortie du compteur
       
    );
end entity;

architecture behavior of CompteurDecompteur is 
    signal internal_counter : unsigned(3 downto 0); -- Utiliser le type unsigned pour la manipulation des valeurs
begin 
    process (Clk) 
    begin 
        if rising_edge(Clk) then 
            if clear = '1' then 
                internal_counter <= (others => '0'); -- Remise � z�ro du compteur 
            elsif load = '1' then 
                internal_counter <= unsigned(p); -- Chargement de la valeur P dans le compteur 
            elsif Count_ena ='1' then 
            if Direction = '0' then
                internal_counter <= internal_counter - 1; -- D�comptage  
            else  
                internal_counter <= internal_counter + 1; -- Comptage  
            end if;
        end if;
       end if;
    end process;

    Q <= std_logic_vector(internal_counter); -- Conversion de unsigned � std_logic_vector pour la sortie du compteur
end behavior;

