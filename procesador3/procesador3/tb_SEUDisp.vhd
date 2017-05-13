--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:43:57 10/28/2016
-- Design Name:   
-- Module Name:   D:/Arquitectura/Componentes/SEU22/tb_SEUDisp.vhd
-- Project Name:  SEU22
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SEUDisp
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_SEUDisp IS
END tb_SEUDisp;
 
ARCHITECTURE behavior OF tb_SEUDisp IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SEUDisp
    PORT(
         Disp22 : IN  std_logic_vector(21 downto 0);
         Result : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Disp22 : std_logic_vector(21 downto 0) := (others => '0');

 	--Outputs
   signal Result : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SEUDisp PORT MAP (
          Disp22 => Disp22,
          Result => Result
        );

   -- Stimulus process
   stim_proc: process
   begin		
		Disp22 <= "0000000000000000000010";
		wait for 20 ns;
		Disp22 <= "1000000000000000000000";
      wait;
   end process;

END;
