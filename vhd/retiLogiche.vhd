library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;


entity project_reti_logiche is
    port (
        i_clk : in std_logic;
        i_start : in std_logic;
        i_rst : in std_logic;
        i_data : in std_logic_vector(7 downto 0);
        o_address : out std_logic_vector(15 downto 0);
        o_done : out std_logic;
        o_en : out std_logic;
        o_we : out std_logic;
        o_data : out std_logic_vector (7 downto 0)
    );
end project_reti_logiche;

architecture jacopo_federico of project_reti_logiche is
    type state_type is (RESET, A, B, C, D, E, G, RESET_WAIT, A_wait, B_WAIT, C_WAIT, D_WAIT, E_WAIT, G_WAIT, D_WAIT_E , E_WAIT_D, CALCOLO);
    signal PS,NS :state_type;
    signal PBITMASK,NBITMASK : std_logic_vector (7 downto 0);
    signal PXpoint,NXpoint,PYpoint,NYpoint: std_logic_vector (7 downto 0);
    signal PDISTANCE, NDISTANCE: std_logic_vector(8 downto 0);
    signal PYcentroide, Nycentroide, PXcentroide:std_logic_vector(7 downto 0);
    signal Pcounter , Ncounter  : std_logic_vector(15 downto 0);
    signal current_distance ,Ncurrent_distance : std_logic_vector (8 downto 0);
    signal zero_arrey , Nzero_arrey : std_logic_vector(7 downto 0);
