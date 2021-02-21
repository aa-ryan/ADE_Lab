library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity jkflip is
	Port (J, K, clk : in std_logic;
	Q : buffer std_logic);
end jkflip;
architecture Behavioral of jkflip is
begin
	process(clk)
	begin
		if rising_edge(clk) then
			Q <= ((J and (not Q)) or ((not K) and Q));
		end if;
	end process;
end Behavioral;
