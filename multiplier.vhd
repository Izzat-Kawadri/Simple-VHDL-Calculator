----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:19:14 06/07/2023 
-- Design Name: 
-- Module Name:    multiplier - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
-- Multiplier
entity multiplier is
    Port ( A : in  signed(7 downto 0);
           B : in  signed(7 downto 0);
           product : out  signed(15 downto 0));
end entity multiplier;

-- Multiplier
architecture behavioral of multiplier is
begin
    process (A, B)
    begin
        product <= A * B;
    end process;
end architecture behavioral;