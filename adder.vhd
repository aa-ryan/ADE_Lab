library ieee;
use ieee.std_logic_1164.all;
entity adder is
	port(a, b, c: in std_logic;
		HAsum, HAcout, FAsum, FAcout, HSdiff, HSborr, FSdiff, FSborr: out std_logic);
end adder;

architecture dataflow of adder is
begin
	HAsum <= a xor b;
	HAcout <= a and b;
	FAsum <= a xor b xor c;
	FAcout <= ((a and b) or (b and c) or (a and c));
	HSdiff <= a xor b;
	HSborr <= ((not a) and b);
	FSdiff <= a xor b xor c;
	FSborr <= ((b xor c) and (not a)) or (b and c);
end dataflow;
