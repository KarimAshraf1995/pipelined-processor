Library ieee;
use ieee.std_logic_1164.all;
Entity OneRegister is
port( d,clk,rst, enable: in std_logic;
q : out std_logic);
end OneRegister;

Architecture OneRegister_Implementation of OneRegister is
begin
process(clk,rst)
begin
if(rst = '1') then
        q <= '0';
elsif clk'event and clk = '1' then   
	if (enable = '1') then          
 	    q <= d;
  end if;
end if;
end process;
end OneRegister_Implementation;

