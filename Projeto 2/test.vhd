library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity test is
port(
idx : in STD_LOGIC_VECTOR(1 downto 0);
discovered_vector : in STD_LOGIC_VECTOR(3 downto 0);
out_discovered_vector : out STD_LOGIC_VECTOR(3 downto 0)
);
end test;
architecture hardware of test is
	signal new_discovered : STD_LOGIC_VECTOR (3 downto 0);	
begin
 
process(idx,new_discovered)
begin
	case idx is
	when "00" => new_discovered <= "0001"; 
	when "01" => new_discovered <= "0010"; 
	when "10" => new_discovered <= "0100"; 
	when "11" => new_discovered <= "1000";
	end case;
end process;
 out_discovered_vector <= new_discovered or discovered_vector;
end hardware;
