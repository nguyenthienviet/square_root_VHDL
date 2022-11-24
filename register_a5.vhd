library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity register_a5 is
	generic (
		n	: integer := 32
		);
	port (
        clk         :   in  std_logic;
        ld          :   in  std_logic;
        init        :   in  std_logic;
        init_value  :   in  unsigned(2*n-1 downto 0);
		P		    :	in 	unsigned (2*n-1 downto 0);
		R   	    :	out	unsigned (2*n-1 downto 0)
		);
end entity register_a5;

architecture a1 of register_a5 is
    
begin
    
    process(clk)
    begin
        if(rising_edge(clk)) then
            if(init = '1') then
                R <= init_value;
            elsif(ld = '1') then
                R <= P;
            end if;
        end if;
    end process;
    
end architecture a1;