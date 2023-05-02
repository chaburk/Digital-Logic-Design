----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2021 10:04:35 AM
-- Design Name: 
-- Module Name: clock_divider - Behavioral
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clock_divider is
    Port ( clk : in STD_LOGIC;
           message_clk : out STD_LOGIC);
end clock_divider;

architecture Behavioral of clock_divider is
 signal count : STD_LOGIC_VECTOR (25 downto 0) := (others => '0');
begin
    process (clk)
    begin
        if (clk'event and clk = '1') then
            count <= count + 1;
        end if;
    
    end process;
    
    message_clk <= count(23);


end Behavioral;
