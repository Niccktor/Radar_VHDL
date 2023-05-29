----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.05.2023 13:45:14
-- Design Name: 
-- Module Name: Pluse_And_Radar_tb - Behavioral
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
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Pluse_And_Radar_tb is
--  Port ( );
end Pluse_And_Radar_tb;

architecture Behavioral of Pluse_And_Radar_tb is
    constant clock_period : time := 10 ns;  -- Période de l'horloge
    signal clk_tb : std_logic := '0';  -- Signal d'horloge
    signal pulse_tb : std_logic;  -- Signal d'impulsion généré    
    signal distance_tb : std_logic_vector(31 downto 0);  
    signal echo_tb : std_logic := '0';
    signal Unite :  STD_LOGIC_VECTOR (3 downto 0);
    signal Dizaine :  STD_LOGIC_VECTOR (3 downto 0);
    signal Centaine :  STD_LOGIC_VECTOR (3 downto 0);
    signal Millier :  std_logic_vector (3 downto 0);
    
begin
    dut: entity work.PulseGenerator
    generic map (
        pulse_duration_cycles_high => 1400,
        pulse_duration_cycles_low => 6000000
    )
    port map (
        clk => clk_tb,
            pulse => pulse_tb
    );
    uut: entity work.HCSR04_V2
    port map (
        CLK         => clk_tb,
        Trig     => pulse_tb,
        Echo        => echo_tb,
        Distance    => distance_tb
    );
    aut: entity work.Divide_distance
    port map (
        distance => distance_tb,
           Unite => Unite,
           Dizaine => Dizaine,
           Centaine => Centaine,
           Millier => Millier
    );
    process
    begin
        while now < 1000 ms loop  -- Simulation de 1 us
            clk_tb <= '0';
            wait for clock_period/2;
            clk_tb <= '1';
            wait for clock_period/2;
        end loop;
        wait;
    end process;
    process
        begin
        
        wait for 50 us;
        --echo_tb <= '1';

        -- Simulate echo duration
        wait for 100 us;
       -- echo_tb <= '0';
        wait for 60 ms;

        -- Simulate echo delay
        wait for 50 us;
        echo_tb <= '1';

        -- Simulate echo duration
        wait for 8.23 ms;
        echo_tb <= '0';

        -- Simulate echo delay
    end process;


end Behavioral;
