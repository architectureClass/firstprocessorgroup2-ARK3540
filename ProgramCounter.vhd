
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ProgramCounter is
    Port ( DIn : in  STD_LOGIC_VECTOR (31 downto 0);
           Rst : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           DOut : out  STD_LOGIC_VECTOR (31 downto 0));
end ProgramCounter;

architecture Behavioral of ProgramCounter is

begin
	process(CLK)
	begin
		if(rising_edge(CLK)) then
			if(Rst = '0') then
				DOut <= DIn;
			else 
				DOut <= "00000000000000000000000000000000" ;
			end if;
		end if;
	end process;
end Behavioral;

