// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Feb 28 00:37:32 2019
// Host        : DESKTOP-JLUE0MA running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/Amedeo
//               Cavallo/Desktop/digitallogicdesign/vivado/project_reti_logiche.sim/sim_1/impl/timing/xsim/project_tb_time_impl.v}
// Design      : project_reti_logiche
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "38874a94" *) 
(* NotValidForBitStream *)
module project_reti_logiche
   (i_clk,
    i_start,
    i_rst,
    i_data,
    o_address,
    o_done,
    o_en,
    o_we,
    o_data);
  input i_clk;
  input i_start;
  input i_rst;
  input [7:0]i_data;
  output [15:0]o_address;
  output o_done;
  output o_en;
  output o_we;
  output [7:0]o_data;

  wire \FSM_sequential_Pstate[0]_i_1_n_0 ;
  wire \FSM_sequential_Pstate[0]_i_2_n_0 ;
  wire \FSM_sequential_Pstate[1]_i_1_n_0 ;
  wire \FSM_sequential_Pstate[1]_i_2_n_0 ;
  wire \FSM_sequential_Pstate[1]_i_3_n_0 ;
  wire \FSM_sequential_Pstate[2]_i_1_n_0 ;
  wire [8:0]L;
  wire [0:0]L0;
  wire [7:1]L00_in;
  wire [7:0]L3;
  wire [5:2]Nbitmask;
  wire [2:2]Nbitmask3;
  wire Nc;
  wire Ncounter;
  wire Nmindist;
  wire Nx;
  wire Ny;
  wire [7:0]Pbitmask;
  wire \Pbitmask[0]_i_1_n_0 ;
  wire \Pbitmask[0]_i_2_n_0 ;
  wire \Pbitmask[0]_i_3_n_0 ;
  wire \Pbitmask[1]_i_1_n_0 ;
  wire \Pbitmask[1]_i_2_n_0 ;
  wire \Pbitmask[1]_i_3_n_0 ;
  wire \Pbitmask[2]_i_1_n_0 ;
  wire \Pbitmask[2]_i_3_n_0 ;
  wire \Pbitmask[3]_i_1_n_0 ;
  wire \Pbitmask[3]_i_2_n_0 ;
  wire \Pbitmask[3]_i_3_n_0 ;
  wire \Pbitmask[4]_i_1_n_0 ;
  wire \Pbitmask[4]_i_2_n_0 ;
  wire \Pbitmask[4]_i_3_n_0 ;
  wire \Pbitmask[5]_i_10_n_0 ;
  wire \Pbitmask[5]_i_11_n_0 ;
  wire \Pbitmask[5]_i_12_n_0 ;
  wire \Pbitmask[5]_i_13_n_0 ;
  wire \Pbitmask[5]_i_14_n_0 ;
  wire \Pbitmask[5]_i_15_n_0 ;
  wire \Pbitmask[5]_i_16_n_0 ;
  wire \Pbitmask[5]_i_17_n_0 ;
  wire \Pbitmask[5]_i_18_n_0 ;
  wire \Pbitmask[5]_i_19_n_0 ;
  wire \Pbitmask[5]_i_1_n_0 ;
  wire \Pbitmask[5]_i_3_n_0 ;
  wire \Pbitmask[5]_i_4_n_0 ;
  wire \Pbitmask[5]_i_5_n_0 ;
  wire \Pbitmask[6]_i_1_n_0 ;
  wire \Pbitmask[6]_i_2_n_0 ;
  wire \Pbitmask[6]_i_3_n_0 ;
  wire \Pbitmask[6]_i_4_n_0 ;
  wire \Pbitmask[7]_i_1_n_0 ;
  wire \Pbitmask[7]_i_2_n_0 ;
  wire \Pbitmask[7]_i_3_n_0 ;
  wire \Pbitmask_reg[5]_i_9_n_0 ;
  wire [7:0]Pc;
  wire \Pc[7]_i_2_n_0 ;
  wire \Pc[7]_i_3_n_0 ;
  wire \Pc[7]_i_4_n_0 ;
  wire \Pc[7]_i_5_n_0 ;
  wire \Pc[7]_i_6_n_0 ;
  wire [4:0]Pcounter;
  wire \Pcounter[0]_i_1_n_0 ;
  wire \Pcounter[1]_i_1_n_0 ;
  wire \Pcounter[2]_i_1_n_0 ;
  wire \Pcounter[3]_i_1_n_0 ;
  wire \Pcounter[4]_i_2_n_0 ;
  wire \Pcounter[4]_i_3_n_0 ;
  wire [8:0]Pmindist;
  wire \Pmindist[3]_i_10_n_0 ;
  wire \Pmindist[3]_i_11_n_0 ;
  wire \Pmindist[3]_i_12_n_0 ;
  wire \Pmindist[3]_i_13_n_0 ;
  wire \Pmindist[3]_i_6_n_0 ;
  wire \Pmindist[3]_i_7_n_0 ;
  wire \Pmindist[3]_i_8_n_0 ;
  wire \Pmindist[3]_i_9_n_0 ;
  wire \Pmindist[7]_i_10_n_0 ;
  wire \Pmindist[7]_i_11_n_0 ;
  wire \Pmindist[7]_i_13_n_0 ;
  wire \Pmindist[7]_i_14_n_0 ;
  wire \Pmindist[7]_i_15_n_0 ;
  wire \Pmindist[7]_i_16_n_0 ;
  wire \Pmindist[7]_i_17_n_0 ;
  wire \Pmindist[7]_i_6_n_0 ;
  wire \Pmindist[7]_i_7_n_0 ;
  wire \Pmindist[7]_i_8_n_0 ;
  wire \Pmindist[7]_i_9_n_0 ;
  wire \Pmindist[8]_i_11_n_0 ;
  wire \Pmindist[8]_i_14_n_0 ;
  wire \Pmindist[8]_i_15_n_0 ;
  wire \Pmindist[8]_i_16_n_0 ;
  wire \Pmindist[8]_i_17_n_0 ;
  wire \Pmindist[8]_i_18_n_0 ;
  wire \Pmindist[8]_i_19_n_0 ;
  wire \Pmindist[8]_i_20_n_0 ;
  wire \Pmindist[8]_i_21_n_0 ;
  wire \Pmindist[8]_i_22_n_0 ;
  wire \Pmindist[8]_i_23_n_0 ;
  wire \Pmindist[8]_i_24_n_0 ;
  wire \Pmindist[8]_i_25_n_0 ;
  wire \Pmindist[8]_i_26_n_0 ;
  wire \Pmindist[8]_i_27_n_0 ;
  wire \Pmindist[8]_i_28_n_0 ;
  wire \Pmindist[8]_i_29_n_0 ;
  wire \Pmindist[8]_i_4_n_0 ;
  wire \Pmindist[8]_i_6_n_0 ;
  wire \Pmindist[8]_i_7_n_0 ;
  wire \Pmindist[8]_i_8_n_0 ;
  wire \Pmindist_reg[3]_i_1_n_0 ;
  wire \Pmindist_reg[3]_i_5_n_0 ;
  wire \Pmindist_reg[7]_i_12_n_0 ;
  wire \Pmindist_reg[7]_i_12_n_4 ;
  wire \Pmindist_reg[7]_i_12_n_5 ;
  wire \Pmindist_reg[7]_i_12_n_6 ;
  wire \Pmindist_reg[7]_i_1_n_0 ;
  wire \Pmindist_reg[8]_i_10_n_0 ;
  wire \Pmindist_reg[8]_i_10_n_4 ;
  wire \Pmindist_reg[8]_i_10_n_5 ;
  wire \Pmindist_reg[8]_i_10_n_6 ;
  wire \Pmindist_reg[8]_i_10_n_7 ;
  wire \Pmindist_reg[8]_i_12_n_3 ;
  wire \Pmindist_reg[8]_i_13_n_0 ;
  wire \Pmindist_reg[8]_i_5_n_0 ;
  wire \Pmindist_reg[8]_i_9_n_3 ;
  wire [2:0]Pstate;
  wire [7:0]Px;
  wire [7:0]Py;
  wire eqOp;
  wire gtOp;
  wire i_clk;
  wire i_clk_IBUF;
  wire i_clk_IBUF_BUFG;
  wire [7:0]i_data;
  wire [7:0]i_data_IBUF;
  wire i_rst;
  wire i_rst_IBUF;
  wire i_start;
  wire i_start_IBUF;
  wire ltOp;
  wire [15:0]o_address;
  wire [4:0]o_address_OBUF;
  wire \o_address_OBUF[3]_inst_i_2_n_0 ;
  wire \o_address_OBUF[3]_inst_i_3_n_0 ;
  wire \o_address_OBUF[3]_inst_i_4_n_0 ;
  wire \o_address_OBUF[4]_inst_i_2_n_0 ;
  wire \o_address_OBUF[4]_inst_i_3_n_0 ;
  wire \o_address_OBUF[4]_inst_i_4_n_0 ;
  wire \o_address_OBUF[4]_inst_i_5_n_0 ;
  wire \o_address_OBUF[4]_inst_i_6_n_0 ;
  wire [7:0]o_data;
  wire [7:0]o_data_OBUF;
  wire \o_data_OBUF[7]_inst_i_2_n_0 ;
  wire o_done;
  wire o_done_OBUF;
  wire o_en;
  wire o_en_OBUF;
  wire o_we;
  wire o_we_OBUF;
  wire o_we_OBUF_inst_i_2_n_0;
  wire o_we_OBUF_inst_i_3_n_0;
  wire o_we_OBUF_inst_i_4_n_0;
  wire o_we_OBUF_inst_i_5_n_0;
  wire o_we_OBUF_inst_i_6_n_0;
  wire o_we_OBUF_inst_i_7_n_0;
  wire [3:1]\NLW_Pbitmask_reg[5]_i_7_CO_UNCONNECTED ;
  wire [3:0]\NLW_Pbitmask_reg[5]_i_7_O_UNCONNECTED ;
  wire [2:0]\NLW_Pbitmask_reg[5]_i_9_CO_UNCONNECTED ;
  wire [3:0]\NLW_Pbitmask_reg[5]_i_9_O_UNCONNECTED ;
  wire [2:0]\NLW_Pmindist_reg[3]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_Pmindist_reg[3]_i_5_CO_UNCONNECTED ;
  wire [2:0]\NLW_Pmindist_reg[7]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_Pmindist_reg[7]_i_12_CO_UNCONNECTED ;
  wire [2:0]\NLW_Pmindist_reg[8]_i_10_CO_UNCONNECTED ;
  wire [3:1]\NLW_Pmindist_reg[8]_i_12_CO_UNCONNECTED ;
  wire [3:0]\NLW_Pmindist_reg[8]_i_12_O_UNCONNECTED ;
  wire [2:0]\NLW_Pmindist_reg[8]_i_13_CO_UNCONNECTED ;
  wire [3:0]\NLW_Pmindist_reg[8]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_Pmindist_reg[8]_i_2_O_UNCONNECTED ;
  wire [3:1]\NLW_Pmindist_reg[8]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_Pmindist_reg[8]_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_Pmindist_reg[8]_i_5_CO_UNCONNECTED ;
  wire [3:0]\NLW_Pmindist_reg[8]_i_5_O_UNCONNECTED ;
  wire [3:1]\NLW_Pmindist_reg[8]_i_9_CO_UNCONNECTED ;
  wire [3:0]\NLW_Pmindist_reg[8]_i_9_O_UNCONNECTED ;

