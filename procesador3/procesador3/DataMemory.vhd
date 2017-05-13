library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DataMemory is
    Port ( Clk : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
           cRD : in  STD_LOGIC_VECTOR (31 downto 0);
           SalidaAlu : in  STD_LOGIC_VECTOR (31 downto 0);
           WRen : in  STD_LOGIC;
           RDen : in  STD_LOGIC;
           Data : out  STD_LOGIC_VECTOR (31 downto 0));
end DataMemory;

architecture Behavioral of DataMemory is

type ram is array(63 downto 0) of std_logic_vector(31 downto 0);
signal memoria : ram := (others => "00000000000000000000000000000000");

begin
process(Clk, Rst, cRd, SalidaAlu, WRen, RDen)
	begin
		if(rising_edge(Clk))then
			if(RDen = '1')then
				if(Rst = '1')then
					Data <= (others => '0');
					memoria <= (others => "00000000000000000000000000000000");
				else
					if(WRen = '1')then
						memoria(conv_integer(SalidaAlu(5 downto 0))) <= cRD;
					else
						Data <= memoria(conv_integer(SalidaAlu(5 downto 0)));
					end if;
				end if;
			end if;
		end if;
	end process;
end Behavioral;

