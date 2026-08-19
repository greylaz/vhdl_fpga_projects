----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/27/2026 04:19:17 PM
-- Design Name: 
-- Module Name: fulladder - Behavioral
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

entity fulladder is
    Port ( A,B,C_in : in STD_LOGIC;
           sum,C_out : out STD_LOGIC);
end fulladder;

architecture Behavioral of fulladder is

component halfadder
    Port (A,B : in std_logic;
          sum,carry : out std_logic);
end component;

signal  sum_AB,carry1,carry2 : std_logic; 

begin

ha1 : halfadder port map
                ( A => A,
                  B => B,
                  sum => sum_AB,
                  carry => carry1);
ha2 : halfadder port map
                ( A => C_in,
                  B => sum_AB,
                  sum => sum,
                  carry => carry2);

C_out <= carry1 or carry2;

end Behavioral;
