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
		signal	X			:	unsigned (2*n-1 downto 0) :=	to_unsigned(4, 2*n);
		signal	Result	:	unsigned (n-1 downto 0);
		signal	finished	:	std_logic;
		type	rom_type	is array (0 to 4) of unsigned (2*n-1 downto 0);
		signal	rom		:	rom_type;
		signal	cnt		:	integer range 0 to 4 := 0;
begin
		UUT: entity work.square_root(a5)
		port map	(	clk		=> clk,
						rst		=> rst,
						start		=> start,
						X			=> X,
						Result	=> Result,
						finished	=> finished
		);
		
		rom(0)	<=	(16 => '1', others => '0');
		rom(1)	<=	(32 => '1', others => '0');
		rom(2)	<=	(48 => '1', others => '0');
		rom(3)	<=	(63 => '1', others => '0');
		
		clk 	<= not clk after 10 ns;
		rst 	<= '0', '1' after 20 ns;
		
		process (clk)
		begin
			if (rising_edge(clk)) then
				if (rst = '1') then
					start	<= '1';
				end if;
				if (finished = '1' and start = '1') then
					start <= '0';
					X <= rom(cnt);
					if (cnt < 3) then cnt <= cnt+1; end if;
				end if;
			end if;
		end process;
		
end architecture a1;