--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:38:53 06/06/2023
-- Design Name:   
-- Module Name:   D:/IZZAT/My CAE Projects/New folder/vhdl_calc/cal.vhd
-- Project Name:  vhdl_calc
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: calculator
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY cal IS
END cal;
 
ARCHITECTURE behavior OF cal IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT calculator
    PORT(
         A : IN  signed(7 downto 0);
         B : IN  signed(7 downto 0);
         op : IN  std_logic_vector(1 downto 0);
         result : OUT  signed(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : signed(7 downto 0) := (others => '0');
   signal B : signed(7 downto 0) := (others => '0');
   signal op : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal result : signed(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: calculator PORT MAP (
          A => A,
          B => B,
          op => op,
          result => result
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
  -- Test 1: Addition
        A <= to_signed(10, 8);
        B <= to_signed(20, 8);
        op <= "00";
        wait for 10 ns;
        

        -- Test 2: Subtraction
        A <= to_signed(30, 8);
        B <= to_signed(20, 8);
        op <= "01";
        wait for 10 ns;
        

       -- Test 3: Multiplication
       A <= to_signed(10, 8);
       B <= to_signed(5, 8);
       op <= "10";
       wait for 10 ns;
      

        -- Test 4: Division
        A <= to_signed(50, 8);
        B <= to_signed(10, 8);
        op <= "11";
        wait for 10 ns;
        
        -- Test 5: Division by zero
        A <= to_signed(50, 8);
        B <= to_signed(0, 8);
        op <= "11";
        wait for 10 ns;
        

      

      -- insert stimulus here 

      wait;
   end process;

END;
