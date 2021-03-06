--countervar_v1.vhd by Vincent Gosselin,2020.
--variable counter up / down


-- Quartus Prime VHDL Template
-- Binary Up/Down Counter



library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity countervar_v1 is
	generic 
	(
		MIN_COUNT : natural := 0;
		MAX_COUNT : natural := 255
	);

	port
	(
		clk		   : in std_logic;
		reset	   : in std_logic;
		enable	   : in std_logic;
		updown	   : in std_logic;
		q		   : out integer range MIN_COUNT to MAX_COUNT
	);

end entity;

architecture rtl of countervar_v1 is
	signal direction : integer;
begin

	process (updown)
	begin
		-- Determine the increment/decrement of the counter
		if (updown = '1') then
			direction <= 1;
		else
			direction <= -1;
		end if;
	end process;


	process (clk)
		variable   cnt			: integer range MIN_COUNT to MAX_COUNT;
	begin
		
		-- Synchronously update counter
		if (rising_edge(clk)) then

			if reset = '1' then
				-- Reset the counter to 0
				cnt := 0;

			elsif enable = '1' then
				-- Increment/decrement the counter
				cnt := cnt + direction;

			end if;
		end if;

		-- Output the current count
		q <= cnt;
	end process;

end rtl;
