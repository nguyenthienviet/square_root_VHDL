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

architecture a1 of square_root is
	type		statetype	is	(idle, compute, done);
	signal	state	:	statetype;
begin
	process (clk, rst, start)
		variable	current_guess	:	unsigned (2*n-1 downto 0); 			-- the recent value of root that we guess
		variable	next_guess		:	unsigned (2*n-1 downto 0); 			-- the updated value of root which is closer to the final result
	begin
		if (rst = '0') then
			state				<=	idle;
			current_guess	:= (0 => '1', others => '0');
			next_guess		:= (0 => '1', others => '0');
			finished 		<= '0';
			Result			<= (others => '0');
		elsif (rising_edge(clk)) then
			case	state	is
				when idle =>
					if (start = '1') then													-- if start is 1, initialize variables and begin to compute
						state <= compute;
						-- initialization
						current_guess	:= (n-1 => '1', others => '0');				-- initial guess = 2^(n-1)
						next_guess		:= (0 => '1', others => '0');
						finished			<= '0';
					else
						state <= idle;
					end if;
					
				when compute =>
					if (start = '1') then
						next_guess := (current_guess + X/current_guess)/2; 		-- caculating the closer square root
						if (next_guess = current_guess) then 							-- if two consecutive guess values are the same, stop to get the solution
							state		<=	done;
							Result 	<= next_guess(n-1 downto 0);
							finished	<= '1';
						else 
							state				<= compute;
							current_guess	:= next_guess;
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
end architecture a1;