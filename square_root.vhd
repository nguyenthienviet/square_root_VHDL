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

architecture a5 of square_root is
	type	statetype is (S_idle, S_init, S_1, S_2, S_3, S_4, S_5, S_6, S_done);
	signal	state	:	statetype;

	signal	M		:	unsigned	(2*n-1 downto 0);				-- variable N in Figure.2
	-- signal	PM		:	unsigned	(2*n-1 downto 0);
	signal	V		:	unsigned	(2*n-1 downto 0);				-- the value of hypothesis test - V in Figure.2
	signal	PV		:	unsigned	(2*n-1 downto 0);
	signal 	Z		:	unsigned	(2*n-1 downto 0);				-- the current result estimation - Z in Figure.2
	signal	PZ		:	unsigned	(2*n-1 downto 0);
	signal	i		:	integer range 0 to n-1;						-- counter
	
	signal	A		:	unsigned	(2*n-1 downto 0);
	signal	B		:	unsigned	(2*n-1 downto 0);
	signal	S		:	signed	(2*n downto 0);
	signal	init	:	std_logic;
	signal	ldM		:	std_logic;
	signal	ldZ		:	std_logic;
	signal	ldV		:	std_logic;
	signal	ldi		:	std_logic;
	-- signal	selM	:	std_logic;
	signal	selA	:	std_logic_vector (1 downto 0);
	signal	selB	:	std_logic_vector (1 downto 0);
	signal	selZ	:	std_logic;
	signal	a_s		:	std_logic;
	signal	ieq0	:	std_logic;
begin
	------------------------- control unit ----------------------------
	process (clk, rst, start)
	begin
		if (rst = '0') then
			state	<=	S_idle;
		elsif (rising_edge(clk)) then
			case state is
				when S_idle =>
					if (start = '1') then
						state <= S_init;
					else
						state <= S_idle;
					end if;

				when S_init => state <= S_1;
				
				when S_1 => state <= S_2;

				when S_2 =>
					if(S(2*n) = '0') then
						state <= S_3;
					elsif(S(2*n) = '1') then
						state <= S_4;
					end if;
				
				when S_3 => state <= S_5;

				when S_4 => state <= S_6;

				when S_5 => state <= S_6;

				when S_6 =>
					if(ieq0 = '0') then
						state <= S_1;
					elsif(ieq0 = '1') then
						state <= S_done;
					end if;
				
				when S_done =>
					Result 	<= Z(n-1 downto 0);
					if(start = '1') then 
						state <= S_done;
					else
						state <= S_idle;
					end if;
					
				when others => null;
			end case;
		end if;
	end process;

	---------------------------- data path -----------------------------
	-- registers for N, Z, V
	reg_M:  entity work.register_a5(a1)
	generic map (n	=>	n)
	port	map	(clk => clk, ld => ldM, init => init, init_value => X, P => unsigned(S(2*n-1 downto 0)), R => M);
	reg_Z:  entity work.register_a5(a1)
	generic map (n	=>	n)
	port	map	(clk => clk, ld => ldZ, init => init, init_value => (others => '0'), P => PZ, R => Z);
	reg_V:  entity work.register_a5(a1)
	generic map (n	=>	n)
	port	map	(clk => clk, ld => ldV, init => init, init_value => (2*n-2 => '1',others => '0'), P => PV, R => V);
	-- MUXs for those above registers
	-- PM	<= X when selM = '0' else S(2*n-1 downto 0);
	PZ 	<= unsigned(S(2*n-1 downto 0)) when selZ = '0' else '0' & Z(2*n-1 downto 1);
	PV	<= "00" & V(2*n-1 downto 2);

	-- register for the counter 
	process(clk)
	begin
		if(rising_edge(clk)) then
			if(init = '1') then
				i <= n-1;
			elsif(ldi = '1') then
				i <= to_integer(S);
			end if;
		end if;
	end process;
	
	-- adder/subtracter
	S <= resize(signed(A+B), S'length) when a_s = '1' else resize(signed(A)-signed(B), S'length);
	-- MUXs for adder/subtracter
	A <= M when selA = "00" else Z when selA = "01" else to_unsigned(i, A'length);
	B <= Z when selB = "00" else V when selB = "01" else (0 => '1', others => '0');

	-- control signals
	ieq0 	<= '1' 	when i = 0 else '0';

	init 	<= '1' 	when state = S_init else '0';

	ldZ		<= '1' 	when (state = S_1 or state = S_4 or state = S_5 or state = S_6) else '0';
	ldM		<= '1' 	when state = S_3 else '0';
	ldi		<= '1' 	when (state = S_6 and ieq0 = '0') else '0';
	ldV		<= '1' 	when state = S_6 else '0';

	selA	<= "00" when (state = S_2 or state = S_3) else "01" when (state = S_1 or state = S_4 or state = S_5) else "10" when state = S_6 else "11";
	selB	<= "00" when (state = S_2 or state = S_3) else "01" when (state = S_1 or state = S_4 or state = S_5) else "10" when state = S_6 else "11";
	selZ	<= '0' 	when (state = S_1 or state = S_4 or state = S_5) else '1';

	a_s		<= '1'	when (state = S_1 or state = S_5) else '0';

	-- outputs
	finished	<= '1' when state = S_done else '0';
	
end architecture a5;
