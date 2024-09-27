library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FullAdderTop is
    Port (
        A, B, cin  :   in  std_logic;
        sum        :   out std_logic;
        cout       :   out std_logic
    );
end FullAdderTop;

architecture Structural of FullAdderTop is
    component halfAdder is
        Port (
            A, B       :   in  std_logic;
            sum        :   out std_logic;
            cout       :   out std_logic
        );
    end component;
    signal ha_1_sum, ha_1_carry : std_logic;
    signal ha_2_sum, ha_2_carry : std_logic;
begin

    halfAdder1: halfAdder
        port map(
            A    => A,
            B    => B,
            sum  => ha_1_sum,
            cout => ha_1_carry
        );

    halfAdder2: halfAdder
        port map(
            A    => ha_1_sum,
            B    => cin,
            sum  => ha_2_sum,
            cout => ha_2_carry
        );

    cout <= ha_1_carry OR ha_2_carry;
    sum <= ha_2_sum;

end Structural;
