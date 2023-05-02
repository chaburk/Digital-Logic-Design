----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/29/2021 09:13:01 AM
-- Design Name: 
-- Module Name: gateddlatch - Behavioral
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

LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY gateddLatch IS
 PORT ( Clk, D : IN STD_LOGIC;
 Q : OUT STD_LOGIC);
END gateddLatch ;
ARCHITECTURE Structural OF gateddLatch IS
 SIGNAL R_g, S_g, Qa, Qb : STD_LOGIC ;
 ATTRIBUTE keep : boolean;
 ATTRIBUTE keep of R_g, S_g, Qa, Qb : SIGNAL IS true;
BEGIN
 R_g <= not (not D AND Clk);
 S_g <= not (D AND Clk);
 Qa <= NOT (R_g and Qb);
 Qb <= NOT (S_g and Qa);
 Q <= Qa;
END Structural;