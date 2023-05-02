----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2021 09:45:49 AM
-- Design Name: 
-- Module Name: counter - Behavioral
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

entity counter is
    Port ( enable_n : in STD_LOGIC;
           load_n : in STD_LOGIC;
           clear_n : in STD_LOGIC;
           initial_val_n : in STD_LOGIC_VECTOR (3 downto 0);
           count_out : out STD_LOGIC_VECTOR (3 downto 0);
           clk : in STD_LOGIC);
end counter;

architecture Behavioral of counter is
    signal counter_signal : STD_LOGIC_VECTOR (3 downto 0) :="0000";

begin
    process (clk, clear_n)
    begin
        if (clear_n = '0') then
            counter_signal <= (others => '0');
        elsif (clk'event and clk = '1') then
            if (load_n = '0') then
                counter_signal <= initial_val_n;
            else
                if (enable_n = '1') then
                    counter_signal <= counter_signal + 1;
                else
                    counter_signal <= counter_signal;
                end if;
            end if;
        end if;
    end process;
    
    count_out <= counter_signal;

end Behavioral;
