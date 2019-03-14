-- library declaration
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
--use IEEE.std_logic_signed.all;
--use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_signed.all;
-- entity progetto reti logiche
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
    o_data : out std_logic_vector (7 downto 0) -- MASCHERA USCITA
    );
end project_reti_logiche;

-- architecture
architecture my_project_reti_logiche of project_reti_logiche is
    type state_type is (reset_s, askXP_s, askYP_s, anmask_s, askXC_s, dostuff_s, final_s);
    
    --signal i_data_next : std_logic_vector(7 downto 0);
    signal temp : std_logic_vector(7 downto 0);         -- registro dove salverò la mia o_mask
    signal temp_next : std_logic_vector(7 downto 0);

    signal in_mask : std_logic_vector(7 downto 0);
    signal in_mask_next : std_logic_vector(7 downto 0);

    signal min : std_logic_vector(8 downto 0);
    signal min_next : std_logic_vector(8 downto 0);

    signal p_x : std_logic_vector(7 downto 0);
    signal p_x_next : std_logic_vector(7 downto 0);
    signal p_y : std_logic_vector(7 downto 0);
    signal p_y_next : std_logic_vector(7 downto 0);

    --signal c_x : std_logic_vector(7 downto 0);
    --signal c_x_next : std_logic_vector(7 downto 0); VERRA USATO DIRETTAMENTE IL DATO IN ARRIVO DALLA MEMORIA PER RISPARMIARE UN CICLO
    signal c_y : std_logic_vector(7 downto 0);
    signal c_y_next : std_logic_vector(7 downto 0);

    signal pos : std_logic_vector(3 downto 0);
    signal pos_next : std_logic_vector(3 downto 0);

    signal counter : std_logic_vector(15 downto 0);     -- registro dove salvo la mia o_address
    signal counter_next : std_logic_vector(15 downto 0);

    signal present_state, next_state : state_type;

begin
    
    sync_process: process(i_clk, next_state, i_rst)
    
    begin 
   
    if (i_clk'event and i_clk = '1') then
        if (i_rst = '1') then
            in_mask <= "00000000";
            min <= "111111111";
            p_x <= "00000000";
            p_y <= "00000000";
            --c_x <= "00000000";
            c_y <= "00000000";
            pos <= "0111";
            counter <= "0000000000000000";
            temp <= "00000000";
            present_state <= reset_s;
            
        else
            in_mask <= in_mask_next;
            min <= min_next;
            p_x <= p_x_next;
            p_y <= p_y_next;
            --c_x <= c_x_next;
            c_y <=  c_y_next;
            pos <= pos_next;
            temp <= temp_next;
            counter <= counter_next;
            present_state <= next_state;
        end if;  
    end if;

    end process sync_process;

    comb_process: process (present_state, in_mask, min, temp, p_x, p_y, c_y, i_start, pos, i_data, counter) -- metto i current signal e ci aggiorno i next
    begin 
    
        --elenco di next signal aggiornati ai curr

        in_mask_next <= in_mask;
        min_next <= min;
        p_x_next <= p_x;
        p_y_next <= p_y;
        --c_x_next <= c_x;
        c_y_next <= c_y;
        pos_next <= pos;
        temp_next <= temp;
        counter_next <= counter;
        
        o_address <= "0000000000000000";
        o_done <= '0';
        o_en <= '0';
        o_we <= '0';
        o_data <= "00000000";

        case present_state is
            
            when reset_s =>
                if(i_start = '1') then 
                    -- chiedi la maschera
                    o_en <= '1';
                    next_state <= askYP_s;
                    
                
                else next_state <= reset_s;
                end if;
            
            when askYP_s =>
                -- salva la maschera
                in_mask_next <= i_data;

                -- chiedi y punto
                o_en <= '1';
                o_address <= "0000000000010010"; -- 18

                next_state <= askXP_s;
            
            when askXP_s =>
                -- salva y punto
                p_y_next <= i_data;

                -- chiedi x punto
                o_en <= '1';
                o_address <= "0000000000010001"; -- 17
                counter_next <= "0000000000010001";

                next_state <= anmask_s;

            when anmask_s =>
                            if(counter = "0000000000010001") -- salva x punto
                then p_x_next <= i_data;
                    counter_next <= counter - '1'; 
                    o_en <= '1';         -- chiedi y di un centroide
                    o_address <= counter;
                    next_state <= askXC_s;
                 end if;

                -- controlla se hai finito
                if (counter = "0000000000000000") then
                        o_en <= '1';
                        o_we <= '1'; -- o_data ha il valore finale con enable a 1 viene scritto
                        o_data <= temp;
                        o_address <= "0000000000010011"; -- imposta l'indirizzo dove scrivere
                        next_state <= final_s;
                        
                -- guarda la maschera finché non trovi un uno per scoprire se non chiedere una y
                elsif(in_mask(to_integer(signed(pos))) = '0') then pos_next <= pos - "0001";
                                        counter_next <= counter - "0000000000000010"; --COUNTER -2
                                        --o_en <= '1';
                                        --o_address <= counter-2;   ISTRUZIONI INUTILI PERCHE NON LEGGO, TORNO NELLO STESSO STATO
                                        next_state <= anmask_s;
                else --counter_next <=  counter - 1;
                    o_en <= '1';
                    o_address <= counter; -- CHIEDI y di un centroide
                    next_state <= askXC_s;  -- vai nello stato ask X
                end if;

            when askXC_s =>
                -- salva y centr
                c_y_next <= i_data;
               
                -- chiedi x centr
                counter_next <= counter - 1;
                o_en <= '1';
                o_address <= counter-"0000000000000001"; --SE METTO SOLO COUNTER RIMEMORIZZO LO STESSO DATO!
                
                next_state <= dostuff_s;

            when dostuff_s =>
                -- salva x centr (non serve davvero, non viene usato!)
                --c_x_next <= i_data;
                -- o_address <= o_address_next - 1;
                -- calcola e confronta dist
                if(abs((signed("00" & c_y)) - (signed("00" & p_y))) + abs((signed("00" & i_data)) - (signed("00" & p_x))) < signed ('0' & min)) then -- azzero tutta la o_mask tranne nella pos dove mi trovo
                                                            temp_next <= "00000000";
                                                            temp_next(to_integer(signed(pos))) <= '1';
                                                            min_next <= std_logic_vector(to_unsigned((abs(to_integer(signed("00" & c_y)) - to_integer(signed("00" & p_y))) + abs(to_integer(signed("00" & i_data)) - to_integer(signed("00" & p_x)))), 9));

                elsif (abs((signed("00" & c_y)) - (signed("00" & p_y))) + abs((signed("00" & i_data)) - (signed("00" & p_x))) = signed ('0' & min)) then -- aggiorna maschera uscita
                                                            temp_next(to_integer(signed(pos))) <= '1';
                end if;
                pos_next <= pos -"0001"; --decremento pos
                counter_next <= counter - '1'; -- decremento l'indirizzo della memoria
                next_state <= anmask_s;

            when final_s =>
                o_done <= '1';
                o_en <= '1';
                o_we <= '1';
                o_data <= temp;
                if (i_start = '0') then next_state <= reset_s;
                else next_state <= final_s;
                end if;

            when others => next_state <= reset_s; -- gotta cath em all

        end case;

    end process comb_process;

    --with present_state select
    --    o_done <= '1' when final_s,
    --              '0' when others;
                  
end my_project_reti_logiche;
