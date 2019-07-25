--  PSC | Power Smart Control | JRF | 2018
    
library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.STD_LOGIC_SIGNED.all;
use IEEE.numeric_std.all; 
     
    
    entity K1_CB1_K3_logic is
        Port ( CLK : in STD_LOGIC;
               RST : in STD_LOGIC;
               K1   : in STD_LOGIC;
               CB1   : in STD_LOGIC;
               K3       : in STD_LOGIC;
               rL1_in   : in std_logic_vector (31 downto 0);
               rL2_in   : in std_logic_vector (31 downto 0);
               rL1_out  : out std_logic_vector (31 downto 0);
               rL2_out  : out std_logic_vector (31 downto 0)               
               );
    end K1_CB1_K3_logic;
    
    architecture Behavioral_1 of K1_CB1_K3_logic is
    
    signal aux : std_logic_vector (2 downto 0);
           
    begin
    
    aux<=CB1&K1&K3;
    
     process (CLK, RST)
     begin
       if RST='0' then
          rL1_out<= (others=>'0');  
          rL2_out<= (others=>'0');  
      elsif (CLK'event and CLK='1') then 
      
            case aux is
                when "000" =>
                    rL2_out<=std_logic_vector(to_signed(1280000000, 32));   --10Mohm
                when "001" =>
                    rL2_out<=std_logic_vector(to_signed(1280000000, 32));   --10Mohm   
                when "010" =>
                    rL2_out<=std_logic_vector(to_signed(1280000000, 32));   --10Mohm
                when "011" =>
                    rL2_out<=std_logic_vector(to_signed(1280000000, 32));   --10Mohm 
                when "100" =>
                    rL2_out<=std_logic_vector(to_signed(1280000000, 32));   --10Mohm
                when "101" =>
                    rL2_out<=std_logic_vector(to_signed(29440, 32));        --220ohm 
                when "110" =>
                    rL2_out<=rL2_in;
                when "111" =>
                    rL2_out<=rL2_in; 
                when others =>
                    rL2_out<=rL2_in; 
                end case;       
                
                rL1_out<=rL1_in;                                                                                      
        
       end if;
          
     end process;
    
    
    end Behavioral_1;
