----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:18:09 06/07/2023 
-- Design Name: 
-- Module Name:    subtractor - Behavioral 
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
-- Subtractor
entity subtractor is
    Port ( A : in  signed(7 downto 0);
           B : in  signed(7 downto 0);
           diff : out  signed(7 downto 0));
end entity subtractor;

-- Subtractor
architecture behavioral of subtractor is
begin
    process (A, B)
    begin
        diff <= A - B;
    end process;
end architecture behavioral;
