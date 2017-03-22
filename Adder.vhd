
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
entity Adder is
    Port ( Op1 : in  STD_LOGIC_VECTOR (31 downto 0);
           Op2 : in  STD_LOGIC_VECTOR (31 downto 0);
           Result : out  STD_LOGIC_VECTOR (31 downto 0));
end Adder;

architecture Behavioral of Adder is

begin
Result <= std_logic_vector(unsigned(Op1) + unsigned(Op2));

end Behavioral;

