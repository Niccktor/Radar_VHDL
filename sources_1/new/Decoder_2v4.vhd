----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.05.2023 16:31:57
-- Design Name: 
-- Module Name: Decoder_2v4 - Behavioral
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

entity Decoder_2v4 is
    Port ( sel : in STD_LOGIC_VECTOR (1 downto 0);
           AN0 : out STD_LOGIC;
           AN1 : out STD_LOGIC;
           AN2 : out STD_LOGIC;
           AN3 : out STD_LOGIC);
end Decoder_2v4;

architecture Behavioral of Decoder_2v4 is

begin
    process(sel)
    begin
        case sel is 
            when "00" =>
                AN0 <= '0';
                AN1 <= '1';
                AN2 <= '1';
                AN3 <= '1';
            when "01" =>
                AN0 <= '1';
                AN1 <= '0';
                AN2 <= '1';
                AN3 <= '1';
            when "10" =>
                AN0 <= '1';
                AN1 <= '1';
                AN2 <= '0';
                AN3 <= '1';
            when "11" =>
                AN0 <= '1';
                AN1 <= '1';
                AN2 <= '1';
                AN3 <= '0';
            when others =>
                AN0 <= '1';
                AN1 <= '1';
                AN2 <= '1';
                AN3 <= '1';
            end case;
       end process;
end Behavioral;
