entity registre is 
port (clk,D:in bit;
B:out bit);
end registre ;
architecture struct of registre is 
signal z1,z2,z3,z4 : bit;
component basculeD
port(clk,D:in bit;
Q:out bit);
end component ;
begin 
DFF0:basculeD port map (clk,D,z1);
DFF1:basculeD port map (clk,z1,z2);
DFF2:basculeD port map (clk,z2,z3);
DFF3:basculeD port map (clk,z3,z4);
B<=z4;
end struct;
