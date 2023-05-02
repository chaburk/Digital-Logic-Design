----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2021 09:05:40 AM
-- Design Name: 
-- Module Name: display_driver1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity display_driver1 is
    Port ( inputs : in  STD_LOGIC_VECTOR (3 downto 0);
           seg_out : out  STD_LOGIC_VECTOR (6 downto 0));
end display_driver1;

architecture Behavioral of display_driver1 is

begin

with inputs select
seg_out <=
"1111111" when x"0" ,
"0000011" when x"1" ,
"0000110" when x"2" ,
"0100001" when x"3" ,
"1111111" when x"4" ,
"1111111" when x"5" ,
"0000011" when x"6" ,
"0000110" when x"7" ,
"0100001" when x"8" ,
"1111111" when x"9" ,
"1111111" when x"A" ,
"0000011" when x"B" ,
"0000110" when x"C" ,
"0100001" when x"D" ,
"1111111" when x"E" ,
"1111111" when others;

end Behavioral;
