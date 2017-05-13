--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:30:32 11/09/2016
-- Design Name:   
-- Module Name:   C:/Users/Vera96/Desktop/Procesador/Componentes/UnityControlP/tb_UnityControl.vhd
-- Project Name:  UnityControlP
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: UnityControl
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
 
ENTITY tb_UnityControl IS
END tb_UnityControl;
 
ARCHITECTURE behavior OF tb_UnityControl IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UnityControl
    PORT(
         OP : IN  std_logic_vector(1 downto 0);
         OP3 : IN  std_logic_vector(5 downto 0);
         ICC : IN  std_logic_vector(3 downto 0);
         Cond : IN  std_logic_vector(3 downto 0);
         EDM : OUT  std_logic;
         Resource : OUT  std_logic_vector(1 downto 0);
         WEMemory : OUT  std_logic;
         WERegister : OUT  std_logic;
         Aluop : OUT  std_logic_vector(5 downto 0);
         RFDest : OUT  std_logic;
         PCsource : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal OP : std_logic_vector(1 downto 0) := (others => '0');
   signal OP3 : std_logic_vector(5 downto 0) := (others => '0');
   signal ICC : std_logic_vector(3 downto 0) := (others => '0');
   signal Cond : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal EDM : std_logic;
   signal Resource : std_logic_vector(1 downto 0);
   signal WEMemory : std_logic;
   signal WERegister : std_logic;
   signal Aluop : std_logic_vector(5 downto 0);
   signal RFDest : std_logic;
   signal PCsource : std_logic_vector(1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UnityControl PORT MAP (
          OP => OP,
          OP3 => OP3,
          ICC => ICC,
          Cond => Cond,
          EDM => EDM,
          Resource => Resource,
          WEMemory => WEMemory,
          WERegister => WERegister,
          Aluop => Aluop,
          RFDest => RFDest,
          PCsource => PCsource
        );

   -- Stimulus process
   stim_proc: process
   begin		
		OP <= "10";
		OP3 <= "000001";
		icc <= "0000";
		Cond <= "1000";
		wait for 20 ns;
		
		OP3 <= "111000";
		wait for 20 ns;
		
		OP <= "00";
		wait for 20 ns;
		
		OP <= "01";
		wait for 20 ns;
		
		OP <= "11";
		OP3 <= "000000";
		wait for 20 ns;
		
		OP <= "10";
		OP3 <= "000000";
		wait;
   end process;

END;
