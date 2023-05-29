----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.05.2023 14:18:15
-- Design Name: 
-- Module Name: HCSR04_V2 - Behavioral
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
use iEEE.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity HCSR04_V2 is
    Port ( CLK : in STD_LOGIC;
           Trig : in STD_LOGIC;
           Echo : in STD_LOGIC;
           Distance : out std_logic_vector(31 downto 0)
           );
end HCSR04_V2;


architecture Behavioral of HCSR04_V2 is
    signal Trigged : std_logic := '0';
    signal Echoed : std_logic := '0';
    signal total_duration : unsigned(31 downto 0) := (others => '0');
    signal echo_duration : unsigned(31 downto 0) := (others => '0');
    signal i_distance : unsigned(31 downto 0) := (others => '0');

begin
    process(CLK)
    begin
        if rising_edge(CLK) then
            if Trigged = '1' then
                if Trig = '0' then
                    total_duration <= total_duration + 1;
                else
                    total_duration <= (others => '0');
                    echo_duration <= (others => '0');
                end if;
            else
                total_duration <= (others => '0');
            end if;
            if Echo = '1' then
                echo_duration <= echo_duration + 1;
            end if;
        end if;
    end process;

    process(CLK)
    begin
        if rising_edge(CLK) then
            if Trig = '1' then
                Trigged <= '1';
                Echoed <= '0';
            end if;
            if Trigged = '1' and Echo = '1' then
                Trigged <= '1';
                Echoed <= '1';
            end if;
            if total_duration > 6000000 then
                Trigged <= '0';
                if echo_duration > 2320000 then
                    i_distance <= "00000000000000000010011100001111";
                else
                    i_distance <= echo_duration /5800;
                end if;
            end if;    
        end if;
    end process;
    
    distance <= std_logic_vector(i_distance);
    
end architecture Behavioral;
