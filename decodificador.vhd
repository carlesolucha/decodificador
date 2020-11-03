--decodifica un número en binario para activar la salida asociada a ese.

library ieee;
use ieee. std_logic_1164.all;

entity decodificador is
	port(
	entrada : in std_logic_vector(1 downto 0);
	salida  : out std_logic_vector(3 downto 0));
	
end decodificador;

architecture behavioral of decodificador is
begin
	with entrada select
	salida<=
		"0001" when "00",
		"0010" when "01",
		"0100" when "10",
		"1000" when "11",
		"----" when others;
end behavioral;