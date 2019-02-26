----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:
-- Design Name: 
-- Module Name: project_reti_logiche
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


architecture prl of project_reti_logiche is
type state_type is (RESET, BITMASK, Y, X, DONE, SWAIT);

signal Pstate, Nstate: state_type;

signal Pbitmask, Nbitmask: std_logic_vector(7 downto 0);
signal Px, Nx, Py, Ny, Pc, Nc: std_logic_vector(7 downto 0);

signal Pcounter, Ncounter: std_logic_vector(4 downto 0);
signal Pmindist, Nmindist, distance: std_logic_vector(8 downto 0);

begin
    -- Registers / Outputs
    register_output: process (i_clk, i_rst)
    begin         
        if i_clk'event and i_clk = '0' then -- Active low
            if i_rst = '1' then
                -- Reset all registers
                Pstate <= RESET;
                Pbitmask <= (others => '1');
                Px <= (others => '0'); Py <= (others => '0'); Pc <= (others => '0');
                Pcounter <= "10010";
                Pmindist <= (others => '1');     
            else 
                -- Update all registers
                Pstate <= Nstate;
                Pbitmask <= Nbitmask;
                Px <= Nx; Py <= Ny; Pc <= Nc;
                Pcounter <= Ncounter;
                Pmindist <= Nmindist;     
            end if;
        end if;     
    end process;
    
    -- Delta (next state) / Lambda (output) functions
    delta_lambda: process (Pstate, Pbitmask, Px, Py, Pcounter, Pmindist, i_start)
    begin
        -- Set defaults 
        Nstate <= Pstate;
        Nbitmask <= Pbitmask;
        Nx <= Px; Ny <= Py; Nc <= Pc;
        Ncounter <= Pcounter;
        Nmindist <= Pmindist;
        
        o_address <= (others => '0');
        o_done <= '0';
        o_en <= '0';
        o_we <= '0';
        o_data <= (others => '0');

        case Pstate is
            when RESET => -- When current state is RESET
                if i_start = '1' then
                    Nstate <= BITMASK;
                    
                    o_en <= '1';
                    -- o_address(4 to 0) <= (others => '0');  
                end if;
            when BITMASK => -- When current state is BITMASK
                Ncounter <= std_logic_vector(unsigned(Pcounter) - 1);
                
                Nbitmask <= i_data;
                
                if i_start = '1' then
                    Nstate <= Y;
                    
                    o_en <= '1';
                    o_address(4 downto 0) <= Pcounter;
                end if;
            
            when Y => -- When current state is X
                Ncounter <= std_logic_vector(unsigned(Pcounter) - 1);
                
                if i_start = '1' then
                    if Pcounter = "10001" then
                        Ny <= i_data;
                        
                        Nstate <= X;
                            
                        o_en <= '1';
                        o_address(4 downto 0) <= Pcounter;
                    elsif Pcounter = "00000" then
                        Nstate <= DONE;
                        
                        o_address(4 downto 0) <= "10011";
                        o_en <= '1';
                        o_we <= '1';
                        o_data <= Pbitmask;       
                    else
                        Nc <= i_data;
                        
                        if Pbitmask(to_integer(shift_right(unsigned(Pcounter), 1))) = '1' then
                            Nstate <= X;
                            
                            o_en <= '1';
                            o_address(4 downto 0) <= Pcounter;
                        else
                            Nstate <= Y;
                            
                            o_en <= '1';
                            o_address(4 downto 0) <= std_logic_vector(unsigned(Pcounter) - 1);
                            
                            Ncounter <=  std_logic_vector(unsigned(Pcounter) - 2);
                        end if;   
                    end if;
                end if;
                
            when X => -- When current state is Y
                if Pcounter > "00000" then
                    Ncounter <= std_logic_vector(unsigned(Pcounter) - 1);
                end if;
                
                if Pcounter = "10000" then
                    Nx <= i_data;
                else
                    -- Distance                    
                    if Pmindist > std_logic_vector(abs(signed('0' & Px) - signed('0' & i_data)) + abs(signed('0' & Py) - signed('0' & Pc))) then
                        Nbitmask(7 downto to_integer(shift_right(unsigned(Pcounter), 1)) + 1) <= (others => '0');
                        
                        Nmindist <= std_logic_vector(abs(signed('0' & Px) - signed('0' & i_data)) + abs(signed('0' & Py) - signed('0' & Pc)));
                        
                    elsif Pmindist < std_logic_vector(abs(signed('0' & Px) - signed('0' & i_data)) + abs(signed('0' & Py) - signed('0' & Pc))) then
                        Nbitmask(to_integer(shift_right(unsigned(Pcounter), 1))) <= '0';
                    end if;
                        
                end if;
                
                if i_start = '1' then
                    Nstate <= Y;
                    
                    o_en <= '1';
                    o_address(4 downto 0) <= Pcounter;
                end if;
            
            when DONE => -- When current state is DONE
                if i_start = '1' then
                    Nstate <= SWAIT;
                    
                    o_done <= '1';
                 end if;
            when SWAIT => -- When current state is SWAIT
                if i_start = '1' then
                    Nstate <= SWAIT;
                    
                    o_done <= '1';
                else
                    Nstate <= RESET;
                end if;       
            when others =>
                -- Exception code
        end case;   
    end process;
    
end prl;
