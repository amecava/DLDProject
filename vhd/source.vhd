----------------------------------------------------------------------------------
-- Company: Politecnico di Milano
-- Engineer: Davide Campagna e Mattia Calabrese
-- 
-- Create Date: 26.02.2019 17:23:31
-- Design Name: 
-- Module Name: source - Behavioral
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
use ieee.numeric_std.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

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
           o_data : out std_logic_vector(7 downto 0)
    );
end project_reti_logiche;

architecture Behavioral of project_reti_logiche is
    type state_type is (RESET, A, B, C, D, E, F, G); -- END_STATE
    signal BITMASK_IN, BITMASK_IN_old: std_logic_vector(7 downto 0);
    signal BITMASK_OUT, BITMASK_OUT_old: std_logic_vector(7 downto 0);
    signal state, next_state: state_type;
    signal X,X_old,Y,Y_old: std_logic_vector(7 downto 0);
    signal pX,pX_old: std_logic_vector(7 downto 0);
    signal MinDist, MinDist_old: std_logic_vector(7 downto 0);
    signal onehot, onehot_old: std_logic_vector(7 downto 0);
    signal counter, counter_old: std_logic_vector(15 downto 0);
    signal done: std_logic;
    
begin
    change_state: process(i_clk,i_rst,i_start)
        begin
            if i_rst='1' OR i_start='0' then
                state <= RESET;
                o_done <= '0';
            elsif i_clk='1' AND i_clk'event then
                state <= next_state;
                X_old <= X;
                Y_old <= Y;
                pX_old <= pX;
                BITMASK_IN_old <= BITMASK_IN;
                BITMASK_OUT_old <= BITMASK_OUT;
                MinDist_old <= MinDist;
                onehot_old <= onehot;
                counter_old <= counter;
                o_done <= done;
            end if;
        end process change_state;
        
    execute: process(i_clk, i_start, i_rst, i_data, state, next_state, BITMASK_IN_old, BITMASK_OUT_old, X_old, Y_old, pX_old, MinDist_old, onehot_old, counter_old)
        variable distP: std_logic_vector(7 downto 0);
        begin
            X <= X_old;
            Y <= Y_old;
            pX <= pX_old;
            BITMASK_IN <= BITMASK_IN_old;
            BITMASK_OUT <= BITMASK_OUT_old;
            MinDist <= MinDist_old;
            onehot <= onehot_old;
            counter <= counter_old;
            o_we <= '0';
            o_en <= '1';
            done <= '0';
            o_done <= '0';
            next_state <= state;
            o_data <= "00000000";
            case state is
                when RESET =>
                    if i_start='1' AND i_rst='0' then
                        o_address <= "0000000000000000";
                        counter <= "0000000000000000";
                        MinDist <= "11111111";
                        BITMASK_OUT <= "00000000";
                        onehot <= "00000001";
                        next_state <= A;
                    end if;
                when A =>
                    BITMASK_IN <= i_data;
                    if i_start='1' AND i_rst='0' then
                        o_address <= "0000000000010001"; --richiedo X del punto
                        next_state <= B;
                    end if;
                when B =>
                    X <= i_data;
                    if i_start='1' AND i_rst='0' then
                        o_address <= "0000000000010010"; --richiedo Y del punto
                        counter <= "0000000000000001";
                        next_state <= C;
                    end if;
                when C =>
                    Y <= i_data;
                    if i_start='1' AND i_rst='0' then
                        next_state <= D;
                    end if;
                when D =>
                    if i_start='1' AND i_rst='0' then
                        BITMASK_temp:=BITMASK_IN_old AND onehot_old;
                        if NOT (BITMASK_temp="00000000") then
                            o_address <= counter_old;
                            counter <= std_logic_vector(unsigned(counter_old) +1);
                            next_state <= E;
                        else 
                            onehot <= std_logic_vector(shift_left(signed(onehot_old),1));
                            counter <= std_logic_vector(unsigned(counter_old) +2);
                            next_state <= D;
                        end if;
                    end if;
                when E =>
                    pX <= i_data;
                    if i_start='1' AND i_rst='0' then
                        o_address <= counter_old;
                        counter <= std_logic_vector(unsigned(counter_old) +1);
                        next_state <= F;
                    end if;
                when F =>
                    if i_start='1' AND i_rst='0' then
                        distP := std_logic_vector(abs(signed(X_old)-signed(pX_old))+abs(signed(Y_old)-signed(i_data)));
                        if unsigned(distP)<unsigned(MinDist_old) then
                            MinDist <= distP;
                            BITMASK_OUT <= onehot_old;
                        elsif unsigned(distP)=unsigned(MinDist_old) then
                            BITMASK_OUT <= BITMASK_OUT_old OR onehot_old;
                        end if;
                        onehot <= std_logic_vector(shift_left(unsigned(onehot_old),1));
                        -- HO TOLTO DA QUI LA SCRITTURA DELLA BITMASK IN USCITA--
                        if onehot_old = "10000000" then 
                            next_state <= G;
                        else 
                            next_state <= D;
                         end if;
                    end if;
                when G =>
                    -- SCRIVO IN USCITA SOLAMENTE QUI --
                    o_address <= "0000000000010011";
                    o_data <= BITMASK_OUT;
                    o_en <= '1';
                    o_we <= '1';
                    -- QUESTO SERVE A MANTENERE DONE A 1 --
                    -- HO ELIMINATO ANCHE DONE_OLD --
                    if i_start = '0' then
                        o_done <= '0';
                        done <= '0';
                        --next_state <= END_STATE;
                    else
                        done <= '1';
                        o_done <= '1';
                    end if;
                --when END_STATE =>
                --    o_done <= '0';
                --    done <= '0';                
                when others =>
            end case;
        end process execute;
end Behavioral;