begin

    next_state: process (i_clk,i_rst )
        begin 
            if (i_rst='1') then 
                PS<=RESET;               
            
            elsif(i_clk='1' and i_clk'event  ) then
                 PS<=NS;
                 PBITMASK<=NBITMASK;
                 PXpoint<=NXpoint;
                 PYpoint<=NYpoint;
                 PDISTANCE<=NDISTANCE;
                 PYcentroide<=Nycentroide;
                 Pcounter<=Ncounter;
                 current_distance<=Ncurrent_distance;
                 zero_arrey<= Nzero_arrey;                 
            end if;
        end process  next_state;
      combinatorial: process (i_start, PS,Pcounter, i_rst, i_data , zero_arrey, current_distance, NBITMASK, PYcentroide, PDISTANCE, PXpoint, PYpoint, PBITMASK )
      begin
        o_we<='0';
        o_en <='1';
        o_done<='0';
        Nzero_arrey<=zero_arrey;
        NS<=PS;
        NBITMASK<=PBITMASK;
        NXpoint<=PXpoint;
        NYpoint<=PYpoint;
        NDISTANCE<=PDISTANCE;
        NYcentroide<=Pycentroide;
        Ncounter<=Pcounter;
        Ncurrent_distance<=current_distance;
        o_address <= Pcounter;
        o_data <= PBITMASK;
        
        case PS is 
            when RESET =>
                if (i_start='1' and i_rst ='0'  ) then 
                    o_address<= (others => '0');
                    NS<=RESET_WAIT;
                    
                    
                    
                    
                    
                    
                end if;
           when  RESET_WAIT =>
                    NS<=A;
                    o_en <='0';
                   
                
            when A =>
                 NBITMASK<=i_data;
                
                if (i_start='1' and i_rst='0' ) then
                    o_address<= "0000000000010010";-- 18 richiesta alla ram per y del punto 
                     NS<=A_WAIT;
                     
                 end if;
            when A_wait =>
                 o_en <='0';
                 NS<=B;
                 
                   
             when B=> 
                NYpoint<=i_data;
                NBITMASK<=PBITMASK;
                
                if (i_start='1' and i_rst='0' ) then
                    o_address<="0000000000010001";-- 17 richiesta alla ram per x del punto 
                    NS<=B_wait;
                    Ncounter<="0000000000010000";
                    
                end if;
                when B_WAIT =>
                 o_en <='0';
                 Ncounter<=Pcounter;
                 NYpoint<=PYpoint;
                 NBITMASK<=PBITMASK;
                 Nzero_arrey<="00000000";
                 NS<=C;
                    
            when C=> 
                NYpoint<=PYpoint;
                NBITMASK<=PBITMASK;
                NXpoint<=i_data;
                Ncounter<=std_logic_vector(unsigned(Pcounter)-1);
                if (i_start='1' and i_rst='0' ) then
                    o_address<= Pcounter;-- richeista per il 16 cioe' y del primo centroide 
                    NS<=C_WAIT;
                    
                end if ;
             WHEN C_WAIT=>
                 o_en <='0';
                 NXpoint<=PXpoint;           
                 NYpoint<=PYpoint;
                 NBITMASK<=PBITMASK;
                 NDISTANCE<="111111111";
                 Ncounter<=Pcounter;
                 NS<=D;
                 
                
            when D=> 
                NYpoint<=PYpoint;
                NXpoint<=PXpoint;
                Nycentroide<=i_data;
                NBITMASK<=PBITMASK;
                NDISTANCE<=PDISTANCE;
                Ncurrent_distance<="111111111";
                
                
                
                if (Pcounter="0000000000000000" and i_start='1' and i_rst='0'  ) then 
                   o_we<='1';
                   o_address<="0000000000010011";
                   o_data<=PBITMASK;
                   NS<=G_WAIT;
                   
                   
                
                
                elsif  (i_start='1' and i_rst='0' ) then
                        o_address<= Pcounter; -- richiesta i esima x
                        if (PBITMASK( to_integer(shift_right(unsigned(Pcounter), 1))) = '1') then
                            Ncounter<=std_logic_vector(unsigned(Pcounter)-1);
                            NS<=D_WAIT_E;
                       
                            elsif (signed (std_logic_vector(unsigned(Pcounter)-2))>0) then 
                                Ncounter<=std_logic_vector(unsigned(Pcounter)-2);
                                NS<=D_WAIT;
                                o_address<=std_logic_vector(unsigned(Pcounter)-1);
                             else  
                                o_we<='1';
                                o_address<="0000000000010011";
                                o_data<=PBITMASK;
                                NS<=G_WAIT;
                                
                            
                        end if;
                 end if;                
                WHEN D_WAIT_E =>
                    o_en <='0';
                    NYpoint<=PYpoint;
                    NXpoint<=PXpoint;
                    Nycentroide<=PYcentroide;
                    NDISTANCE<=PDISTANCE;
                    NBITMASK<=PBITMASK;
                    Ncounter<=Pcounter;
                    NS<=E;
                when D_WAIT =>
                     o_en <='0';
                     NYpoint<=PYpoint;
                     Nycentroide<=PYcentroide;
                     NDISTANCE<=PDISTANCE;
                     NBITMASK<=PBITMASK;
                     Ncounter<=Pcounter;
                     NS<=D;
                     
                    
                    
                    
                    
                
            when E=>
                
                o_address<=Pcounter;
                NYpoint<=PYpoint;
                NXpoint<=PXpoint;  
                NDISTANCE<=PDISTANCE;
                NBITMASK<=PBITMASK;
               -- PXcentroide<=i_data;
                Nycentroide<=PYcentroide;
                if (i_data>= PXpoint   ) then 
                    if (PYcentroide >=   PYpoint ) then 
                        Ncurrent_distance<= std_logic_vector(  '0' &( unsigned ( unsigned  (i_data)- unsigned (PXpoint ))) +('0' &  unsigned ( unsigned (PYcentroide)- unsigned (PYpoint) )));
                    else 
                        Ncurrent_distance<=std_logic_vector(    '0' & unsigned ( unsigned  (i_data)- unsigned (PXpoint )) + ( '0'& unsigned ( unsigned (PYpoint)- unsigned (PYcentroide) ))); 
                    end if ;
                elsif (i_data< PXpoint ) then 
                    if (PYcentroide >=   PYpoint ) then 
                        Ncurrent_distance<= std_logic_vector(   '0' & unsigned ( unsigned  (PXpoint)- unsigned (i_data )) +  ( '0' & unsigned ( unsigned (PYcentroide)- unsigned (PYpoint) )));
                    else 
                        Ncurrent_distance<=std_logic_vector(    '0' & unsigned ( unsigned  (PXpoint)- unsigned (i_data )) + ('0' & unsigned ( unsigned (PYpoint)- unsigned (PYcentroide) ))); 
                    end if ;
               end if;
               Ncounter<=Pcounter;
               NS<=CALCOLO;
               
               
               
           when CALCOLO=>
                o_en <='0';
                NYpoint<=PYpoint;
                NXpoint<=PXpoint;
             
                
                if (Pcounter/="0000000000000000" and i_start='1' and i_rst='0'  ) then 
                    Ncounter<=std_logic_vector(unsigned(Pcounter)-1);
                 else 
                    Ncounter<=Pcounter;
                end if;
                    
                
                if (current_distance < PDISTANCE  ) then 
                    NDISTANCE<= current_distance;
                    NBITMASK(7 downto  (to_integer(shift_right(unsigned(Pcounter), 1)))) <= zero_arrey(7 downto  (to_integer(shift_right(unsigned(Pcounter), 1))));
                    NBITMASK((to_integer(shift_right(unsigned(Pcounter), 1))) downto 0)<=  PBITMASK((to_integer(shift_right(unsigned(Pcounter), 1))) downto 0);
                 
                 elsif (current_distance > PDISTANCE ) then 
                    NDISTANCE<=PDISTANCE;
                    NBITMASK<=PBITMASK;
                    NBITMASK(to_integer(shift_right(unsigned(Pcounter), 1) ))<='0';
                 else 
                    NBITMASK<=PBITMASK;
                    NDISTANCE<=PDISTANCE;
                 end if ;
                 NS<=E_WAIT_D;
                 
             when E_WAIT_D=> 
                o_en <='0';
                NYpoint<=PYpoint;
                NXpoint<=PXpoint;
                Nycentroide<=PYcentroide;
                NDISTANCE<=PDISTANCE;
                NBITMASK<=PBITMASK;
                Ncounter<=Pcounter;
                NS<=D;
                    
             when G_WAIT =>
                o_we<='1';
                o_en <='1';
                
                o_address<="0000000000010011";
                o_data<=PBITMASK;
                NBITMASK<=PBITMASK;
                NS<=G;
                     
                 
             when G=>
                NBITMASK<=PBITMASK;
                o_done<='1';
                if (i_start='1' and i_rst ='0'  ) then 
                    NS<=G;
                elsif (i_start='0') then
                    o_done<='0';
                    NS<= RESET;
                end if;  
              when others =>
                        
                
         end case ;
     end process combinatorial;
  end jacopo_federico;