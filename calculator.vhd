----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:15:39 06/07/2023 
-- Design Name: 
-- Module Name:    calculator - Behavioral 
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
entity calculator is
    Port ( A : in  signed(7 downto 0);
           B : in  signed(7 downto 0);
           op : in  std_logic_vector(1 downto 0);
           result : out  signed(15 downto 0));
end entity calculator;

architecture behavioral of calculator is
    component adder
        Port ( A : in  signed(7 downto 0);
           B : in  signed(7 downto 0);
           sum : out  signed(7 downto 0));
    end component;

    component subtractor
          Port ( A : in  signed(7 downto 0);
           B : in  signed(7 downto 0);
           diff : out  signed(7 downto 0));
    end component;

    component multiplier
        Port ( A : in  signed(7 downto 0);
           B : in  signed(7 downto 0);
           product : out  signed(15 downto 0));
    end component;

    component divider
       Port ( A : in  signed(7 downto 0);
           B : in  signed(7 downto 0);
           quotient : out  signed(7 downto 0));
    end component;

   signal add_result, sub_result, div_result : signed(7 downto 0);
    signal mul_result : signed(15 downto 0);
begin
    add_inst : adder port map (A, B, add_result);
    sub : subtractor port map (A, B, sub_result);
    mul_inst : multiplier port map (A, B, mul_result);
    div_inst : divider port map (A, B, div_result);

    

    process (A, B, op, add_result, sub_result, mul_result, div_result)
    begin
        case op is
            when "00" =>
                result <= "00000000" & add_result; -- Addition
            when "01" =>
                result <= "00000000" & sub_result; -- Subtraction
            when "10" =>
                result <= mul_result; -- Multiplication
            when others =>
                result <= "00000000" & div_result; -- Division
        end case;
    end process;
end architecture behavioral;
