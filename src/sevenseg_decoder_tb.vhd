----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/12/2026 09:36:55 PM
-- Design Name: 
-- Module Name: sevenseg_decoder_tb - Behavioral
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

entity sevenseg_decoder_tb is

end sevenseg_decoder_tb;

architecture Behavioral of sevenseg_decoder_tb is
    signal r_Hex : std_logic_vector(3 downto 0) := (others => '0');
    signal w_Seg : std_logic_vector(6 downto 0);
begin
    DUT: entity work.sevenseg_decoder
        port map (
            i_Hex   => r_Hex,
            o_seg_n => w_Seg
        );
    
    
    stim: process
    begin
        wait for 1 ns;
        
        r_Hex <= "0000";
        wait for 10 ns;

        r_Hex <= "0001";
        wait for 10 ns;

        r_Hex <= "0010";
        wait for 10 ns;

        r_Hex <= "0011";
        wait for 10 ns;

        r_Hex <= "0100";
        wait for 10 ns;

        r_Hex <= "1010";
        wait for 10 ns;
        
        r_Hex <= "1011";
        wait for 10 ns;
        
        r_Hex <= "1100";
         wait for 10 ns;
         
        r_Hex <= "1111"; 
        wait for 10 ns;

        
        wait;
        end process;

end Behavioral;
