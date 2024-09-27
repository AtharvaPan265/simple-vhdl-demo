library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity halfAdder is
    Port (
        A, B       :   in  std_logic;
        sum        :   out std_logic;
        cout       :   out std_logic
    );
end halfAdder;

architecture Behavioral of halfAdder is

begin

    cout <= A AND B;
    sum  <= A XOR B;

end Behavioral;
