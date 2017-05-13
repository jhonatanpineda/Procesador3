LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB_DataMemory IS
END TB_DataMemory;
 
ARCHITECTURE behavior OF TB_DataMemory IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DataMemory
    PORT(
         Clk : IN  std_logic;
         Rst : IN  std_logic;
         cRD : IN  std_logic_vector(31 downto 0);
         SalidaAlu : IN  std_logic_vector(31 downto 0);
         WRen : IN  std_logic;
         RDen : IN  std_logic;
         Data : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Rst : std_logic := '0';
   signal cRD : std_logic_vector(31 downto 0) := (others => '0');
   signal SalidaAlu : std_logic_vector(31 downto 0) := (others => '0');
   signal WRen : std_logic := '0';
   signal RDen : std_logic := '0';

 	--Outputs
   signal Data : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DataMemory PORT MAP (
          Clk => Clk,
          Rst => Rst,
          cRD => cRD,
          SalidaAlu => SalidaAlu,
          WRen => WRen,
          RDen => RDen,
          Data => Data
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for Clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
