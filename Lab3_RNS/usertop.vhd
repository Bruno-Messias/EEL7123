library IEEE;
use IEEE.std_logic_1164.all;

entity usertop is port(
	CLOCK_50:in std_logic;
	CLK_500Hz:in std_logic;
	RKEY:in std_logic_vector(3 downto 0);
	KEY:in std_logic_vector(3 downto 0);
	RSW:in std_logic_vector(17 downto 0);
	SW:in std_logic_vector(17 downto 0);
	LEDR:out std_logic_vector(17 downto 0);
	HEX0,HEX1,HEX2,HEX3,HEX4,HEX5,HEX6,HEX7: out std_logic_vector(6 downto 0));
end usertop;

architecture compile of usertop is

component Lab3 is 
port( SW	: in STD_LOGIC_VECTOR(15 downto 0);
		C	: in std_LOGIC_VECTOR(1 downto 0); 
		LEDR : out STD_LOGIC_VECTOR(15 downto 0));
end component;

begin

	TOP: Lab3 port map(SW(15 downto 0),Sw(17 downto 16),	LEDR(15 downto 0));

end architecture;	