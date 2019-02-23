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
signal Pmindist, Nmindist: std_logic_vector(8 downto 0); -- SUM <= ('0' & NUM1) + ('0' & NUM2);

signal tb_done, ram_en, ram_we: std_logic;

begin
    -- Registers / Outputs
    register_output: process (i_clk, i_rst)
    begin         
        if i_clk'event and i_clk = '1' then -- Active high
            if i_rst = '1' then
                -- Reset all registers
                Pstate <= RESET;
                Pbitmask <= (others => '1');
                Px <= (others => '0'); Py <= (others => '0'); Pc <= (others => '0');
                Pcounter <= (2 => '0', 3 => '0', others => '1');
                Pmindist <= (others => '1');
                
                -- Reset all outputs
                o_address <= (others => '0');
                o_done <= '0';
                o_en <= '0';
                o_we <= '0';
                o_data <= (others => '0');
                
            else 
                -- Update all registers
                Pstate <= Nstate;
                Pbitmask <= Nbitmask;
                Px <= Nx; Py <= Ny; Pc <= Nc;
                Pcounter <= Ncounter;
                Pmindist <= Nmindist;
                
                -- Update all outputs
                o_address(4 downto 0) <= Pcounter;
                o_done <= tb_done;
                o_en <= ram_en;
                o_we <= ram_we;
                o_data <= Pbitmask;       
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
        
        tb_done <= '0';
        ram_en <= '0';
        ram_we <= '0';

        case Pstate is
            when RESET => -- When current state is RESET
                --
            when BITMASK => -- When current state is BITMASK
                --
            
            when Y => -- When current state is X
                --
                
            when X => -- When current state is Y
                --
            
            when DONE => -- When current state is DONE
                --
            when SWAIT => -- When current state is SWAIT
                --
            when others =>
                -- Exception code
        end case;   
    end process;
    
end prl;
