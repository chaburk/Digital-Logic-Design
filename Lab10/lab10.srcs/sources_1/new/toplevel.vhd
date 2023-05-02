----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2021 10:13:19 AM
-- Design Name: 
-- Module Name: toplevel - Behavioral
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

entity toplevel is
    Port ( clk : in STD_LOGIC;
           segments : out STD_LOGIC_VECTOR (6 downto 0);
           anodes : out STD_LOGIC_VECTOR (3 downto 0);
           enable_n : in STD_LOGIC;
           load_n : in STD_LOGIC;
           clear_n : in STD_LOGIC;
           initial_val_n : in STD_LOGIC_VECTOR (3 downto 0));
end toplevel;

architecture Behavioral of toplevel is

component clock_divider is
    Port ( clk : in STD_LOGIC;
           message_clk : out STD_LOGIC);
end component clock_divider;

component counter is
    Port ( enable_n : in STD_LOGIC;
           load_n : in STD_LOGIC;
           clear_n : in STD_LOGIC;
           initial_val_n : in STD_LOGIC_VECTOR (3 downto 0);
           count_out : out STD_LOGIC_VECTOR (3 downto 0);
           clk : in STD_LOGIC);
end component counter;

component display_driver1 is
    Port ( inputs : in  STD_LOGIC_VECTOR (3 downto 0);
           seg_out : out  STD_LOGIC_VECTOR (6 downto 0));
end component display_driver1;

component display_driver2 is
    Port ( inputs : in  STD_LOGIC_VECTOR (3 downto 0);
           seg_out : out  STD_LOGIC_VECTOR (6 downto 0));
end component display_driver2;

component display_driver3 is
    Port ( inputs : in  STD_LOGIC_VECTOR (3 downto 0);
           seg_out : out  STD_LOGIC_VECTOR (6 downto 0));
end component display_driver3;

component display_driver4 is
    Port ( inputs : in  STD_LOGIC_VECTOR (3 downto 0);
           seg_out : out  STD_LOGIC_VECTOR (6 downto 0));
end component display_driver4;

component LEDdisplay IS
	PORT (
		  clk					: IN  STD_LOGIC;
		  seg0,seg1,seg2,seg3		: IN  STD_LOGIC_VECTOR(6 downto 0);
        seg       		: OUT  STD_LOGIC_VECTOR(6  downto 0);
		  an					: OUT STD_LOGIC_VECTOR(3 downto 0));		  
END component LEDdisplay;

signal m_clk : STD_LOGIC;
signal cnt_out: STD_LOGIC_VECTOR;
signal sig_segments1, sig_segments2, sig_segments3, sig_segments4: STD_LOGIC_VECTOR(6 downto 0);


begin
--port mapping--
clock_driver0: clock_divider port map (clk => clk, message_clk => m_clk);

counter0: counter port map 
( clk => m_clk,
  enable_n => enable_n,
  load_n => clear_n,
  initial_val_n => initial_val_n,
  clear_n => clear_n,
  count_out => cnt_out
  );
  
 display1: display_driver1 port map 
 (inputs => cnt_out,
 seg_out => sig_segments1
 );
  
display2: display_driver2 port map 
 (inputs => cnt_out,
 seg_out => sig_segments2
 );
 
display3: display_driver3 port map 
 (inputs => cnt_out,
 seg_out => sig_segments3
 );
 
display4: display_driver4 port map 
 (inputs => cnt_out,
 seg_out => sig_segments4
 );
 
 ledDisplay0: LEDdisplay port map
 (
 clk => clk,
 seg0 => sig_segments4,
 seg1 => sig_segments3,
 seg2 => sig_segments2,
 seg3 => sig_segments1,
 seg => segments,
 an => anodes
 );
end Behavioral;
