LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY segmentostestbech IS
END segmentostestbech;
 
ARCHITECTURE behavior OF segmentostestbech IS 
 
    
 
    COMPONENT sietesegmentos
    PORT(
         a : OUT  std_logic;
         b : OUT  std_logic;
         c : OUT  std_logic;
         d : OUT  std_logic;
         e : OUT  std_logic;
         f : OUT  std_logic;
         g : OUT  std_logic;
         a1 : IN  std_logic;
         a2 : IN  std_logic;
         a3 : IN  std_logic;
         a4 : IN  std_logic
        );
    END COMPONENT;
	 
    signal vector1 : std_logic_vector (6 downto 0); -- senales para desplegar los numeros en vectores y no letra por letra 
    signal vector2 : std_logic_vector (3 downto 0);

  
 
 
BEGIN

   uut: sietesegmentos PORT MAP (
          a => vector1(6),
          b => vector1(5),
          c => vector1(4),
          d => vector1(3),
          e => vector1(2),
          f => vector1(1),
          g => vector1(0),
          a4 => vector2(3),
          a3 => vector2(2),
          a2=> vector2(1),
          a1 => vector2(0)
        );

 


   stim_proc: process
   begin		
      
      wait for 100 ns;	
		vector2 <= "UUUU"; 
		wait for 100 ns;
        vector2 <= "0000"; 
		  wait for 100 ns;
        vector2 <= "0001"; 
		  wait for 100 ns;
        vector2 <= "0010"; 
		  wait for 100 ns;
        vector2 <= "0011"; 
		  wait for 100 ns;
        vector2 <= "0100"; 
		  wait for 100 ns;
        vector2 <= "0101"; 
		  wait for 10 ns;
        vector2 <= "0110"; 
		  wait for 100 ns;
        vector2 <= "0111"; 
		  wait for 100 ns;
        vector2 <= "1000"; 
		  wait for 100 ns;
        vector2 <= "1001"; 
		  wait for 100 ns;
        vector2 <= "1010"; 
		  wait for 100 ns;
        vector2 <= "1011"; 
		  wait for 100 ns;
		  
        vector2 <= "1100";
		  wait for 100 ns;
        vector2 <= "1101"; 
		  wait for 100 ns;
        vector2 <= "1110";
		  wait for 100 ns;
        vector2 <= "1111";
		  wait for 100 ns;    

      -- insert stimulus here 

      wait;
   end process;
end architecture;