initial begin
 $sdf_annotate("project_tb_time_impl.sdf",,,,"tool_control");
end
  LUT5 #(
    .INIT(32'hF00AF00C)) 
    \FSM_sequential_Pstate[0]_i_1 
       (.I0(\FSM_sequential_Pstate[0]_i_2_n_0 ),
        .I1(i_start_IBUF),
        .I2(Pstate[2]),
        .I3(Pstate[0]),
        .I4(Pstate[1]),
        .O(\FSM_sequential_Pstate[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AABAAAAAAAAAAAA)) 
    \FSM_sequential_Pstate[0]_i_2 
       (.I0(\Pc[7]_i_2_n_0 ),
        .I1(Pcounter[2]),
        .I2(Pcounter[1]),
        .I3(Pcounter[3]),
        .I4(Pcounter[0]),
        .I5(Pcounter[4]),
        .O(\FSM_sequential_Pstate[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEEFFEE00CCCCC0)) 
    \FSM_sequential_Pstate[1]_i_1 
       (.I0(\FSM_sequential_Pstate[1]_i_2_n_0 ),
        .I1(\FSM_sequential_Pstate[1]_i_3_n_0 ),
        .I2(i_start_IBUF),
        .I3(Pstate[2]),
        .I4(Pstate[0]),
        .I5(Pstate[1]),
        .O(\FSM_sequential_Pstate[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    \FSM_sequential_Pstate[1]_i_2 
       (.I0(Pstate[0]),
        .I1(Pcounter[2]),
        .I2(Pcounter[1]),
        .I3(Pcounter[3]),
        .I4(Pcounter[0]),
        .I5(Pcounter[4]),
        .O(\FSM_sequential_Pstate[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_Pstate[1]_i_3 
       (.I0(Pstate[2]),
        .I1(Pstate[0]),
        .I2(o_we_OBUF_inst_i_5_n_0),
        .O(\FSM_sequential_Pstate[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFAFAFAE8)) 
    \FSM_sequential_Pstate[2]_i_1 
       (.I0(o_we_OBUF),
        .I1(i_start_IBUF),
        .I2(Pstate[2]),
        .I3(Pstate[0]),
        .I4(Pstate[1]),
        .O(\FSM_sequential_Pstate[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "bitmask:001,x:011,y:010,reset:000,done:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_Pstate_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_Pstate[0]_i_1_n_0 ),
        .Q(Pstate[0]),
        .R(i_rst_IBUF));
  (* FSM_ENCODED_STATES = "bitmask:001,x:011,y:010,reset:000,done:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_Pstate_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_Pstate[1]_i_1_n_0 ),
        .Q(Pstate[1]),
        .R(i_rst_IBUF));
  (* FSM_ENCODED_STATES = "bitmask:001,x:011,y:010,reset:000,done:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_Pstate_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_Pstate[2]_i_1_n_0 ),
        .Q(Pstate[2]),
        .R(i_rst_IBUF));
  LUT6 #(
    .INIT(64'hEEEEFEFFAAAA0A00)) 
    \Pbitmask[0]_i_1 
       (.I0(\Pbitmask[0]_i_2_n_0 ),
        .I1(\Pbitmask[3]_i_2_n_0 ),
        .I2(\Pcounter[4]_i_3_n_0 ),
        .I3(\Pbitmask[5]_i_3_n_0 ),
        .I4(\Pbitmask[5]_i_5_n_0 ),
        .I5(Pbitmask[0]),
        .O(\Pbitmask[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF700070007000)) 
    \Pbitmask[0]_i_2 
       (.I0(Pcounter[2]),
        .I1(Pcounter[1]),
        .I2(\Pbitmask[0]_i_3_n_0 ),
        .I3(Pbitmask[0]),
        .I4(i_data_IBUF[0]),
        .I5(\Pbitmask[6]_i_2_n_0 ),
        .O(\Pbitmask[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \Pbitmask[0]_i_3 
       (.I0(Pstate[2]),
        .I1(Pstate[1]),
        .I2(ltOp),
        .O(\Pbitmask[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAFFFFC0C00000)) 
    \Pbitmask[1]_i_1 
       (.I0(\Pbitmask[1]_i_2_n_0 ),
        .I1(\Pbitmask[6]_i_2_n_0 ),
        .I2(i_data_IBUF[1]),
        .I3(\Pbitmask[3]_i_2_n_0 ),
        .I4(\Pbitmask[1]_i_3_n_0 ),
        .I5(Pbitmask[1]),
        .O(\Pbitmask[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00080800)) 
    \Pbitmask[1]_i_2 
       (.I0(ltOp),
        .I1(Pstate[1]),
        .I2(Pstate[2]),
        .I3(Pcounter[2]),
        .I4(Pcounter[1]),
        .O(\Pbitmask[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0020)) 
    \Pbitmask[1]_i_3 
       (.I0(\Pbitmask[5]_i_3_n_0 ),
        .I1(Pcounter[2]),
        .I2(Pcounter[1]),
        .I3(Pcounter[3]),
        .I4(\Pbitmask[5]_i_5_n_0 ),
        .O(\Pbitmask[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFBFAAAA0080)) 
    \Pbitmask[2]_i_1 
       (.I0(Nbitmask[2]),
        .I1(\Pbitmask[5]_i_3_n_0 ),
        .I2(\Pbitmask[2]_i_3_n_0 ),
        .I3(Pcounter[3]),
        .I4(\Pbitmask[5]_i_5_n_0 ),
        .I5(Pbitmask[2]),
        .O(\Pbitmask[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF88888F888888)) 
    \Pbitmask[2]_i_2 
       (.I0(\Pbitmask[6]_i_2_n_0 ),
        .I1(i_data_IBUF[2]),
        .I2(Pcounter[1]),
        .I3(\Pbitmask[1]_i_2_n_0 ),
        .I4(Pbitmask[2]),
        .I5(\Pbitmask[3]_i_2_n_0 ),
        .O(Nbitmask[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \Pbitmask[2]_i_3 
       (.I0(Pcounter[2]),
        .I1(Pcounter[1]),
        .O(\Pbitmask[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF02FFFF02020000)) 
    \Pbitmask[3]_i_1 
       (.I0(i_data_IBUF[3]),
        .I1(Pstate[1]),
        .I2(Pstate[2]),
        .I3(\Pbitmask[3]_i_2_n_0 ),
        .I4(\Pbitmask[3]_i_3_n_0 ),
        .I5(Pbitmask[3]),
        .O(\Pbitmask[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEA000000000000)) 
    \Pbitmask[3]_i_2 
       (.I0(Pcounter[3]),
        .I1(Pcounter[1]),
        .I2(Pcounter[2]),
        .I3(Pcounter[4]),
        .I4(\o_address_OBUF[4]_inst_i_2_n_0 ),
        .I5(ltOp),
        .O(\Pbitmask[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0080)) 
    \Pbitmask[3]_i_3 
       (.I0(\Pbitmask[5]_i_3_n_0 ),
        .I1(Pcounter[2]),
        .I2(Pcounter[1]),
        .I3(Pcounter[3]),
        .I4(\Pbitmask[5]_i_5_n_0 ),
        .O(\Pbitmask[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8FFFFFF880000)) 
    \Pbitmask[4]_i_1 
       (.I0(\Pbitmask[6]_i_2_n_0 ),
        .I1(i_data_IBUF[4]),
        .I2(\Pbitmask[7]_i_2_n_0 ),
        .I3(\Pbitmask[4]_i_2_n_0 ),
        .I4(\Pbitmask[4]_i_3_n_0 ),
        .I5(Pbitmask[4]),
        .O(\Pbitmask[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800080008000)) 
    \Pbitmask[4]_i_2 
       (.I0(Pcounter[3]),
        .I1(ltOp),
        .I2(\o_address_OBUF[4]_inst_i_2_n_0 ),
        .I3(Pbitmask[4]),
        .I4(Pcounter[1]),
        .I5(Pcounter[2]),
        .O(\Pbitmask[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0008)) 
    \Pbitmask[4]_i_3 
       (.I0(\Pbitmask[5]_i_3_n_0 ),
        .I1(Pcounter[3]),
        .I2(Pcounter[2]),
        .I3(Pcounter[1]),
        .I4(\Pbitmask[5]_i_5_n_0 ),
        .O(\Pbitmask[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABFFFAAAA8000)) 
    \Pbitmask[5]_i_1 
       (.I0(Nbitmask[5]),
        .I1(\Pbitmask[5]_i_3_n_0 ),
        .I2(\Pbitmask[5]_i_4_n_0 ),
        .I3(Pcounter[3]),
        .I4(\Pbitmask[5]_i_5_n_0 ),
        .I5(Pbitmask[5]),
        .O(\Pbitmask[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Pbitmask[5]_i_10 
       (.I0(L[8]),
        .I1(Pmindist[8]),
        .O(\Pbitmask[5]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Pbitmask[5]_i_11 
       (.I0(Pmindist[8]),
        .I1(L[8]),
        .O(\Pbitmask[5]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \Pbitmask[5]_i_12 
       (.I0(L[6]),
        .I1(Pmindist[6]),
        .I2(L[7]),
        .I3(Pmindist[7]),
        .O(\Pbitmask[5]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \Pbitmask[5]_i_13 
       (.I0(L[4]),
        .I1(Pmindist[4]),
        .I2(L[5]),
        .I3(Pmindist[5]),
        .O(\Pbitmask[5]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \Pbitmask[5]_i_14 
       (.I0(L[2]),
        .I1(Pmindist[2]),
        .I2(L[3]),
        .I3(Pmindist[3]),
        .O(\Pbitmask[5]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \Pbitmask[5]_i_15 
       (.I0(L[0]),
        .I1(Pmindist[0]),
        .I2(L[1]),
        .I3(Pmindist[1]),
        .O(\Pbitmask[5]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Pbitmask[5]_i_16 
       (.I0(Pmindist[6]),
        .I1(L[6]),
        .I2(L[7]),
        .I3(Pmindist[7]),
        .O(\Pbitmask[5]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Pbitmask[5]_i_17 
       (.I0(Pmindist[4]),
        .I1(L[4]),
        .I2(L[5]),
        .I3(Pmindist[5]),
        .O(\Pbitmask[5]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Pbitmask[5]_i_18 
       (.I0(Pmindist[2]),
        .I1(L[2]),
        .I2(L[3]),
        .I3(Pmindist[3]),
        .O(\Pbitmask[5]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Pbitmask[5]_i_19 
       (.I0(Pmindist[0]),
        .I1(L[0]),
        .I2(L[1]),
        .I3(Pmindist[1]),
        .O(\Pbitmask[5]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8888F8888888)) 
    \Pbitmask[5]_i_2 
       (.I0(\Pbitmask[6]_i_2_n_0 ),
        .I1(i_data_IBUF[5]),
        .I2(Nbitmask3),
        .I3(\Pbitmask[1]_i_2_n_0 ),
        .I4(Pbitmask[5]),
        .I5(\Pbitmask[7]_i_2_n_0 ),
        .O(Nbitmask[5]));
  LUT4 #(
    .INIT(16'h0020)) 
    \Pbitmask[5]_i_3 
       (.I0(Pstate[0]),
        .I1(Pstate[2]),
        .I2(gtOp),
        .I3(Pcounter[4]),
        .O(\Pbitmask[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Pbitmask[5]_i_4 
       (.I0(Pcounter[1]),
        .I1(Pcounter[2]),
        .O(\Pbitmask[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00004F00)) 
    \Pbitmask[5]_i_5 
       (.I0(eqOp),
        .I1(ltOp),
        .I2(Pstate[1]),
        .I3(Pstate[0]),
        .I4(Pstate[2]),
        .O(\Pbitmask[5]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \Pbitmask[5]_i_6 
       (.I0(Pcounter[2]),
        .I1(Pcounter[1]),
        .I2(Pcounter[3]),
        .O(Nbitmask3));
  LUT5 #(
    .INIT(32'h00000002)) 
    \Pbitmask[5]_i_8 
       (.I0(Pcounter[4]),
        .I1(Pcounter[0]),
        .I2(Pcounter[2]),
        .I3(Pcounter[1]),
        .I4(Pcounter[3]),
        .O(eqOp));
  LUT6 #(
    .INIT(64'hFFF8FFFFF8F80000)) 
    \Pbitmask[6]_i_1 
       (.I0(\Pbitmask[6]_i_2_n_0 ),
        .I1(i_data_IBUF[6]),
        .I2(\Pbitmask[6]_i_3_n_0 ),
        .I3(\Pbitmask[7]_i_2_n_0 ),
        .I4(\Pbitmask[6]_i_4_n_0 ),
        .I5(Pbitmask[6]),
        .O(\Pbitmask[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \Pbitmask[6]_i_2 
       (.I0(Pstate[1]),
        .I1(Pstate[2]),
        .O(\Pbitmask[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \Pbitmask[6]_i_3 
       (.I0(Pcounter[3]),
        .I1(Pbitmask[6]),
        .I2(Pcounter[1]),
        .I3(Pcounter[2]),
        .I4(\o_address_OBUF[4]_inst_i_2_n_0 ),
        .I5(ltOp),
        .O(\Pbitmask[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \Pbitmask[6]_i_4 
       (.I0(\Pbitmask[5]_i_3_n_0 ),
        .I1(Pcounter[1]),
        .I2(Pcounter[2]),
        .I3(Pcounter[3]),
        .I4(\Pbitmask[5]_i_5_n_0 ),
        .O(\Pbitmask[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF02FFFF02020000)) 
    \Pbitmask[7]_i_1 
       (.I0(i_data_IBUF[7]),
        .I1(Pstate[1]),
        .I2(Pstate[2]),
        .I3(\Pbitmask[7]_i_2_n_0 ),
        .I4(\Pbitmask[7]_i_3_n_0 ),
        .I5(Pbitmask[7]),
        .O(\Pbitmask[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8880808080808080)) 
    \Pbitmask[7]_i_2 
       (.I0(ltOp),
        .I1(\o_address_OBUF[4]_inst_i_2_n_0 ),
        .I2(Pcounter[4]),
        .I3(Pcounter[2]),
        .I4(Pcounter[1]),
        .I5(Pcounter[3]),
        .O(\Pbitmask[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \Pbitmask[7]_i_3 
       (.I0(Pcounter[2]),
        .I1(Pcounter[1]),
        .I2(Pcounter[3]),
        .I3(\Pbitmask[5]_i_3_n_0 ),
        .I4(\Pbitmask[5]_i_5_n_0 ),
        .O(\Pbitmask[7]_i_3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Pbitmask_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\Pbitmask[0]_i_1_n_0 ),
        .Q(Pbitmask[0]),
        .S(i_rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \Pbitmask_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\Pbitmask[1]_i_1_n_0 ),
        .Q(Pbitmask[1]),
        .S(i_rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \Pbitmask_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\Pbitmask[2]_i_1_n_0 ),
        .Q(Pbitmask[2]),
        .S(i_rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \Pbitmask_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\Pbitmask[3]_i_1_n_0 ),
        .Q(Pbitmask[3]),
        .S(i_rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \Pbitmask_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\Pbitmask[4]_i_1_n_0 ),
        .Q(Pbitmask[4]),
        .S(i_rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \Pbitmask_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\Pbitmask[5]_i_1_n_0 ),
        .Q(Pbitmask[5]),
        .S(i_rst_IBUF));
  CARRY4 \Pbitmask_reg[5]_i_7 
       (.CI(\Pbitmask_reg[5]_i_9_n_0 ),
        .CO({\NLW_Pbitmask_reg[5]_i_7_CO_UNCONNECTED [3:1],gtOp}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\Pbitmask[5]_i_10_n_0 }),
        .O(\NLW_Pbitmask_reg[5]_i_7_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\Pbitmask[5]_i_11_n_0 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \Pbitmask_reg[5]_i_9 
       (.CI(1'b0),
        .CO({\Pbitmask_reg[5]_i_9_n_0 ,\NLW_Pbitmask_reg[5]_i_9_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\Pbitmask[5]_i_12_n_0 ,\Pbitmask[5]_i_13_n_0 ,\Pbitmask[5]_i_14_n_0 ,\Pbitmask[5]_i_15_n_0 }),
        .O(\NLW_Pbitmask_reg[5]_i_9_O_UNCONNECTED [3:0]),
        .S({\Pbitmask[5]_i_16_n_0 ,\Pbitmask[5]_i_17_n_0 ,\Pbitmask[5]_i_18_n_0 ,\Pbitmask[5]_i_19_n_0 }));
  FDSE #(
    .INIT(1'b1)) 
    \Pbitmask_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\Pbitmask[6]_i_1_n_0 ),
        .Q(Pbitmask[6]),
        .S(i_rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \Pbitmask_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\Pbitmask[7]_i_1_n_0 ),
        .Q(Pbitmask[7]),
        .S(i_rst_IBUF));
  LUT5 #(
    .INIT(32'h00100000)) 
    \Pc[7]_i_1 
       (.I0(o_we_OBUF_inst_i_3_n_0),
        .I1(Pstate[2]),
        .I2(Pstate[1]),
        .I3(o_we_OBUF_inst_i_4_n_0),
        .I4(\Pc[7]_i_2_n_0 ),
        .O(Nc));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Pc[7]_i_2 
       (.I0(\Pc[7]_i_3_n_0 ),
        .I1(\Pc[7]_i_4_n_0 ),
        .I2(\Pc[7]_i_5_n_0 ),
        .I3(\Pc[7]_i_6_n_0 ),
        .O(\Pc[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0404040000000400)) 
    \Pc[7]_i_3 
       (.I0(Pcounter[4]),
        .I1(Pcounter[2]),
        .I2(Pcounter[1]),
        .I3(Pbitmask[2]),
        .I4(Pcounter[3]),
        .I5(Pbitmask[6]),
        .O(\Pc[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0404040000000400)) 
    \Pc[7]_i_4 
       (.I0(Pcounter[4]),
        .I1(Pcounter[1]),
        .I2(Pcounter[2]),
        .I3(Pbitmask[1]),
        .I4(Pcounter[3]),
        .I5(Pbitmask[5]),
        .O(\Pc[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080038000)) 
    \Pc[7]_i_5 
       (.I0(Pbitmask[7]),
        .I1(Pcounter[2]),
        .I2(Pcounter[1]),
        .I3(Pcounter[3]),
        .I4(Pbitmask[0]),
        .I5(Pcounter[4]),
        .O(\Pc[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002C00200)) 
    \Pc[7]_i_6 
       (.I0(Pbitmask[4]),
        .I1(Pcounter[1]),
        .I2(Pcounter[2]),
        .I3(Pcounter[3]),
        .I4(Pbitmask[3]),
        .I5(Pcounter[4]),
        .O(\Pc[7]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Pc_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(Nc),
        .D(i_data_IBUF[0]),
        .Q(Pc[0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Pc_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(Nc),
        .D(i_data_IBUF[1]),
        .Q(Pc[1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Pc_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(Nc),
        .D(i_data_IBUF[2]),
        .Q(Pc[2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Pc_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(Nc),
        .D(i_data_IBUF[3]),
        .Q(Pc[3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Pc_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(Nc),
        .D(i_data_IBUF[4]),
        .Q(Pc[4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Pc_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(Nc),
        .D(i_data_IBUF[5]),
        .Q(Pc[5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Pc_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(Nc),
        .D(i_data_IBUF[6]),
        .Q(Pc[6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Pc_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(Nc),
        .D(i_data_IBUF[7]),
        .Q(Pc[7]),
        .R(i_rst_IBUF));
  LUT2 #(
    .INIT(4'h6)) 
    \Pcounter[0]_i_1 
       (.I0(Pcounter[0]),
        .I1(\o_address_OBUF[3]_inst_i_2_n_0 ),
        .O(\Pcounter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h93)) 
    \Pcounter[1]_i_1 
       (.I0(Pcounter[0]),
        .I1(Pcounter[1]),
        .I2(\o_address_OBUF[3]_inst_i_2_n_0 ),
        .O(\Pcounter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hC999)) 
    \Pcounter[2]_i_1 
       (.I0(Pcounter[1]),
        .I1(Pcounter[2]),
        .I2(Pcounter[0]),
        .I3(\o_address_OBUF[3]_inst_i_2_n_0 ),
        .O(\Pcounter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFF80007)) 
    \Pcounter[3]_i_1 
       (.I0(Pcounter[0]),
        .I1(\o_address_OBUF[3]_inst_i_2_n_0 ),
        .I2(Pcounter[2]),
        .I3(Pcounter[1]),
        .I4(Pcounter[3]),
        .O(\Pcounter[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h32)) 
    \Pcounter[4]_i_1 
       (.I0(Pstate[0]),
        .I1(Pstate[2]),
        .I2(Pstate[1]),
        .O(Ncounter));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hF807)) 
    \Pcounter[4]_i_2 
       (.I0(Pcounter[0]),
        .I1(\o_address_OBUF[3]_inst_i_2_n_0 ),
        .I2(\Pcounter[4]_i_3_n_0 ),
        .I3(Pcounter[4]),
        .O(\Pcounter[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \Pcounter[4]_i_3 
       (.I0(Pcounter[2]),
        .I1(Pcounter[1]),
        .I2(Pcounter[3]),
        .O(\Pcounter[4]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Pcounter_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(Ncounter),
        .D(\Pcounter[0]_i_1_n_0 ),
        .Q(Pcounter[0]),
        .R(i_rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \Pcounter_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(Ncounter),
        .D(\Pcounter[1]_i_1_n_0 ),
        .Q(Pcounter[1]),
        .S(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Pcounter_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(Ncounter),
        .D(\Pcounter[2]_i_1_n_0 ),
        .Q(Pcounter[2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Pcounter_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(Ncounter),
        .D(\Pcounter[3]_i_1_n_0 ),
        .Q(Pcounter[3]),
        .R(i_rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \Pcounter_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(Ncounter),
        .D(\Pcounter[4]_i_2_n_0 ),
        .Q(Pcounter[4]),
        .S(i_rst_IBUF));
  LUT2 #(
    .INIT(4'h9)) 
    \Pmindist[3]_i_10 
       (.I0(Px[3]),
        .I1(i_data_IBUF[3]),
        .O(\Pmindist[3]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Pmindist[3]_i_11 
       (.I0(Px[2]),
        .I1(i_data_IBUF[2]),
        .O(\Pmindist[3]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Pmindist[3]_i_12 
       (.I0(Px[1]),
        .I1(i_data_IBUF[1]),
        .O(\Pmindist[3]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Pmindist[3]_i_13 
       (.I0(Px[0]),
        .I1(i_data_IBUF[0]),
        .O(\Pmindist[3]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFF0100FE)) 
    \Pmindist[3]_i_2 
       (.I0(L3[1]),
        .I1(L3[0]),
        .I2(L3[2]),
        .I3(\Pmindist_reg[8]_i_12_n_3 ),
        .I4(L3[3]),
        .O(L00_in[3]));
  LUT4 #(
    .INIT(16'hF10E)) 
    \Pmindist[3]_i_3 
       (.I0(L3[0]),
        .I1(L3[1]),
        .I2(\Pmindist_reg[8]_i_12_n_3 ),
        .I3(L3[2]),
        .O(L00_in[2]));
  LUT3 #(
    .INIT(8'hD2)) 
    \Pmindist[3]_i_4 
       (.I0(L3[0]),
        .I1(\Pmindist_reg[8]_i_12_n_3 ),
        .I2(L3[1]),
        .O(L00_in[1]));
  LUT6 #(
    .INIT(64'h6969696969696966)) 
    \Pmindist[3]_i_6 
       (.I0(L00_in[3]),
        .I1(\Pmindist_reg[7]_i_12_n_4 ),
        .I2(\Pmindist_reg[8]_i_9_n_3 ),
        .I3(\Pmindist_reg[7]_i_12_n_5 ),
        .I4(L0),
        .I5(\Pmindist_reg[7]_i_12_n_6 ),
        .O(\Pmindist[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h69696966)) 
    \Pmindist[3]_i_7 
       (.I0(L00_in[2]),
        .I1(\Pmindist_reg[7]_i_12_n_5 ),
        .I2(\Pmindist_reg[8]_i_9_n_3 ),
        .I3(\Pmindist_reg[7]_i_12_n_6 ),
        .I4(L0),
        .O(\Pmindist[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h659A9A65659A659A)) 
    \Pmindist[3]_i_8 
       (.I0(L3[1]),
        .I1(\Pmindist_reg[8]_i_12_n_3 ),
        .I2(L3[0]),
        .I3(\Pmindist_reg[7]_i_12_n_6 ),
        .I4(\Pmindist_reg[8]_i_9_n_3 ),
        .I5(L0),
        .O(\Pmindist[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Pmindist[3]_i_9 
       (.I0(L3[0]),
        .I1(L0),
        .O(\Pmindist[3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \Pmindist[7]_i_10 
       (.I0(L3[4]),
        .I1(L3[3]),
        .I2(L3[2]),
        .I3(L3[0]),
        .I4(L3[1]),
        .O(\Pmindist[7]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \Pmindist[7]_i_11 
       (.I0(\Pmindist_reg[8]_i_10_n_7 ),
        .I1(\Pmindist_reg[7]_i_12_n_4 ),
        .I2(\Pmindist_reg[7]_i_12_n_5 ),
        .I3(L0),
        .I4(\Pmindist_reg[7]_i_12_n_6 ),
        .O(\Pmindist[7]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \Pmindist[7]_i_13 
       (.I0(\Pmindist_reg[7]_i_12_n_6 ),
        .I1(L0),
        .I2(\Pmindist_reg[7]_i_12_n_5 ),
        .O(\Pmindist[7]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Pmindist[7]_i_14 
       (.I0(Py[3]),
        .I1(Pc[3]),
        .O(\Pmindist[7]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Pmindist[7]_i_15 
       (.I0(Py[2]),
        .I1(Pc[2]),
        .O(\Pmindist[7]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Pmindist[7]_i_16 
       (.I0(Py[1]),
        .I1(Pc[1]),
        .O(\Pmindist[7]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Pmindist[7]_i_17 
       (.I0(Py[0]),
        .I1(Pc[0]),
        .O(\Pmindist[7]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hFF1000EF)) 
    \Pmindist[7]_i_2 
       (.I0(L3[5]),
        .I1(L3[6]),
        .I2(\Pmindist[7]_i_10_n_0 ),
        .I3(\Pmindist_reg[8]_i_12_n_3 ),
        .I4(L3[7]),
        .O(L00_in[7]));
  LUT4 #(
    .INIT(16'hAE51)) 
    \Pmindist[7]_i_3 
       (.I0(\Pmindist_reg[8]_i_12_n_3 ),
        .I1(\Pmindist[7]_i_10_n_0 ),
        .I2(L3[5]),
        .I3(L3[6]),
        .O(L00_in[6]));
  LUT3 #(
    .INIT(8'hE1)) 
    \Pmindist[7]_i_4 
       (.I0(\Pmindist[7]_i_10_n_0 ),
        .I1(\Pmindist_reg[8]_i_12_n_3 ),
        .I2(L3[5]),
        .O(L00_in[5]));
  LUT6 #(
    .INIT(64'hAAAAAAAB55555554)) 
    \Pmindist[7]_i_5 
       (.I0(\Pmindist_reg[8]_i_12_n_3 ),
        .I1(L3[2]),
        .I2(L3[0]),
        .I3(L3[1]),
        .I4(L3[3]),
        .I5(L3[4]),
        .O(L00_in[4]));
  LUT6 #(
    .INIT(64'h6969696969696669)) 
    \Pmindist[7]_i_6 
       (.I0(L00_in[7]),
        .I1(\Pmindist_reg[8]_i_10_n_4 ),
        .I2(\Pmindist_reg[8]_i_9_n_3 ),
        .I3(\Pmindist[7]_i_11_n_0 ),
        .I4(\Pmindist_reg[8]_i_10_n_5 ),
        .I5(\Pmindist_reg[8]_i_10_n_6 ),
        .O(\Pmindist[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h66669699)) 
    \Pmindist[7]_i_7 
       (.I0(L00_in[6]),
        .I1(\Pmindist_reg[8]_i_10_n_5 ),
        .I2(\Pmindist_reg[8]_i_10_n_6 ),
        .I3(\Pmindist[7]_i_11_n_0 ),
        .I4(\Pmindist_reg[8]_i_9_n_3 ),
        .O(\Pmindist[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h56A956A956A9A956)) 
    \Pmindist[7]_i_8 
       (.I0(L3[5]),
        .I1(\Pmindist_reg[8]_i_12_n_3 ),
        .I2(\Pmindist[7]_i_10_n_0 ),
        .I3(\Pmindist_reg[8]_i_10_n_6 ),
        .I4(\Pmindist_reg[8]_i_9_n_3 ),
        .I5(\Pmindist[7]_i_11_n_0 ),
        .O(\Pmindist[7]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h66669996)) 
    \Pmindist[7]_i_9 
       (.I0(L00_in[4]),
        .I1(\Pmindist_reg[8]_i_10_n_7 ),
        .I2(\Pmindist_reg[7]_i_12_n_4 ),
        .I3(\Pmindist[7]_i_13_n_0 ),
        .I4(\Pmindist_reg[8]_i_9_n_3 ),
        .O(\Pmindist[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h8080800080808080)) 
    \Pmindist[8]_i_1 
       (.I0(Pstate[0]),
        .I1(\o_address_OBUF[4]_inst_i_2_n_0 ),
        .I2(ltOp),
        .I3(\Pcounter[4]_i_3_n_0 ),
        .I4(Pcounter[0]),
        .I5(Pcounter[4]),
        .O(Nmindist));
  LUT3 #(
    .INIT(8'hEF)) 
    \Pmindist[8]_i_11 
       (.I0(L3[5]),
        .I1(L3[6]),
        .I2(\Pmindist[7]_i_10_n_0 ),
        .O(\Pmindist[8]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \Pmindist[8]_i_14 
       (.I0(Pmindist[6]),
        .I1(L[6]),
        .I2(Pmindist[7]),
        .I3(L[7]),
        .O(\Pmindist[8]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \Pmindist[8]_i_15 
       (.I0(Pmindist[4]),
        .I1(L[4]),
        .I2(Pmindist[5]),
        .I3(L[5]),
        .O(\Pmindist[8]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \Pmindist[8]_i_16 
       (.I0(Pmindist[2]),
        .I1(L[2]),
        .I2(Pmindist[3]),
        .I3(L[3]),
        .O(\Pmindist[8]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \Pmindist[8]_i_17 
       (.I0(Pmindist[0]),
        .I1(L[0]),
        .I2(Pmindist[1]),
        .I3(L[1]),
        .O(\Pmindist[8]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Pmindist[8]_i_18 
       (.I0(Pmindist[6]),
        .I1(L[6]),
        .I2(L[7]),
        .I3(Pmindist[7]),
        .O(\Pmindist[8]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Pmindist[8]_i_19 
       (.I0(Pmindist[4]),
        .I1(L[4]),
        .I2(L[5]),
        .I3(Pmindist[5]),
        .O(\Pmindist[8]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Pmindist[8]_i_20 
       (.I0(Pmindist[2]),
        .I1(L[2]),
        .I2(L[3]),
        .I3(Pmindist[3]),
        .O(\Pmindist[8]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Pmindist[8]_i_21 
       (.I0(Pmindist[0]),
        .I1(L[0]),
        .I2(L[1]),
        .I3(Pmindist[1]),
        .O(\Pmindist[8]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Pmindist[8]_i_22 
       (.I0(Py[7]),
        .I1(Pc[7]),
        .O(\Pmindist[8]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Pmindist[8]_i_23 
       (.I0(Py[6]),
        .I1(Pc[6]),
        .O(\Pmindist[8]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Pmindist[8]_i_24 
       (.I0(Py[5]),
        .I1(Pc[5]),
        .O(\Pmindist[8]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Pmindist[8]_i_25 
       (.I0(Py[4]),
        .I1(Pc[4]),
        .O(\Pmindist[8]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Pmindist[8]_i_26 
       (.I0(Px[7]),
        .I1(i_data_IBUF[7]),
        .O(\Pmindist[8]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Pmindist[8]_i_27 
       (.I0(Px[6]),
        .I1(i_data_IBUF[6]),
        .O(\Pmindist[8]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Pmindist[8]_i_28 
       (.I0(Px[5]),
        .I1(i_data_IBUF[5]),
        .O(\Pmindist[8]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Pmindist[8]_i_29 
       (.I0(Px[4]),
        .I1(i_data_IBUF[4]),
        .O(\Pmindist[8]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h01010101010101FE)) 
    \Pmindist[8]_i_4 
       (.I0(\Pmindist[8]_i_8_n_0 ),
        .I1(\Pmindist_reg[8]_i_9_n_3 ),
        .I2(\Pmindist_reg[8]_i_10_n_4 ),
        .I3(\Pmindist[8]_i_11_n_0 ),
        .I4(\Pmindist_reg[8]_i_12_n_3 ),
        .I5(L3[7]),
        .O(\Pmindist[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Pmindist[8]_i_6 
       (.I0(Pmindist[8]),
        .I1(L[8]),
        .O(\Pmindist[8]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Pmindist[8]_i_7 
       (.I0(L[8]),
        .I1(Pmindist[8]),
        .O(\Pmindist[8]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \Pmindist[8]_i_8 
       (.I0(\Pmindist_reg[8]_i_10_n_6 ),
        .I1(\Pmindist_reg[8]_i_10_n_5 ),
        .I2(\Pmindist[7]_i_11_n_0 ),
        .O(\Pmindist[8]_i_8_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Pmindist_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(Nmindist),
        .D(L[0]),
        .Q(Pmindist[0]),
        .S(i_rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \Pmindist_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(Nmindist),
        .D(L[1]),
        .Q(Pmindist[1]),
        .S(i_rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \Pmindist_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(Nmindist),
        .D(L[2]),
        .Q(Pmindist[2]),
        .S(i_rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \Pmindist_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(Nmindist),
        .D(L[3]),
        .Q(Pmindist[3]),
        .S(i_rst_IBUF));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \Pmindist_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\Pmindist_reg[3]_i_1_n_0 ,\NLW_Pmindist_reg[3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({L00_in[3:1],L3[0]}),
        .O(L[3:0]),
        .S({\Pmindist[3]_i_6_n_0 ,\Pmindist[3]_i_7_n_0 ,\Pmindist[3]_i_8_n_0 ,\Pmindist[3]_i_9_n_0 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \Pmindist_reg[3]_i_5 
       (.CI(1'b0),
        .CO({\Pmindist_reg[3]_i_5_n_0 ,\NLW_Pmindist_reg[3]_i_5_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI(Px[3:0]),
        .O(L3[3:0]),
        .S({\Pmindist[3]_i_10_n_0 ,\Pmindist[3]_i_11_n_0 ,\Pmindist[3]_i_12_n_0 ,\Pmindist[3]_i_13_n_0 }));
  FDSE #(
    .INIT(1'b1)) 
    \Pmindist_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(Nmindist),
        .D(L[4]),
        .Q(Pmindist[4]),
        .S(i_rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \Pmindist_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(Nmindist),
        .D(L[5]),
        .Q(Pmindist[5]),
        .S(i_rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \Pmindist_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(Nmindist),
        .D(L[6]),
        .Q(Pmindist[6]),
        .S(i_rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \Pmindist_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(Nmindist),
        .D(L[7]),
        .Q(Pmindist[7]),
        .S(i_rst_IBUF));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \Pmindist_reg[7]_i_1 
       (.CI(\Pmindist_reg[3]_i_1_n_0 ),
        .CO({\Pmindist_reg[7]_i_1_n_0 ,\NLW_Pmindist_reg[7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(L00_in[7:4]),
        .O(L[7:4]),
        .S({\Pmindist[7]_i_6_n_0 ,\Pmindist[7]_i_7_n_0 ,\Pmindist[7]_i_8_n_0 ,\Pmindist[7]_i_9_n_0 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \Pmindist_reg[7]_i_12 
       (.CI(1'b0),
        .CO({\Pmindist_reg[7]_i_12_n_0 ,\NLW_Pmindist_reg[7]_i_12_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI(Py[3:0]),
        .O({\Pmindist_reg[7]_i_12_n_4 ,\Pmindist_reg[7]_i_12_n_5 ,\Pmindist_reg[7]_i_12_n_6 ,L0}),
        .S({\Pmindist[7]_i_14_n_0 ,\Pmindist[7]_i_15_n_0 ,\Pmindist[7]_i_16_n_0 ,\Pmindist[7]_i_17_n_0 }));
  FDSE #(
    .INIT(1'b1)) 
    \Pmindist_reg[8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(Nmindist),
        .D(L[8]),
        .Q(Pmindist[8]),
        .S(i_rst_IBUF));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \Pmindist_reg[8]_i_10 
       (.CI(\Pmindist_reg[7]_i_12_n_0 ),
        .CO({\Pmindist_reg[8]_i_10_n_0 ,\NLW_Pmindist_reg[8]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(Py[7:4]),
        .O({\Pmindist_reg[8]_i_10_n_4 ,\Pmindist_reg[8]_i_10_n_5 ,\Pmindist_reg[8]_i_10_n_6 ,\Pmindist_reg[8]_i_10_n_7 }),
        .S({\Pmindist[8]_i_22_n_0 ,\Pmindist[8]_i_23_n_0 ,\Pmindist[8]_i_24_n_0 ,\Pmindist[8]_i_25_n_0 }));
  CARRY4 \Pmindist_reg[8]_i_12 
       (.CI(\Pmindist_reg[8]_i_13_n_0 ),
        .CO({\NLW_Pmindist_reg[8]_i_12_CO_UNCONNECTED [3:1],\Pmindist_reg[8]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_Pmindist_reg[8]_i_12_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \Pmindist_reg[8]_i_13 
       (.CI(\Pmindist_reg[3]_i_5_n_0 ),
        .CO({\Pmindist_reg[8]_i_13_n_0 ,\NLW_Pmindist_reg[8]_i_13_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(Px[7:4]),
        .O(L3[7:4]),
        .S({\Pmindist[8]_i_26_n_0 ,\Pmindist[8]_i_27_n_0 ,\Pmindist[8]_i_28_n_0 ,\Pmindist[8]_i_29_n_0 }));
  CARRY4 \Pmindist_reg[8]_i_2 
       (.CI(\Pmindist_reg[7]_i_1_n_0 ),
        .CO(\NLW_Pmindist_reg[8]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_Pmindist_reg[8]_i_2_O_UNCONNECTED [3:1],L[8]}),
        .S({1'b0,1'b0,1'b0,\Pmindist[8]_i_4_n_0 }));
  CARRY4 \Pmindist_reg[8]_i_3 
       (.CI(\Pmindist_reg[8]_i_5_n_0 ),
        .CO({\NLW_Pmindist_reg[8]_i_3_CO_UNCONNECTED [3:1],ltOp}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\Pmindist[8]_i_6_n_0 }),
        .O(\NLW_Pmindist_reg[8]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\Pmindist[8]_i_7_n_0 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \Pmindist_reg[8]_i_5 
       (.CI(1'b0),
        .CO({\Pmindist_reg[8]_i_5_n_0 ,\NLW_Pmindist_reg[8]_i_5_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\Pmindist[8]_i_14_n_0 ,\Pmindist[8]_i_15_n_0 ,\Pmindist[8]_i_16_n_0 ,\Pmindist[8]_i_17_n_0 }),
        .O(\NLW_Pmindist_reg[8]_i_5_O_UNCONNECTED [3:0]),
        .S({\Pmindist[8]_i_18_n_0 ,\Pmindist[8]_i_19_n_0 ,\Pmindist[8]_i_20_n_0 ,\Pmindist[8]_i_21_n_0 }));
  CARRY4 \Pmindist_reg[8]_i_9 
       (.CI(\Pmindist_reg[8]_i_10_n_0 ),
        .CO({\NLW_Pmindist_reg[8]_i_9_CO_UNCONNECTED [3:1],\Pmindist_reg[8]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_Pmindist_reg[8]_i_9_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \Px[7]_i_1 
       (.I0(Pstate[0]),
        .I1(Pstate[1]),
        .I2(Pstate[2]),
        .I3(\Pcounter[4]_i_3_n_0 ),
        .I4(Pcounter[0]),
        .I5(Pcounter[4]),
        .O(Nx));
  FDRE #(
    .INIT(1'b0)) 
    \Px_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(Nx),
        .D(i_data_IBUF[0]),
        .Q(Px[0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Px_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(Nx),
        .D(i_data_IBUF[1]),
        .Q(Px[1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Px_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(Nx),
        .D(i_data_IBUF[2]),
        .Q(Px[2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Px_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(Nx),
        .D(i_data_IBUF[3]),
        .Q(Px[3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Px_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(Nx),
        .D(i_data_IBUF[4]),
        .Q(Px[4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Px_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(Nx),
        .D(i_data_IBUF[5]),
        .Q(Px[5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Px_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(Nx),
        .D(i_data_IBUF[6]),
        .Q(Px[6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Px_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(Nx),
        .D(i_data_IBUF[7]),
        .Q(Px[7]),
        .R(i_rst_IBUF));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \Py[7]_i_1 
       (.I0(Pstate[0]),
        .I1(Pstate[1]),
        .I2(Pstate[2]),
        .I3(\Pcounter[4]_i_3_n_0 ),
        .I4(Pcounter[0]),
        .I5(Pcounter[4]),
        .O(Ny));
  FDRE #(
    .INIT(1'b0)) 
    \Py_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(Ny),
        .D(i_data_IBUF[0]),
        .Q(Py[0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Py_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(Ny),
        .D(i_data_IBUF[1]),
        .Q(Py[1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Py_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(Ny),
        .D(i_data_IBUF[2]),
        .Q(Py[2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Py_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(Ny),
        .D(i_data_IBUF[3]),
        .Q(Py[3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Py_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(Ny),
        .D(i_data_IBUF[4]),
        .Q(Py[4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Py_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(Ny),
        .D(i_data_IBUF[5]),
        .Q(Py[5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Py_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(Ny),
        .D(i_data_IBUF[6]),
        .Q(Py[6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Py_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(Ny),
        .D(i_data_IBUF[7]),
        .Q(Py[7]),
        .R(i_rst_IBUF));
  BUFG i_clk_IBUF_BUFG_inst
       (.I(i_clk_IBUF),
        .O(i_clk_IBUF_BUFG));
  IBUF i_clk_IBUF_inst
       (.I(i_clk),
        .O(i_clk_IBUF));
  IBUF \i_data_IBUF[0]_inst 
       (.I(i_data[0]),
        .O(i_data_IBUF[0]));
  IBUF \i_data_IBUF[1]_inst 
       (.I(i_data[1]),
        .O(i_data_IBUF[1]));
  IBUF \i_data_IBUF[2]_inst 
       (.I(i_data[2]),
        .O(i_data_IBUF[2]));
  IBUF \i_data_IBUF[3]_inst 
       (.I(i_data[3]),
        .O(i_data_IBUF[3]));
  IBUF \i_data_IBUF[4]_inst 
       (.I(i_data[4]),
        .O(i_data_IBUF[4]));
  IBUF \i_data_IBUF[5]_inst 
       (.I(i_data[5]),
        .O(i_data_IBUF[5]));
  IBUF \i_data_IBUF[6]_inst 
       (.I(i_data[6]),
        .O(i_data_IBUF[6]));
  IBUF \i_data_IBUF[7]_inst 
       (.I(i_data[7]),
        .O(i_data_IBUF[7]));
  IBUF i_rst_IBUF_inst
       (.I(i_rst),
        .O(i_rst_IBUF));
  IBUF i_start_IBUF_inst
       (.I(i_start),
        .O(i_start_IBUF));
  OBUF \o_address_OBUF[0]_inst 
       (.I(o_address_OBUF[0]),
        .O(o_address[0]));
  LUT6 #(
    .INIT(64'hFFFFAAAEAAAAAAAE)) 
    \o_address_OBUF[0]_inst_i_1 
       (.I0(o_we_OBUF),
        .I1(Pstate[1]),
        .I2(Pstate[2]),
        .I3(\o_address_OBUF[4]_inst_i_4_n_0 ),
        .I4(Pcounter[0]),
        .I5(\o_address_OBUF[4]_inst_i_5_n_0 ),
        .O(o_address_OBUF[0]));
  OBUF \o_address_OBUF[10]_inst 
       (.I(1'b0),
        .O(o_address[10]));
  OBUF \o_address_OBUF[11]_inst 
       (.I(1'b0),
        .O(o_address[11]));
  OBUF \o_address_OBUF[12]_inst 
       (.I(1'b0),
        .O(o_address[12]));
  OBUF \o_address_OBUF[13]_inst 
       (.I(1'b0),
        .O(o_address[13]));
  OBUF \o_address_OBUF[14]_inst 
       (.I(1'b0),
        .O(o_address[14]));
  OBUF \o_address_OBUF[15]_inst 
       (.I(1'b0),
        .O(o_address[15]));
  OBUF \o_address_OBUF[1]_inst 
       (.I(o_address_OBUF[1]),
        .O(o_address[1]));
  LUT6 #(
    .INIT(64'hFFFFAAAEAAEAAAAE)) 
    \o_address_OBUF[1]_inst_i_1 
       (.I0(o_we_OBUF),
        .I1(\o_address_OBUF[4]_inst_i_2_n_0 ),
        .I2(Pcounter[0]),
        .I3(\o_address_OBUF[4]_inst_i_4_n_0 ),
        .I4(Pcounter[1]),
        .I5(\o_address_OBUF[4]_inst_i_5_n_0 ),
        .O(o_address_OBUF[1]));
  OBUF \o_address_OBUF[2]_inst 
       (.I(o_address_OBUF[2]),
        .O(o_address[2]));
  LUT6 #(
    .INIT(64'hFFFF010054000100)) 
    \o_address_OBUF[2]_inst_i_1 
       (.I0(\o_address_OBUF[3]_inst_i_2_n_0 ),
        .I1(Pcounter[0]),
        .I2(Pcounter[1]),
        .I3(\o_address_OBUF[4]_inst_i_2_n_0 ),
        .I4(Pcounter[2]),
        .I5(\o_address_OBUF[3]_inst_i_4_n_0 ),
        .O(o_address_OBUF[2]));
  OBUF \o_address_OBUF[3]_inst 
       (.I(o_address_OBUF[3]),
        .O(o_address[3]));
  LUT6 #(
    .INIT(64'hFFFF010054000100)) 
    \o_address_OBUF[3]_inst_i_1 
       (.I0(\o_address_OBUF[3]_inst_i_2_n_0 ),
        .I1(\o_address_OBUF[3]_inst_i_3_n_0 ),
        .I2(Pcounter[0]),
        .I3(\o_address_OBUF[4]_inst_i_2_n_0 ),
        .I4(Pcounter[3]),
        .I5(\o_address_OBUF[3]_inst_i_4_n_0 ),
        .O(o_address_OBUF[3]));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \o_address_OBUF[3]_inst_i_2 
       (.I0(\o_address_OBUF[4]_inst_i_4_n_0 ),
        .I1(Pcounter[2]),
        .I2(Pcounter[1]),
        .I3(Pcounter[3]),
        .I4(Pcounter[0]),
        .I5(Pcounter[4]),
        .O(\o_address_OBUF[3]_inst_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o_address_OBUF[3]_inst_i_3 
       (.I0(Pcounter[1]),
        .I1(Pcounter[2]),
        .O(\o_address_OBUF[3]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCEECCCCCCFECCCC)) 
    \o_address_OBUF[3]_inst_i_4 
       (.I0(o_we_OBUF_inst_i_3_n_0),
        .I1(\FSM_sequential_Pstate[1]_i_3_n_0 ),
        .I2(\Pc[7]_i_2_n_0 ),
        .I3(Pstate[2]),
        .I4(Pstate[1]),
        .I5(o_we_OBUF_inst_i_4_n_0),
        .O(\o_address_OBUF[3]_inst_i_4_n_0 ));
  OBUF \o_address_OBUF[4]_inst 
       (.I(o_address_OBUF[4]),
        .O(o_address[4]));
  LUT6 #(
    .INIT(64'hFFFFAAAEAAEAAAAE)) 
    \o_address_OBUF[4]_inst_i_1 
       (.I0(o_we_OBUF),
        .I1(\o_address_OBUF[4]_inst_i_2_n_0 ),
        .I2(\o_address_OBUF[4]_inst_i_3_n_0 ),
        .I3(\o_address_OBUF[4]_inst_i_4_n_0 ),
        .I4(Pcounter[4]),
        .I5(\o_address_OBUF[4]_inst_i_5_n_0 ),
        .O(o_address_OBUF[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \o_address_OBUF[4]_inst_i_2 
       (.I0(Pstate[1]),
        .I1(Pstate[2]),
        .O(\o_address_OBUF[4]_inst_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \o_address_OBUF[4]_inst_i_3 
       (.I0(Pcounter[3]),
        .I1(Pcounter[1]),
        .I2(Pcounter[2]),
        .I3(Pcounter[0]),
        .O(\o_address_OBUF[4]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFAAEA)) 
    \o_address_OBUF[4]_inst_i_4 
       (.I0(Pstate[0]),
        .I1(Pcounter[4]),
        .I2(Pcounter[0]),
        .I3(\Pcounter[4]_i_3_n_0 ),
        .I4(\Pc[7]_i_2_n_0 ),
        .O(\o_address_OBUF[4]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0000FEAA)) 
    \o_address_OBUF[4]_inst_i_5 
       (.I0(Pstate[0]),
        .I1(\o_address_OBUF[4]_inst_i_6_n_0 ),
        .I2(\Pc[7]_i_2_n_0 ),
        .I3(Pstate[1]),
        .I4(Pstate[2]),
        .O(\o_address_OBUF[4]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \o_address_OBUF[4]_inst_i_6 
       (.I0(Pcounter[4]),
        .I1(Pcounter[0]),
        .I2(Pcounter[3]),
        .I3(Pcounter[1]),
        .I4(Pcounter[2]),
        .O(\o_address_OBUF[4]_inst_i_6_n_0 ));
  OBUF \o_address_OBUF[5]_inst 
       (.I(1'b0),
        .O(o_address[5]));
  OBUF \o_address_OBUF[6]_inst 
       (.I(1'b0),
        .O(o_address[6]));
  OBUF \o_address_OBUF[7]_inst 
       (.I(1'b0),
        .O(o_address[7]));
  OBUF \o_address_OBUF[8]_inst 
       (.I(1'b0),
        .O(o_address[8]));
  OBUF \o_address_OBUF[9]_inst 
       (.I(1'b0),
        .O(o_address[9]));
  OBUF \o_data_OBUF[0]_inst 
       (.I(o_data_OBUF[0]),
        .O(o_data[0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_data_OBUF[0]_inst_i_1 
       (.I0(i_data_IBUF[0]),
        .I1(o_we_OBUF_inst_i_2_n_0),
        .I2(Pbitmask[0]),
        .I3(\o_data_OBUF[7]_inst_i_2_n_0 ),
        .O(o_data_OBUF[0]));
  OBUF \o_data_OBUF[1]_inst 
       (.I(o_data_OBUF[1]),
        .O(o_data[1]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_data_OBUF[1]_inst_i_1 
       (.I0(i_data_IBUF[1]),
        .I1(o_we_OBUF_inst_i_2_n_0),
        .I2(Pbitmask[1]),
        .I3(\o_data_OBUF[7]_inst_i_2_n_0 ),
        .O(o_data_OBUF[1]));
  OBUF \o_data_OBUF[2]_inst 
       (.I(o_data_OBUF[2]),
        .O(o_data[2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_data_OBUF[2]_inst_i_1 
       (.I0(i_data_IBUF[2]),
        .I1(o_we_OBUF_inst_i_2_n_0),
        .I2(Pbitmask[2]),
        .I3(\o_data_OBUF[7]_inst_i_2_n_0 ),
        .O(o_data_OBUF[2]));
  OBUF \o_data_OBUF[3]_inst 
       (.I(o_data_OBUF[3]),
        .O(o_data[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_data_OBUF[3]_inst_i_1 
       (.I0(i_data_IBUF[3]),
        .I1(o_we_OBUF_inst_i_2_n_0),
        .I2(Pbitmask[3]),
        .I3(\o_data_OBUF[7]_inst_i_2_n_0 ),
        .O(o_data_OBUF[3]));
  OBUF \o_data_OBUF[4]_inst 
       (.I(o_data_OBUF[4]),
        .O(o_data[4]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_data_OBUF[4]_inst_i_1 
       (.I0(i_data_IBUF[4]),
        .I1(o_we_OBUF_inst_i_2_n_0),
        .I2(Pbitmask[4]),
        .I3(\o_data_OBUF[7]_inst_i_2_n_0 ),
        .O(o_data_OBUF[4]));
  OBUF \o_data_OBUF[5]_inst 
       (.I(o_data_OBUF[5]),
        .O(o_data[5]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_data_OBUF[5]_inst_i_1 
       (.I0(i_data_IBUF[5]),
        .I1(o_we_OBUF_inst_i_2_n_0),
        .I2(Pbitmask[5]),
        .I3(\o_data_OBUF[7]_inst_i_2_n_0 ),
        .O(o_data_OBUF[5]));
  OBUF \o_data_OBUF[6]_inst 
       (.I(o_data_OBUF[6]),
        .O(o_data[6]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_data_OBUF[6]_inst_i_1 
       (.I0(i_data_IBUF[6]),
        .I1(o_we_OBUF_inst_i_2_n_0),
        .I2(Pbitmask[6]),
        .I3(\o_data_OBUF[7]_inst_i_2_n_0 ),
        .O(o_data_OBUF[6]));
  OBUF \o_data_OBUF[7]_inst 
       (.I(o_data_OBUF[7]),
        .O(o_data[7]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_data_OBUF[7]_inst_i_1 
       (.I0(i_data_IBUF[7]),
        .I1(o_we_OBUF_inst_i_2_n_0),
        .I2(Pbitmask[7]),
        .I3(\o_data_OBUF[7]_inst_i_2_n_0 ),
        .O(o_data_OBUF[7]));
  LUT4 #(
    .INIT(16'h0040)) 
    \o_data_OBUF[7]_inst_i_2 
       (.I0(Pstate[2]),
        .I1(Pstate[1]),
        .I2(o_we_OBUF_inst_i_4_n_0),
        .I3(o_we_OBUF_inst_i_3_n_0),
        .O(\o_data_OBUF[7]_inst_i_2_n_0 ));
  OBUF o_done_OBUF_inst
       (.I(o_done_OBUF),
        .O(o_done));
  LUT4 #(
    .INIT(16'h0400)) 
    o_done_OBUF_inst_i_1
       (.I0(Pstate[0]),
        .I1(i_start_IBUF),
        .I2(Pstate[1]),
        .I3(Pstate[2]),
        .O(o_done_OBUF));
  OBUF o_en_OBUF_inst
       (.I(o_en_OBUF),
        .O(o_en));
  LUT4 #(
    .INIT(16'h0F0E)) 
    o_en_OBUF_inst_i_1
       (.I0(Pstate[1]),
        .I1(Pstate[0]),
        .I2(Pstate[2]),
        .I3(i_start_IBUF),
        .O(o_en_OBUF));
  OBUF o_we_OBUF_inst
       (.I(o_we_OBUF),
        .O(o_we));
  LUT5 #(
    .INIT(32'hAABAAAAA)) 
    o_we_OBUF_inst_i_1
       (.I0(o_we_OBUF_inst_i_2_n_0),
        .I1(o_we_OBUF_inst_i_3_n_0),
        .I2(o_we_OBUF_inst_i_4_n_0),
        .I3(Pstate[2]),
        .I4(Pstate[1]),
        .O(o_we_OBUF));
  LUT4 #(
    .INIT(16'h0400)) 
    o_we_OBUF_inst_i_2
       (.I0(Pstate[1]),
        .I1(Pstate[0]),
        .I2(Pstate[2]),
        .I3(o_we_OBUF_inst_i_5_n_0),
        .O(o_we_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF01000000)) 
    o_we_OBUF_inst_i_3
       (.I0(Pcounter[2]),
        .I1(Pcounter[1]),
        .I2(Pcounter[3]),
        .I3(Pcounter[0]),
        .I4(Pcounter[4]),
        .I5(Pstate[0]),
        .O(o_we_OBUF_inst_i_3_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    o_we_OBUF_inst_i_4
       (.I0(Pcounter[4]),
        .I1(Pcounter[0]),
        .I2(Pcounter[3]),
        .I3(Pcounter[1]),
        .I4(Pcounter[2]),
        .O(o_we_OBUF_inst_i_4_n_0));
  LUT6 #(
    .INIT(64'h020202020202022A)) 
    o_we_OBUF_inst_i_5
       (.I0(o_we_OBUF_inst_i_6_n_0),
        .I1(i_data_IBUF[7]),
        .I2(i_data_IBUF[6]),
        .I3(i_data_IBUF[5]),
        .I4(i_data_IBUF[4]),
        .I5(o_we_OBUF_inst_i_7_n_0),
        .O(o_we_OBUF_inst_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000100010117)) 
    o_we_OBUF_inst_i_6
       (.I0(i_data_IBUF[5]),
        .I1(i_data_IBUF[4]),
        .I2(i_data_IBUF[2]),
        .I3(i_data_IBUF[3]),
        .I4(i_data_IBUF[1]),
        .I5(i_data_IBUF[0]),
        .O(o_we_OBUF_inst_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_we_OBUF_inst_i_7
       (.I0(i_data_IBUF[2]),
        .I1(i_data_IBUF[3]),
        .I2(i_data_IBUF[1]),
        .I3(i_data_IBUF[0]),
        .O(o_we_OBUF_inst_i_7_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
