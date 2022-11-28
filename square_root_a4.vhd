library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity square_root is
	generic (
		n	: integer := 32
		);
	port (
		clk			:	in 	std_logic;
		rst			:	in		std_logic;
		start		:	in		std_logic;
		X			:	in 	unsigned (2*n-1 downto 0);
		Result		:	out	unsigned (n-1 downto 0);
		finished	:	out	std_logic
		);
end entity square_root;

architecture a4 of square_root is
	type		reg_type		is array (n downto 0) of unsigned (2*n-1 downto 0);
	type		reg_type_2	is array (n-1 downto 0) of unsigned (2*n-1 downto 0);
	signal	M		:	reg_type;
	signal	M_out	:	reg_type_2;												-- output M of combinatorial blocks
	signal	V		:	reg_type;
	signal	Z		:	reg_type;
	signal	Z_out	:	reg_type_2;												-- output Z of combinatorial blocks
	signal	Z_tmp	:	reg_type_2;												-- store the intermediate value of Z
	signal	Z_half	:	reg_type_2;												-- Z_half = Z/2 - pre-calculate to reduce the number of the caculation of Z/2
	signal	strt	:	unsigned(n downto 0);								-- shift registers of "start" signal
	signal	comp	:	unsigned(n-1 downto 0);
begin
	-- combinatorial circuits
	loop_V: for j in n downto 1 generate										-- generating the values of V for each iterations
		V(j)	<= (2*j-2 => '1', others => '0');								-- V(j) is set by constant to avoid using extra divisions
	end generate;
	V(0)		<= (others => '0');
	
	generate_code: for i in n-1 downto 0 generate							-- generating concurrent codes for n iterations
		Z_tmp(i)	<=	Z(i+1) + V(i+1);
		Z_half(i)	<=	Z(i+1)/2;
		comp(i) 	<= '1' when M(i+1) >= Z_tmp(i) else '0';
		M_out(i)	<=	M(i+1) - Z_tmp(i) when comp(i)='1' else M(i+1);
		Z_out(i)	<=	Z_half(i) + V(i+1) when comp(i)='1' else Z_half(i);
	end generate;
	
	-- clock-drived process
	process (clk, rst, start)
	begin
		if (rst = '0') then
			strt(n)			<=	'0';
			loop_rst: for i in n-1 downto 0 loop
				M(i)		<= (others => '0');
				Z(i)		<= (others => '0');
				strt(i)		<=	'0';
			end loop;
			Result			<=	(others => '0');
			finished 		<= '0';
			
		elsif (rising_edge(clk)) then
			-- eventually shift "start" signal to "finished" signal
			strt(n)	<=	start;
			loop_strt: for i in n-1 downto 0 loop
				strt(i)	<=	strt(i+1);
			end loop;
			finished	<=	strt(0);
			
			-- main code
			if(strt(n) = '1') then
				M(n)	<=	X;
				Z(n)	<=	(others => '0');
			end if;
			loop_main: for i in n-1 downto 0 loop											-- shift registers of the pipeline chain
				if(strt(i) = '1') then
					M(i)	<=	M_out(i);
					Z(i)	<=	Z_out(i);
				end if;
			end loop;
			
			-- results
			if(strt(0) = '1') then
				Result	<=	Z_out(0)(n-1 downto 0);
			end if;
		end if;
	end process;
end architecture a4;