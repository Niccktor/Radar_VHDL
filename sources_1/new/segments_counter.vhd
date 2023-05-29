----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.05.2023 16:04:10
-- Design Name: 
-- Module Name: segments_counter - Behavioral
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
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity segments_counter is
    generic (
        refresh_segments : positive := 250000 
    );
    Port ( CLK : in STD_LOGIC;
           sel : out STD_LOGIC_VECTOR (1 downto 0));
end segments_counter;


architecture Behavioral of segments_counter is
    signal i_counter : integer range 0 to refresh_segments := 0;
    signal i_sel : unsigned(1 downto 0) := (others => '0');
begin
    process(CLK)
    begin
        if rising_edge(CLK) then
            i_counter <= i_counter + 1;  
            if (i_counter >= refresh_segments) then
                i_counter <= 0;
                i_sel <= i_sel + 1;
                end if;
        end if;
    end process;
    sel <= std_logic_vector(i_sel);
end Behavioral;
