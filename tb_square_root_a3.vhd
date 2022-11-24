library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_square_root is
	generic (
		n	: integer := 32
		);
end entity tb_square_root;

architecture a1 of tb_square_root is
		signal	X			:	unsigned (2*n-1 downto 0) :=	to_unsigned(5, 2*n);
		signal	Result	:	unsigned (n-1 downto 0);
begin
		UUT: entity work.square_root(a3)
		port map	(	
						X			=> X,
						Result	=> Result
		);
		X <= 	to_unsigned(1, 2*n), 
				(2 => '1', others => '0') after 700ns,
				(16 => '1', others => '0') after 1400ns,
				(32 => '1', others => '0') after 2100ns,
				(48 => '1', others => '0') after 2800ns,
				(63 => '1', others => '0') after 3500ns;
end architecture a1;