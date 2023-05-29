----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.05.2023 16:47:33
-- Design Name: 
-- Module Name: mux_4v1_bus - Behavioral
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

entity mux_4v1_bus is
    Port ( sel : in STD_LOGIC_VECTOR (1 downto 0);
           A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           C : in STD_LOGIC_VECTOR (3 downto 0);
           D : in STD_LOGIC_VECTOR (3 downto 0);
           X : out STD_LOGIC_VECTOR (3 downto 0));
end mux_4v1_bus;

architecture Behavioral of mux_4v1_bus is

begin
    process (sel)
    begin
        case sel is
            when "00" =>
                X <= A;
            when "01" =>
                X <= B;
            when "10" =>
                X <= C;
            when "11" =>
                X <= D;
            when others =>
                x <= "1111";
        end case;
    end process;

end Behavioral;
