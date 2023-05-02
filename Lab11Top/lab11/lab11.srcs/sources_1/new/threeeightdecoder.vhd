----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/15/2021 09:00:07 AM
-- Design Name: 
-- Module Name: threeeightdecoder - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity threeeightdecoder is
    Port ( X : in STD_LOGIC_VECTOR (2 downto 0);
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end threeeightdecoder;

architecture Behavioral of threeeightdecoder is

begin
Y(0) <= not X(2) and not X(1) and not X(0);
Y(1) <= not X(2) and not X(1) and X(0);
Y(2) <= not X(2) and X(1) and not X(0);
Y(3) <= not X(2) and X(1) and X(0);
Y(4) <= X(2) and not X(1) and not X(0);
Y(5) <= X(2) and not X(1) and X(0);
Y(6) <= X(2) and X(1) and not X(0);
Y(7) <= X(2) and X(1) and X(0);
end Behavioral;
