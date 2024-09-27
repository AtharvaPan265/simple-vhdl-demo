library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fullAdder is
    Port (
        A, B, cin  :   in  std_logic;
        sum        :   out std_logic;
        cout       :   out std_logic
    );
end fullAdder;

architecture Behavioral of fullAdder is
begin

    sum   <= A XOR B XOR cin;
    cout  <= (A AND B) OR (A AND cin) OR (B AND cin);


end Behavioral;
