----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.05.2023 13:54:01
-- Design Name: 
-- Module Name: TB_BCD_to_7_segments - Behavioral
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

entity TB_BCD_to_7_segments is
end TB_BCD_to_7_segments;

architecture Behavioral of TB_BCD_to_7_segments is

component BCD_to_7_Segment
PORT(
    BCD : IN std_logic_vector(3 downto 0);
    segments : OUT std_logic_vector(6 downto 0)
);
END COMPONENT;

signal BCD : std_logic_vector(3 downto 0) := (others => '0');
signal segments : std_logic_vector(6 downto 0) := (others => '0');

begin
    uut: BCD_to_7_Segment PORT MAP (
    BCD => BCD,
    segments => segments
    );
    process
    begin
        BCD <= "0000";
        wait for 100 ns;
        BCD <= "0001";
        wait for 100 ns;
        BCD <= "0010";
        wait for 100 ns;
        BCD <= "0011";
        wait for 100 ns;
        BCD <= "0100";
        wait for 100 ns;
        BCD <= "0101";
        wait for 100 ns;
        BCD <= "0110";
        wait for 100 ns;
        BCD <= "0111";
        wait for 100 ns;
        BCD <= "1000";
        wait for 100 ns;
        BCD <= "1001";
        wait for 100 ns;
end process;

end Behavioral;
