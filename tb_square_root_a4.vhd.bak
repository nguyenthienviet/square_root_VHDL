library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_square_root is
	generic (
		n	: integer := 32
		);
end entity tb_square_root;

architecture a1 of tb_square_root is
		signal	clk		:	std_logic := '0';
		signal	rst		:	std_logic := '0';
		signal	start		:	std_logic := '0';
		signal	X			:	unsigned (2*n-1 downto 0) :=	to_unsigned(5, 2*n);
		signal	Result	:	unsigned (n-1 downto 0);
		signal	finished	:	std_logic;
begin
		UUT: entity work.square_root(a4)
		port map	(	clk		=> clk,
						rst		=> rst,
						start		=> start,
						X			=> X,
						Result	=> Result,
						finished	=> finished
		);
		
		X <= to_unsigned(4, 2*n) after 0 ns, 
				(16 => '1',others => '0') after 75 ns, 
				(32 => '1',others => '0') after 95 ns, 
				(48 => '1',others => '0') after 115 ns,
				(63 => '1',others => '0') after 135 ns;
				
--		X	<= (others => '0'), to_unsigned(9,2*n) after 75 ns;
		clk 	<= not clk after 10 ns;
		rst 	<= '0', '1' after 20 ns;
		start	<=	'0', '1' after 40 ns, '0' after 500 ns;
		
end architecture a1;