----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/29/2021 10:01:34 AM
-- Design Name: 
-- Module Name: masterslave - Behavioral
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

entity masterslave is
    Port ( D : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC);
end masterslave;

architecture Structural of masterslave is

component gateddLatch IS
 PORT ( Clk, D: IN STD_LOGIC;
 Q : OUT STD_LOGIC);
END component gateddLatch ;

signal Q_m: STD_LOGIC;
signal clkk: STD_LOGIC;

ATTRIBUTE keep : boolean;
ATTRIBUTE keep of Q_m : SIGNAL IS true;

begin
clkk <= not Clk;
master: gateddlatch port map (D => D, Clk => Clk, Q => Q_m);
slave: gateddlatch port map (D => Q_m, Clk => clkk, Q => Q);


END Structural;
