library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Contador_Binario is
    port(
          X  : in std_logic;
          Y  : in std_logic;
          CK : in std_logic;
        door : out std_logic;
       Reset : in std_logic;
           Q : out std_logic_vector(3 downto 0));
end Contador_Binario;

architecture archi of Contador_Binario is


   type state_type is (S0,S1,S2,S3);
   signal state, next_state : state_type;
   --Declare internal signals for all outputs of the state-machine
   --signal Zout : std_logic:='0';  -- example output signal
   --other outputs
begin

--Insert the following in the architecture after the begin keyword
   SYNC_PROC: process (ck,reset)
   begin
      
      if (ck'event and ck = '1') then
         if (reset = '1') then
            state <= S0;          
          else
            state <= next_state;               
         end if;
      end if;
   end process;
 



   NEXT_STATE_CODE: process (state,X,Y)
   begin
     
      next_state <= state;  

      case (state) is
         when s0 =>
             Q<="0000";
             
             if x = '0' and Y='0' then
               next_state <= s0;
               door<='1';
             elsif x = '0' and Y='1' then
               next_state <= s1;
               door<='0';
             elsif x = '1' and Y='0' then
               next_state <= s1;
               door<='0';
             else
               next_state <= s1; 
               door<='0';
             end if;
            
          when s1 =>
             
             Q<="0001";
             
             if x = '0' and Y='0' then
               next_state <= s0;
               door<='0';
             elsif x = '0' and Y='1' then
               next_state <= s1;
               door<='1';
             elsif x = '1' and Y='0' then
               next_state <= s2;
               door<='0';
             else
               next_state <= s2; 
               door<='0';
             end if;
               
         when s2 =>
             Q<="0010";
             
             if x = '0' and Y='0' then
               next_state <= s1;
               door<='0';
             elsif x = '0' and Y='1' then
               next_state <= s1;
               door<='0';
             elsif x = '1' and Y='0' then
               next_state <= s2;
               door<='1';
             else
               next_state <= s3; 
               door<='0';
             end if;
            
          when s3 =>
            Q<="0011";

             if x = '0' and Y='0' then
               next_state <= s2;
               door<='0';
             elsif x = '0' and Y='1' then
               next_state <= s2;
               door<='0';
             elsif x = '1' and Y='0' then
               next_state <= s2;
               door<='0';
             else
               next_state <= s3; 
               door<='1';
             end if;
                             
         when others =>
            Q<="0000";
            next_state <= s0;
      end case;
   end process;
			
end;	