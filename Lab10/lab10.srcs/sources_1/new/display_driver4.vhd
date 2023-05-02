----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2021 09:29:10 AM
-- Design Name: 
-- Module Name: display_driver4 - Behavioral
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

entity display_driver4 is
    Port ( inputs : in  STD_LOGIC_VECTOR (3 downto 0);
           seg_out : out  STD_LOGIC_VECTOR (6 downto 0));
end display_driver4;

architecture Behavioral of display_driver4 is

begin

with inputs select
seg_out <=
"0100001" when x"0" ,
"1111111" when x"1" ,
"1111111" when x"2" ,
"0000011" when x"3" ,
"0000110" when x"4" ,
"0100001" when x"5" ,
"1111111" when x"6" ,
"1111111" when x"7" ,
"0000011" when x"8" ,
"0000110" when x"9" ,
"0100001" when x"A" ,
"1111111" when x"B" ,
"1111111" when x"C" ,
"1111111" when x"D" ,
"0000011" when x"E" ,
"0000110" when others;

end Behavioral;
