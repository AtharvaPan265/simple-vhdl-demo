----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/26/2024 11:22:32 PM
-- Design Name: 
-- Module Name: fullAdderSim - Behavioral
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

entity fullAdderSim is
    --  Port ( );
end fullAdderSim;

architecture Behavioral of fullAdderSim is
    component fullAdder is
        Port (
            A, B, cin  :   in  std_logic;
            sum        :   out std_logic;
            cout       :   out std_logic
        );
    end component;
    signal A_tb, B_tb, cin_tb   : std_logic := '0';
    signal sum_tb, cout_tb : std_logic;
    
begin

   -- cin_tb <= '1';
    A: process begin
    wait for 40 ns;
        A_tb <= NOT A_tb;
    end process;
    B: process begin
    wait for 20 ns;
        B_tb <= NOT B_tb;
    end process;
    cin: process begin
    wait for 10 ns;
        cin_tb <= NOT cin_tb;
    end process;




    -- Port Mapping for the testbench 
    full_adder: fullAdder
        port map(
            A => A_tb,
            B => B_tb,
            cin => cin_tb,
            cout => cout_tb,
            sum  => sum_tb
        );




end Behavioral;
