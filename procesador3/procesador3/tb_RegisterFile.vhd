--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:15:21 11/09/2016
-- Design Name:   
-- Module Name:   C:/Users/Vera96/Desktop/Procesador/Componentes/RegisterFileP/tb_RegisterFile.vhd
-- Project Name:  RegisterFileP
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RegisterFile
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
 
ENTITY tb_RegisterFile IS
END tb_RegisterFile;
 
ARCHITECTURE behavior OF tb_RegisterFile IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RegisterFile
    PORT(
         nRs1 : IN  std_logic_vector(5 downto 0);
         nRs2 : IN  std_logic_vector(5 downto 0);
         nRd : IN  std_logic_vector(5 downto 0);
         Data : IN  std_logic_vector(31 downto 0);
         WE : IN  std_logic;
         Rst : IN  std_logic;
         CRS1 : OUT  std_logic_vector(31 downto 0);
         CRS2 : OUT  std_logic_vector(31 downto 0);
         CRD : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal nRs1 : std_logic_vector(5 downto 0) := (others => '0');
   signal nRs2 : std_logic_vector(5 downto 0) := (others => '0');
   signal nRd : std_logic_vector(5 downto 0) := (others => '0');
   signal Data : std_logic_vector(31 downto 0) := (others => '0');
   signal WE : std_logic := '0';
   signal Rst : std_logic := '0';

 	--Outputs
   signal CRS1 : std_logic_vector(31 downto 0);
   signal CRS2 : std_logic_vector(31 downto 0);
   signal CRD : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RegisterFile PORT MAP (
          nRs1 => nRs1,
          nRs2 => nRs2,
          nRd => nRd,
          Data => Data,
          WE => WE,
          Rst => Rst,
          CRS1 => CRS1,
          CRS2 => CRS2,
          CRD => CRD
        ); 

   -- Stimulus process
   stim_proc: process
   begin		
		Rst <= '1';
		WE <= '1';
		nRs1 <= "000000";
		nRs2 <= "000010";
		nRd <= "000001";
		Data <= "00000000000000000000000000000001";
		wait for 20 ns;
		
		Rst <= '0';
		wait for 20 ns;
		
		WE <= '0';
		Data <= "00100000000000000000000000000001";
		nRd <= "000010";
		wait for 20 ns;
		
		WE <= '1';
      wait;
   end process;

END;
