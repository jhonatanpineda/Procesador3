----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:36:33 10/28/2016 
-- Design Name: 
-- Module Name:    SEUDisp - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SEUDisp is
    Port ( Disp22 : in  STD_LOGIC_VECTOR (21 downto 0);
           Result : out  STD_LOGIC_VECTOR (31 downto 0));
end SEUDisp;

architecture Behavioral of SEUDisp is

begin
	process(Disp22) 
	begin
		for I in 22 to 31 loop
			Result(I) <= '0' or Disp22(21);
		end loop;
		Result(21 downto 0) <= Disp22(21 downto 0);
	end process;
end Behavioral;

