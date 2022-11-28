library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity square_root is
	generic (
		n	: integer := 32
		);
	port (
		X		:	in 	unsigned (2*n-1 downto 0);
		Result	:	out	unsigned (n-1 downto 0)
		);
end entity square_root;

architecture a3 of square_root is
	type		reg_type	is array (0 to n) of unsigned (2*n-1 downto 0);
	type		reg_type2	is array (0 to n-1) of unsigned (2*n-1 downto 0);
	signal	M			:	reg_type;
	signal	V			:	reg_type;
	signal	Z			:	reg_type;
	signal	Z_tmp		:	reg_type2;												-- store the intermediate value of Z
	signal	Z_half		:	reg_type2;												-- Z_half = Z/2 - pre-calculate to reduce the number of the caculation of Z/2
	signal 	comp		:	unsigned(n-1 downto 0);
begin
	M(n)			<=	X;																	-- load X into N
	Z(n)			<=	(others => '0');												-- initial value of Z is 0

	generate_V: for j in n downto 1 generate									-- generating the values of V for each iterations
		V(j)	<= (2*j-2 => '1', others => '0');								-- V(j) is set by constant to avoid using extra divisions
	end generate;
	V(0)	<= (others => '0');
	
	generate_code: for i in n-1 downto 0 generate							-- generating concurrent codes for n iterations
		Z_tmp(i)	<=	Z(i+1) + V(i+1);
		Z_half(i)	<=	Z(i+1)/2;
		comp(i) 	<= '1' when M(i+1) >= Z_tmp(i) else '0';
		M(i)		<=	M(i+1) - Z_tmp(i) when comp(i)='1' else M(i+1);
		Z(i)		<=	Z_half(i) + V(i+1) when comp(i)='1' else Z_half(i);
	end generate;
	
	Result <= Z(0)(n-1 downto 0);
end architecture a3;