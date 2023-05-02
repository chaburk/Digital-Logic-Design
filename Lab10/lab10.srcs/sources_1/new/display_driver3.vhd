----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2021 09:20:26 AM
-- Design Name: 
-- Module Name: display_driver3 - Behavioral
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

entity display_driver3 is
    Port ( inputs : in  STD_LOGIC_VECTOR (3 downto 0);
           seg_out : out  STD_LOGIC_VECTOR (6 downto 0));
end display_driver3;

architecture Behavioral of display_driver3 is

begin

with inputs select
seg_out <=
"0000110" when x"0" ,
"0100001" when x"1" ,
"1111111" when x"2" ,
"1111111" when x"3" ,
"0000011" when x"4" ,
"0000110" when x"5" ,
"0100001" when x"6" ,
"1111111" when x"7" ,
"1111111" when x"8" ,
"0000011" when x"9" ,
"0000110" when x"A" ,
"0100001" when x"B" ,
"1111111" when x"C" ,
"1111111" when x"D" ,
"1111111" when x"E" ,
"0000011" when others;

end Behavioral;