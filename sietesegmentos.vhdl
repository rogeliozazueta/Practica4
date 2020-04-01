
library IEEE;
use IEEE.std_logic_1164.all;

entity sietesegmentos is
    port (
        a, b, c, d, e, f, g : out std_logic;
        a1, a2, a3, a4 : in std_logic
    );
end sietesegmentos;

architecture behave of sietesegmentos is
begin
 process (a4, a3, a2, a1)
 variable temp1 : std_logic_vector (6 downto 0);
 variable temp2 : std_logic_vector (3 downto 0);
    begin
temp2(3) := a4;temp2(2) := a3;temp2(1) := a2;temp2(0) := a1;



if temp2 = "0000" then temp1 := "1111110"; 
elsif temp2 = "0001" then temp1 := "0110000"; 
elsif temp2 = "0010" then temp1 := "1101101"; 
elsif temp2 = "0011" then temp1 := "1111001"; 
elsif temp2 = "0100" then temp1 := "0110011";
elsif temp2 = "0101" then temp1 := "1011011"; 
elsif temp2 = "0110" then temp1 := "1011111"; 
elsif temp2 = "0111" then temp1 := "1110000"; 
elsif temp2 = "1000" then temp1 := "1111111"; 
elsif temp2 = "1001" then temp1 := "1110011"; 
else  temp2 := "0000";
end if;

a <= temp1(6);
 b <= temp1(5);
 c <= temp1(4);
 d <= temp1(3);
 e <= temp1(2);
 f <= temp1(1);
 g <= temp1(0);

    end process;

end behave;