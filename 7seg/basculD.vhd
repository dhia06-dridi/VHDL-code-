entity basculeD is 
port ( clk : in bit;
D: in bit;
Q: out bit);
end basculeD; 
architecture basculeD of basculeD is 
begin
 process(clk) is 
begin 
    if (clk'EVENT) and (clk='1') then 
             Q <= D;
    end if ;
 end process;
end basculeD;
