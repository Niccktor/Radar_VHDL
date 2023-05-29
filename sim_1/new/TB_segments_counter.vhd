----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.05.2023 16:15:46
-- Design Name: 
-- Module Name: TB_segments_counter - Behavioral
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

entity TB_segments_counter is
end TB_segments_counter;

architecture Behavioral of TB_segments_counter is

    constant clock_period : time := 10 ns;  -- Période de l'horloge

component segments_counter
PORT(
    CLK : IN std_logic;
    sel : OUT std_logic_vector(1 downto 0)
);
END COMPONENT;

component Decoder_2v4
PORT(
    sel : IN std_logic_vector(1 downto 0);
    AN0 : OUT std_logic;
    AN1 : OUT std_logic;
    AN2 : OUT std_logic;
    AN3 : OUT std_logic
);
END COMPONENT;

signal CLK : std_logic := '0';
signal sel_tb : std_logic_vector(1 downto 0) := (others => '0');
signal AN0 : std_logic := '1';
signal AN1 : std_logic := '1';
signal AN2 : std_logic := '1';
signal AN3 : std_logic := '1';

   begin
   
    uut: entity work.segments_counter PORT MAP (
    CLK => CLK,
    sel => sel_tb
    );
    dut: entity work.Decoder_2v4 PORT MAP (
    sel => sel_tb,
    AN0 => AN0,
    AN1 => AN1,
    AN2 => AN2,
    AN3 => AN3
    );
    
   process
   begin
        CLK <= '0';
        wait for clock_period/2;
        CLK <= '1';
        wait for clock_period/2;
        
   end process;
end Behavioral;
