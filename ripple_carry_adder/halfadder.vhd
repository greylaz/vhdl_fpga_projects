----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/27/2026 03:40:04 PM
-- Design Name: 
-- Module Name: halfadder - Behavioral
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

entity halfadder is
    Port ( A,B : in STD_LOGIC;
           sum : out STD_LOGIC;
           carry : out STD_LOGIC);
end halfadder;

architecture Behavioral of halfadder is

begin
    sum <= A xor B;
    carry <= A and B;  

end Behavioral;
