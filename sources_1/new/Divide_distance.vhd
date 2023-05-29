----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.05.2023 11:36:24
-- Design Name: 
-- Module Name: Divide_distance - Behavioral
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

entity Divide_distance is
    Port ( distance : in STD_LOGIC_VECTOR (31 downto 0);
           Unite : out STD_LOGIC_VECTOR (3 downto 0);
           Dizaine : out STD_LOGIC_VECTOR (3 downto 0);
           Centaine : out STD_LOGIC_VECTOR (3 downto 0);
           Millier : out std_logic_vector (3 downto 0)
           );
end Divide_distance;

architecture Behavioral of Divide_distance is
    signal i_dist             : integer := 0;
    
begin
    process(distance)
    begin
        i_dist <= TO_INTEGER(unsigned(distance));
        Unite    <= std_logic_vector(to_unsigned(i_dist mod 10, 4));
        Dizaine  <= std_logic_vector(to_unsigned((i_dist / 10) mod 10, 4));
        Centaine <= std_logic_vector(to_unsigned((i_dist / 100) mod 10, 4));
        Millier <= std_logic_vector(to_unsigned((i_dist / 1000) mod 10, 4));
    end process;
end architecture Behavioral;
