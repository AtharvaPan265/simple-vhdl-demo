library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fullAdderSim is
    --  Port ( );
end fullAdderSim;

architecture Behavioral of fullAdderSim is
    component FullAdderTop is
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
    full_adder: FullAdderTop
        port map(
            A => A_tb,
            B => B_tb,
            cin => cin_tb,
            cout => cout_tb,
            sum  => sum_tb
        );




end Behavioral;
