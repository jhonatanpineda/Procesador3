----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:32:39 11/08/2016 
-- Design Name: 
-- Module Name:    MUXC - Behavioral 
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

entity MUXC is
    Port ( A : in  STD_LOGIC_VECTOR (5 downto 0);
           B : in  STD_LOGIC_VECTOR (5 downto 0);
           Sc : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (5 downto 0));
end MUXC;

architecture Behavioral of MUXC is

begin

S <= A when Sc = '0' else B;

end Behavioral;

