library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



entity top is
port(
  x: in  std_logic;
  a: out std_logic
);
end entity top;



architecture bh of top is
begin
  a <= not x;
end architecture bh;
