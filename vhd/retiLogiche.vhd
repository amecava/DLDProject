{\rtf1\ansi\ansicpg1252\cocoartf1671\cocoasubrtf200
{\fonttbl\f0\fnil\fcharset0 HelveticaNeue;}
{\colortbl;\red255\green255\blue255;\red25\green25\blue25;\red255\green255\blue255;}
{\*\expandedcolortbl;;\cssrgb\c12941\c12941\c12941;\cssrgb\c100000\c100000\c100000;}
\paperw11900\paperh16840\margl1440\margr1440\vieww20140\viewh14680\viewkind0
\deftab720
\pard\pardeftab720\sl360\partightenfactor0

\f0\fs30 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 entity project_reti_logiche is\
\'a0 \'a0 port (\
\'a0 \'a0 \'a0 \'a0 i_clk : in std_logic;\
\'a0 \'a0 \'a0 \'a0 i_start : in std_logic;\
\'a0 \'a0 \'a0 \'a0 i_rst : in std_logic;\
\'a0 \'a0 \'a0 \'a0 i_data : in std_logic_vector(7 downto 0);\
\'a0 \'a0 \'a0 \'a0 o_address : out std_logic_vector(15 downto 0);\
\'a0 \'a0 \'a0 \'a0 o_done : out std_logic;\
\'a0 \'a0 \'a0 \'a0 o_en : out std_logic;\
\'a0 \'a0 \'a0 \'a0 o_we : out std_logic;\
\'a0 \'a0 \'a0 \'a0 o_data : out std_logic_vector (7 downto 0)\
\'a0 \'a0 );\
end project_reti_logiche;\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 architecture jacopo_federico of project_reti_logiche is\
\'a0 \'a0 type state_type is (RESET, A, B, C, D, E, G, RESET_WAIT, A_wait, B_WAIT, C_WAIT, D_WAIT, E_WAIT, G_WAIT, D_WAIT_E , E_WAIT_D, CALCOLO);\
\'a0 \'a0 signal PS,NS :state_type;\
\'a0 \'a0 signal PBITMASK,NBITMASK : std_logic_vector (7 downto 0);\
\'a0 \'a0 signal PXpoint,NXpoint,PYpoint,NYpoint: std_logic_vector (7 downto 0);\
\'a0 \'a0 signal PDISTANCE, NDISTANCE: std_logic_vector(8 downto 0);\
\'a0 \'a0 signal PYcentroide, Nycentroide, PXcentroide:std_logic_vector(7 downto 0);\
\'a0 \'a0 signal Pcounter , Ncounter\'a0 : std_logic_vector(15 downto 0);\
\'a0 \'a0 signal current_distance ,Ncurrent_distance : std_logic_vector (8 downto 0);\
\'a0 \'a0 signal zero_arrey , Nzero_arrey : std_logic_vector(7 downto 0);\
begin\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \'a0 \'a0 next_state: process (i_clk,i_rst )\
\'a0 \'a0 \'a0 \'a0 begin\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 if (i_rst='1') then\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 PS<=RESET;\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 elsif(i_clk='1' and i_clk'event\'a0 ) then\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0PS<=NS;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0PBITMASK<=NBITMASK;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0PXpoint<=NXpoint;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0PYpoint<=NYpoint;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0PDISTANCE<=NDISTANCE;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0PYcentroide<=Nycentroide;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0Pcounter<=Ncounter;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0current_distance<=Ncurrent_distance;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0zero_arrey<= Nzero_arrey;\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 end if;\
\'a0 \'a0 \'a0 \'a0 end process\'a0 next_state;\
\'a0 \'a0 \'a0 combinatorial: process (i_start, PS,Pcounter, i_rst, i_data , zero_arrey, current_distance, NBITMASK, PYcentroide, PDISTANCE, PXpoint, PYpoint, PBITMASK )\
\'a0 \'a0 \'a0 begin\
\'a0 \'a0 \'a0 \'a0 o_we<='0';\
\'a0 \'a0 \'a0 \'a0 o_en <='1';\
\'a0 \'a0 \'a0 \'a0 o_done<='0';\
\'a0 \'a0 \'a0 \'a0 Nzero_arrey<=zero_arrey;\
\'a0 \'a0 \'a0 \'a0 NS<=PS;\
\'a0 \'a0 \'a0 \'a0 NBITMASK<=PBITMASK;\
\'a0 \'a0 \'a0 \'a0 NXpoint<=PXpoint;\
\'a0 \'a0 \'a0 \'a0 NYpoint<=PYpoint;\
\'a0 \'a0 \'a0 \'a0 NDISTANCE<=PDISTANCE;\
\'a0 \'a0 \'a0 \'a0 NYcentroide<=Pycentroide;\
\'a0 \'a0 \'a0 \'a0 Ncounter<=Pcounter;\
\'a0 \'a0 \'a0 \'a0 Ncurrent_distance<=current_distance;\
\'a0 \'a0 \'a0 \'a0 o_address <= Pcounter;\
\'a0 \'a0 \'a0 \'a0 o_data <= PBITMASK;\
\'a0 \'a0 \'a0 \'a0\'a0\
\'a0 \'a0 \'a0 \'a0 case PS is\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 when RESET =>\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 if (i_start='1' and i_rst ='0'\'a0 ) then\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 o_address<= (others => '0');\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NS<=RESET_WAIT;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 end if;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0when\'a0 RESET_WAIT =>\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NS<=A;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 o_en <='0';\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 when A =>\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0NBITMASK<=i_data;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 if (i_start='1' and i_rst='0' ) then\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 o_address<= "0000000000010010";-- 18 richiesta alla ram per y del punto\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0NS<=A_WAIT;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0end if;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 when A_wait =>\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0o_en <='0';\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0NS<=B;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0when B=>\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NYpoint<=i_data;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NBITMASK<=PBITMASK;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 if (i_start='1' and i_rst='0' ) then\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 o_address<="0000000000010001";-- 17 richiesta alla ram per x del punto\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NS<=B_wait;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 Ncounter<="0000000000010000";\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 end if;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 when B_WAIT =>\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0o_en <='0';\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0Ncounter<=Pcounter;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0NYpoint<=PYpoint;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0NBITMASK<=PBITMASK;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0Nzero_arrey<="00000000";\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0NS<=C;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 when C=>\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NYpoint<=PYpoint;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NBITMASK<=PBITMASK;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NXpoint<=i_data;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 Ncounter<=std_logic_vector(unsigned(Pcounter)-1);\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 if (i_start='1' and i_rst='0' ) then\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 o_address<= Pcounter;-- richeista per il 16 cioe' y del primo centroide\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NS<=C_WAIT;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 end if ;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0WHEN C_WAIT=>\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0o_en <='0';\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0NXpoint<=PXpoint;\'a0 \'a0 \'a0 \'a0 \'a0 \'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0NYpoint<=PYpoint;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0NBITMASK<=PBITMASK;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0NDISTANCE<="111111111";\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0Ncounter<=Pcounter;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0NS<=D;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 when D=>\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NYpoint<=PYpoint;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NXpoint<=PXpoint;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 Nycentroide<=i_data;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NBITMASK<=PBITMASK;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NDISTANCE<=PDISTANCE;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 Ncurrent_distance<="111111111";\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 if (Pcounter="0000000000000000" and i_start='1' and i_rst='0'\'a0 ) then\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0o_we<='1';\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0o_address<="0000000000010011";\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0o_data<=PBITMASK;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0NS<=G_WAIT;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 elsif\'a0 (i_start='1' and i_rst='0' ) then\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 o_address<= Pcounter; -- richiesta i esima x\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 if (PBITMASK( to_integer(shift_right(unsigned(Pcounter), 1))) = '1') then\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 Ncounter<=std_logic_vector(unsigned(Pcounter)-1);\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NS<=D_WAIT_E;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 elsif (signed (std_logic_vector(unsigned(Pcounter)-2))>0) then\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 Ncounter<=std_logic_vector(unsigned(Pcounter)-2);\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NS<=D_WAIT;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 o_address<=std_logic_vector(unsigned(Pcounter)-1);\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0else\'a0\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 o_we<='1';\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 o_address<="0000000000010011";\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 o_data<=PBITMASK;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NS<=G_WAIT;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 end if;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0end if;\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 WHEN D_WAIT_E =>\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 o_en <='0';\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NYpoint<=PYpoint;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NXpoint<=PXpoint;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 Nycentroide<=PYcentroide;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NDISTANCE<=PDISTANCE;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NBITMASK<=PBITMASK;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 Ncounter<=Pcounter;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NS<=E;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 when D_WAIT =>\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0o_en <='0';\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0NYpoint<=PYpoint;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0Nycentroide<=PYcentroide;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0NDISTANCE<=PDISTANCE;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0NBITMASK<=PBITMASK;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0Ncounter<=Pcounter;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0NS<=D;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 when E=>\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 o_address<=Pcounter;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NYpoint<=PYpoint;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NXpoint<=PXpoint;\'a0\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NDISTANCE<=PDISTANCE;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NBITMASK<=PBITMASK;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0-- PXcentroide<=i_data;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 Nycentroide<=PYcentroide;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 if (i_data>= PXpoint\'a0 \'a0) then\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 if (PYcentroide >=\'a0 \'a0PYpoint ) then\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 Ncurrent_distance<= std_logic_vector(\'a0 '0' &( unsigned ( unsigned\'a0 (i_data)- unsigned (PXpoint ))) +('0' &\'a0 unsigned ( unsigned (PYcentroide)- unsigned (PYpoint) )));\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 else\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 Ncurrent_distance<=std_logic_vector(\'a0 \'a0 '0' & unsigned ( unsigned\'a0 (i_data)- unsigned (PXpoint )) + ( '0'& unsigned ( unsigned (PYpoint)- unsigned (PYcentroide) )));\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 end if ;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 elsif (i_data< PXpoint ) then\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 if (PYcentroide >=\'a0 \'a0PYpoint ) then\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 Ncurrent_distance<= std_logic_vector(\'a0 \'a0'0' & unsigned ( unsigned\'a0 (PXpoint)- unsigned (i_data )) +\'a0 ( '0' & unsigned ( unsigned (PYcentroide)- unsigned (PYpoint) )));\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 else\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 Ncurrent_distance<=std_logic_vector(\'a0 \'a0 '0' & unsigned ( unsigned\'a0 (PXpoint)- unsigned (i_data )) + ('0' & unsigned ( unsigned (PYpoint)- unsigned (PYcentroide) )));\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 end if ;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0end if;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0Ncounter<=Pcounter;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0NS<=CALCOLO;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0when CALCOLO=>\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 o_en <='0';\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NYpoint<=PYpoint;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NXpoint<=PXpoint;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 if (Pcounter/="0000000000000000" and i_start='1' and i_rst='0'\'a0 ) then\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 Ncounter<=std_logic_vector(unsigned(Pcounter)-1);\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0else\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 Ncounter<=Pcounter;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 end if;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 if (current_distance < PDISTANCE\'a0 ) then\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NDISTANCE<= current_distance;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NBITMASK(7 downto\'a0 (to_integer(shift_right(unsigned(Pcounter), 1)))) <= zero_arrey(7 downto\'a0 (to_integer(shift_right(unsigned(Pcounter), 1))));\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NBITMASK((to_integer(shift_right(unsigned(Pcounter), 1))) downto 0)<=\'a0 PBITMASK((to_integer(shift_right(unsigned(Pcounter), 1))) downto 0);\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0elsif (current_distance > PDISTANCE ) then\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NDISTANCE<=PDISTANCE;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NBITMASK<=PBITMASK;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NBITMASK(to_integer(shift_right(unsigned(Pcounter), 1) ))<='0';\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0else\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NBITMASK<=PBITMASK;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NDISTANCE<=PDISTANCE;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0end if ;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0NS<=E_WAIT_D;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0when E_WAIT_D=>\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 o_en <='0';\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NYpoint<=PYpoint;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NXpoint<=PXpoint;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 Nycentroide<=PYcentroide;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NDISTANCE<=PDISTANCE;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NBITMASK<=PBITMASK;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 Ncounter<=Pcounter;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NS<=D;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0when G_WAIT =>\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 o_we<='1';\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 o_en <='1';\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 o_address<="0000000000010011";\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 o_data<=PBITMASK;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NBITMASK<=PBITMASK;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NS<=G;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0when G=>\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NBITMASK<=PBITMASK;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 o_done<='1';\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 if (i_start='1' and i_rst ='0'\'a0 ) then\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NS<=G;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 elsif (i_start='0') then\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 o_done<='0';\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 NS<= RESET;\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 end if;\'a0\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 when others =>\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0\'a0\
\'a0 \'a0 \'a0 \'a0 \'a0end case ;\
\'a0 \'a0 \'a0end process combinatorial;\
\'a0 end jacopo_federico;\
}