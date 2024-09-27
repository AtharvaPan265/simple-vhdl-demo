----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/26/2024 03:06:29 PM
-- Design Name: 
-- Module Name: Basics - Behavioral
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

entity halfAdder is
  Port (
  A, B, cin  :   in  std_logic;
  sum        :   out std_logic;
  cout       :   out std_logic
  );
end halfAdder;

architecture Behavioral of halfAdder is
signal temp1 : std_logic;
begin

temp1 <= (A xor B) xor cin;
sum   <= temp1;
cout  <= (A and B) or (temp1 and cin);


end Behavioral;
