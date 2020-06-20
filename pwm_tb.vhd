----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/01/2019 07:25:27 PM
-- Design Name: 
-- Module Name: pwm_tb - Behavioral
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

entity pwm_tb is

end pwm_tb;

architecture Behavioral of pwm_tb is

signal CLK100MHZ_s : STD_LOGIC :='1';
signal AUD_PWM_s :  STD_LOGIC;
signal AUD_SD_s :  STD_LOGIC;
signal SW_s :  STD_LOGIC_VECTOR(8 downto 0):= (others => '0');
constant per_c : TIME:= 10 ns;
begin

pwm: entity work.PWMAudio
port map (
CLK100MHZ => CLK100MHZ_s,
AUD_PWM =>AUD_PWM_s,
AUD_SD =>AUD_SD_s,
SW=>SW_s
);

CLK100MHZ_s <=  not (CLK100MHZ_s) after per_c/2;
 
SW_s(0)  <= '1' after 100 ns, '0' after 180 ns;
SW_s(1)  <= '1' after 140 ns;
SW_s(2)  <= '0';
SW_s(3)  <= '0';
SW_s(4)  <= '0';
SW_s(5)  <= '0';
SW_s(6)  <= '0';
SW_s(7)  <= '0';
SW_s(8)  <= '0';
end Behavioral;
