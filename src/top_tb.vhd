library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.pkg_report.all;



-- internal test bench
-- no pins necessary
entity top_tb is
end entity top_tb;



architecture bh of top_tb is
  signal x, a: std_logic;
begin
-- this device
-- is under test
DUT: entity work.top port map (x, a);

p_init: process
begin
  -- need report.log?
  report_init("report.log");

  -- case 0
  x <= '0';
  wait for 10 ns;
  report_assert(ID_SIM, error, "case 0 failed!", a = '1');
  
  -- case 1
  x <= '1';
  wait for 10 ns;
  report_assert(ID_SIM, error, "case 1 failed!", a = '0');
  
  report_log(ID_SIM, note, "NOT tests passed.");
  wait;
  -- test done
  -- so just wait
end process;
end architecture bh;
