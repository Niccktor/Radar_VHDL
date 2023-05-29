----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.05.2023 13:40:07
-- Design Name: 
-- Module Name: BCD_to_7_Segment - Behavioral
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

entity BCD_to_7_Segment is
    Port ( BCD : in std_logic_vector(3 downto 0);
           segments : out std_logic_vector(7 downto 0)
           );
end BCD_to_7_Segment;

architecture Behavioral of BCD_to_7_Segment is

begin
    process(BCD)
    begin
        case BCD is
            when "0000" => --- 0
                segments <= "11000000";
            when "0001" => --- 1
                segments <= "11111001";
            when "0010" => --- 2
                segments <= "10100100";
            when "0011" => --- 3
                segments <= "10110000";
            when "0100" => --- 4
                segments <= "10011001";
            when "0101" => --- 5
                segments <= "10010010";
            when "0110" => --- 6
                segments <= "10000010";
            when "0111" => --- 7
                segments <= "11111000";
            when "1000" => --- 8
                segments <= "10000000";
            when "1001" => --- 9
                segments <= "10010000";
            when others => 
                segments <= "11111111";
            end case;      
    end process;


end Behavioral;
