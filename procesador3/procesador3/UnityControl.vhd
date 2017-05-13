----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:54:44 11/05/2016 
-- Design Name: 
-- Module Name:    UnityControl - Behavioral 
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

entity UnityControl is
    Port ( OP : in  STD_LOGIC_VECTOR (1 downto 0);
           OP3 : in  STD_LOGIC_VECTOR (5 downto 0);
           ICC : in  STD_LOGIC_VECTOR (3 downto 0);
           Cond : in  STD_LOGIC_VECTOR (3 downto 0);
           EDM : out  STD_LOGIC;
           Resource : out  STD_LOGIC_VECTOR (1 downto 0);
           WEMemory : out  STD_LOGIC;
           WERegister : out  STD_LOGIC;
           Aluop : out  STD_LOGIC_VECTOR (5 downto 0);
           RFDest : out  STD_LOGIC;
           PCsource : out  STD_LOGIC_VECTOR (1 downto 0));
end UnityControl;

architecture Behavioral of UnityControl is
begin
	process(OP, OP3, ICC, Cond)
	begin
		case OP is
			when "00" => --BRANCH
				EDM <= '0';
				Resource <= "11";
				WEMemory <= '0';
				WERegister <= '0';
				Aluop <= "000000";
				RFDest <= '0';
				case Cond is
					when "1000" => -- BA
						PCsource <= "01";
					when "0000" => --BN
						PCsource <= "10";					
					when "1001" => --BNE
						if(ICC(2) = '0') then
							PCsource <= "01";
						else
							PCsource <= "10";
						end if;
					when "0001" => --BE
						if(ICC(2) = '1') then
							PCsource <= "01";
						else
							PCsource <= "10";
						end if;
					when "1010" => --BG
						if((ICC(2) or (ICC(3) xor ICC(1))) = '0') then
							PCsource <= "01";
						else
							PCsource <= "10";
						end if;
					when "0010" => --BLE
						if((ICC(2) or (ICC(3) xor ICC(1))) = '1') then
							PCsource <= "01";
						else
							PCsource <= "10";
						end if;
					when "1011" => --BGE
						if((ICC(3) xor ICC(1)) = '0') then
							PCsource <= "01";
						else
							PCsource <= "10";
						end if;
					when "0011" => --BL
						if((ICC(3) xor ICC(1)) = '1') then
							PCsource <= "01";
						else
							PCsource <= "10";
						end if;
					when "1100" => --BGU
						if(ICC(0) = '0' and ICC(2) = '0') then
							PCsource <= "01";
						else
							PCsource <= "10";
						end if;
					when "0100" => --BLEU
						if(ICC(0) = '1' and ICC(2) = '1') then
							PCsource <= "01";
						else
							PCsource <= "10";
						end if;
					when "1101" => --BCC
						if(ICC(0) = '0') then
							PCsource <= "01";
						else
							PCsource <= "10";
						end if;
					when "0101" => --BCS
						if(ICC(0) = '1') then
							PCsource <= "01";
						else
							PCsource <= "10";
						end if;
					when "1110" => --BPOS
						if(ICC(3) = '0') then
							PCsource <= "01";
						else
							PCsource <= "10";
						end if;
					when "0110" => --BNEG
						if(ICC(3) = '1') then
							PCsource <= "01";
						else
							PCsource <= "10";
						end if;
					when "1111" => --BVC
						if(ICC(1) = '0') then
							PCsource <= "01";
						else
							PCsource <= "10";
						end if;
					when "0111" => --BVS
						if(ICC(1) = '1') then
							PCsource <= "01";
						else
							PCsource <= "10";
						end if;
					when others => PCsource <= "10";
				end case;
			when "01" => --CALL
				EDM <= '0';
				Resource <= "10";
				WEMemory <= '0';
				WERegister <= '1';
				Aluop <= "000000";
				RFDest <= '1';
				PCsource <= "00";
			when "10" => --ARIMETICOLOGICAS Y JUMP AND LINK
				EDM <= '0';
				Resource <= "01";
				WEMemory <= '0';
				WERegister <= '1';
				RFDest <= '0';
				PCsource <= "10";
				case OP3 is
					when "000000" => Aluop <= "000000"; --ADD
					when "010000" => Aluop <= "000001"; --ADDcc
					when "001000" => Aluop <= "000010"; --ADDX
					when "011000" => Aluop <= "000011"; --ADDXcc
					when "000100" => Aluop <= "000100"; --SUB
					when "010100" => Aluop <= "000101"; --SUBcc
					when "001100" => Aluop <= "000110"; --SUBX
					when "011100" => Aluop <= "000111"; --SUBXcc
					when "000001" => Aluop <= "001000"; --AND
					when "010001" => Aluop <= "001001"; --ANDcc
					when "000101" => Aluop <= "001010"; --ANDN
					when "010101" => Aluop <= "001011"; --ANDNcc
					when "000010" => Aluop <= "001100"; --OR
					when "010010" => Aluop <= "001101"; --ORcc
					when "000110" => Aluop <= "001110"; --ORN
					when "010110" => Aluop <= "001111"; --ORNcc
					when "000011" => Aluop <= "010000"; --XOR
					when "010011" => Aluop <= "010001"; --XORcc
					when "000111" => Aluop <= "010010"; --XNOR
					when "010111" => Aluop <= "010011"; --XNORcc
					when "100101" => Aluop <= "010100"; --SLL
					when "100110" => Aluop <= "010101"; --SRL
					when "111100" => Aluop <= "000000"; --SAVE
					when "111101" => Aluop <= "000000"; --RESTORE
					when "111000" => Aluop <= "000000"; --JUMP AND LINK
										  PCsource <= "11";					
					when others => Aluop <= "000000";
				end case;
			when "11" => --LOAD Y STORE
				EDM <= '1';
				Resource <= "00";
				WERegister <= '0';
				Aluop <= "000000";
				RFDest <= '0';
				PCsource <= "10";
				case OP3 is
					when "000000" => WEMemory <= '1'; --LOAD
					when "000100" => WEMemory <= '0'; --STORE
					when others => WEMemory <= '0';
				end case;
			when others => null;
		end case;
	end process;
end Behavioral;

