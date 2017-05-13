----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:31:42 11/05/2016 
-- Design Name: 
-- Module Name:    RegisterFile - Behavioral 
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
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RegisterFile is
    Port ( nRs1 : in  STD_LOGIC_VECTOR (5 downto 0);
           nRs2 : in  STD_LOGIC_VECTOR (5 downto 0);
           nRd : in  STD_LOGIC_VECTOR (5 downto 0);
           Data : in  STD_LOGIC_VECTOR (31 downto 0);
           WE : in  STD_LOGIC;
			  Rst : in  STD_LOGIC;
           CRS1 : out  STD_LOGIC_VECTOR (31 downto 0);
           CRS2 : out  STD_LOGIC_VECTOR (31 downto 0);
           CRD : out  STD_LOGIC_VECTOR (31 downto 0));
end RegisterFile;

architecture Behavioral of RegisterFile is

type ram is array(39 downto 0) of std_logic_vector(31 downto 0);
signal registros : ram := (others => "00000000000000000000000000000000");

begin

process(nRs1, nRs2, nRd, Data, WE, Rst)
	begin
		if(Rst = '1') then
			registros <= (others => "00000000000000000000000000000000");
			CRS1 <= (others => '0');
			CRS2 <= (others => '0');
			CRD <= (others => '0');
		else
			if(nrd /= "00000" and WE = '1') then
				registros(conv_integer(nrd)) <= Data;
			end if;
			CRS1 <= registros(conv_integer(nrs1));
			CRS2 <= registros(conv_integer(nrs2)); 
			CRD <= registros(conv_integer(nRd));
		end if;
	end process;

end Behavioral;

