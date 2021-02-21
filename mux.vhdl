library ieee;
use IEEE.STD_LOGIC_1164.ALL;
entity mux is
	Port (I: in std_logic_vector(7 downto 0);
		 sel: in std_logic_vector(2 downto 0);
		 zout: out std_logic);
end mux;
architecture behavioral of mux is
begin
	zout <= I(0) when sel="000" else
			I(1) when sel="001" else
			I(2) when sel="010" else
			I(3) when sel="011" else
			I(4) when sel="100" else
			I(5) when sel="101" else
			I(6) when sel="110" else
			I(7);
end behavioral;
