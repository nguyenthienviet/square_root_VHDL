library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity square_root is
	generic (
		n	: integer := 32
		);
	port (
		clk		:	in 	std_logic;
		rst		:	in		std_logic;
		start		:	in		std_logic;
		X			:	in 	unsigned (2*n-1 downto 0);
		Result	:	out	unsigned (n-1 downto 0);
		finished	:	out	std_logic
		);
end entity square_root;

architecture a2 of square_root is
	type		statetype	is	(idle, compute, done);
	signal	state	:	statetype;
begin
	process (clk, rst, start)
		variable	M		:	unsigned	(2*n-1 downto 0);				-- variable N in Figure.2
		variable	V		:	unsigned	(2*n-2 downto 0);				-- the value of hypothesis test - V in Figure.2
		variable Z		:	unsigned	(2*n-1 downto 0);				-- the current result estimation - Z in Figure.2
		variable	cnt	:	integer range 0 to n;					-- counter
	begin
		if (rst = '0') then
			state				<=	idle;
			M		:= (others => '0');
			V		:= (2*n-2 => '1', others => '0');
			Z		:= (others => '0');
			cnt	:=	0;
			finished 		<= '0';
			Result			<= (others => '0');
		elsif (rising_edge(clk)) then
			case	state	is
				when idle =>
					if (start = '1') then													-- if start is 1, initialize variables and begin to compute
						state <= compute;
						-- initialization
						M		:= X;																-- load X into N
						V		:= (2*n-2 => '1', others => '0');						-- initial value of V is 2^(n-2)
						Z		:= (others => '0');
						cnt	:=	0;
						finished			<= '0';
					else
						state <= idle;
					end if;
					
				when compute =>
					if (start = '1') then
						if (cnt < n) then
							Z := Z + V; 		
							if (M >= Z) then 							
								M := M - Z;
								Z := Z + V;
							else 
								Z := Z - V;
							end if;
							Z := Z/2;
							V := V/4;
							if (cnt = n-1) then												-- end the loop after n cycles
								state 	<= done;
								Result	<=	Z(n-1 downto 0);
								finished	<= '1';
							end if;
							cnt := cnt + 1;
						else
							state <= compute;
						end if;
					else
						state <= compute;
					end if;
					
				when done =>
					if (start = '1') then
						state <= done;
					else
						state 	<=	idle;
						finished <= '0';
					end if;
			end case;
		end if;
	end process;
end architecture a2;