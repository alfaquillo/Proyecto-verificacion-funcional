// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.2 (lin64) Build 6060944 Thu Mar 06 19:10:09 MST 2025
// Date        : Mon Jun 16 11:57:51 2025
// Host        : Quillo-Thinkpad running 64-bit Fedora Linux 42 (Workstation Edition)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/alfaquillo/Documentos/Vivado/fpu/fpu.sim/sim_1/synth/timing/xsim/fpu_top_tb_time_synth.v
// Design      : fpu_top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module align_adder
   (error_OBUF,
    result_OBUF,
    overflow_OBUF,
    \b[31] ,
    S,
    DI,
    O,
    \a[31] ,
    \a[31]_0 ,
    \mantissa_out1_inferred__1/i__carry__0 ,
    \a[31]_1 ,
    \b[24] ,
    mantissa_out1_carry_i_12_0,
    mantissa_out1_carry_i_10_0,
    \b[30] ,
    rounded_mantissa0_carry_i_54_0,
    sum_result0_carry__1_i_1_0,
    \b[9] ,
    sum_result1_carry__0_i_12_0,
    sum_result0_carry__1_i_1_1,
    sum_result1_carry__0_i_10_0,
    sum_result1_carry__0_i_10_1,
    \b[11] ,
    \a[11] ,
    \b[10] ,
    i__carry__2_i_2_0,
    sum_result1_carry__0_i_10_2,
    sum_result1_carry__0_i_9_0,
    sum_result1_carry__0_i_10_3,
    sum_result1_carry__0_i_10_4,
    sum_result0_carry__3_i_1_0,
    \b[17] ,
    \a[17] ,
    sum_result0_carry__3_i_1_1,
    i__carry__4_i_1_0,
    \b[16] ,
    \a[16] ,
    i__carry__4_i_1_1,
    \b[19] ,
    \a[19] ,
    \b[18] ,
    \a[18] ,
    i__carry__4_i_1_2,
    \b[22] ,
    sum_result1_carry__1_i_9_0,
    i__carry__4_i_1_3,
    \b[21] ,
    \b[20] ,
    sum_result0_carry__0_i_1_0,
    \a[5] ,
    sum_result0_carry__0_i_1_1,
    sum_result0_carry__0_i_1_2,
    sum_result0_carry__0_i_1_3,
    sum_result0_carry__0_i_1_4,
    \a[7] ,
    \a[6] ,
    sum_result1_carry_i_16_0,
    sum_result1_carry_i_16_1,
    \a[3] ,
    \b[3] ,
    i__carry__4_i_9,
    sum_result0_carry__2_i_2_0,
    \a[30] ,
    rounded_mantissa0_carry_i_5__1_0,
    rounded_mantissa0_carry_i_5_0,
    rounded_mantissa0_carry_i_7__0_0,
    rounded_mantissa0_carry_i_5__0_0,
    rounded_mantissa0_carry_i_5__3_0,
    rounded_mantissa0_carry_i_3__3_0,
    rounded_mantissa0_carry_i_6__2_0,
    underflow_OBUF,
    \mantissa_out1_inferred__1/i__carry__0_0 ,
    \mantissa_out1_inferred__1/i__carry ,
    \mantissa_out1_inferred__1/i__carry_0 ,
    \mantissa_out1_inferred__1/i__carry__0_1 ,
    i__carry__4_i_2_0,
    sum_result0_carry__4_i_2_0,
    sum_result1_carry_i_10_0,
    sum_result1_carry_i_12_0,
    \b[7] ,
    \b[8] ,
    i__carry__4_i_1_4,
    i__carry__4_i_1_5,
    b_IBUF,
    sum_result0_carry__1_i_16_0,
    a_IBUF,
    i__carry__1_i_18_0,
    op_IBUF,
    underflow_OBUF_inst_i_11_0,
    \result[23] ,
    CO,
    rounded_mantissa0_carry_i_24__1_0,
    rounded_mantissa0_carry_i_18__0_0,
    \result_OBUF[22]_inst_i_6_0 ,
    mantissa_out1_carry_i_34_0,
    rounded_mantissa0_carry_i_53_0,
    rounded_mantissa0_carry_i_8__2_0,
    \result_OBUF[30]_inst_i_62_0 ,
    rounded_mantissa0_carry_i_8__2_1,
    \result_OBUF[22]_inst_i_12_0 ,
    \result_OBUF[22]_inst_i_12_1 ,
    \result_OBUF[30]_inst_i_43_0 ,
    rounded_mantissa0_carry_i_25_0,
    rounded_mantissa0_carry_i_36__0_0,
    rounded_mantissa0_carry_i_5_1,
    rounded_mantissa0_carry_i_25_1,
    rounded_mantissa0_carry_i_35_0,
    rounded_mantissa0_carry_i_7__0_1,
    mantissa_out1_carry_i_18_0,
    rounded_mantissa0_carry_i_41_0,
    rounded_mantissa0_carry_i_25__0_0,
    rounded_mantissa0_carry_i_26__2_0,
    rounded_mantissa0_carry_i_26_0,
    \result_OBUF[31]_inst_i_1_0 ,
    \result_OBUF[23]_inst_i_1_0 ,
    sum_result1_carry__0,
    \result_OBUF[23]_inst_i_1_1 ,
    \result_OBUF[23]_inst_i_1_2 ,
    \result_OBUF[23]_inst_i_1_3 ,
    underflow_OBUF_inst_i_2_0,
    data0,
    \result_OBUF[22]_inst_i_2_0 ,
    \result_OBUF[30]_inst_i_46_0 ,
    \result_OBUF[30]_inst_i_46_1 ,
    rounded_mantissa0_carry_i_7__3_0,
    \result_OBUF[22]_inst_i_12_2 ,
    rounded_mantissa0_carry_i_5__4,
    rounded_mantissa0_carry_i_6__0_0,
    rounded_mantissa0_carry_i_25__1_0,
    underflow_OBUF_inst_i_2_1,
    sum_result0_carry__0_i_17_0,
    \sum_result0_inferred__0/i__carry ,
    \sum_result0_inferred__0/i__carry_0 ,
    \sum_result0_inferred__0/i__carry_1 ,
    sum_result0_carry,
    sum_result0_carry_0,
    \result_OBUF[31]_inst_i_1_1 ,
    i__carry__0_i_17_0,
    data1,
    data2,
    mantissa_out1_carry_i_23_0,
    underflow_OBUF_inst_i_6_0,
    underflow_OBUF_inst_i_6_1,
    rounded_mantissa0_carry_i_25__3_0);
  output error_OBUF;
  output [31:0]result_OBUF;
  output overflow_OBUF;
  output \b[31] ;
  output [3:0]S;
  output [1:0]DI;
  output [1:0]O;
  output \a[31] ;
  output \a[31]_0 ;
  output \mantissa_out1_inferred__1/i__carry__0 ;
  output \a[31]_1 ;
  output \b[24] ;
  output [2:0]mantissa_out1_carry_i_12_0;
  output [2:0]mantissa_out1_carry_i_10_0;
  output [3:0]\b[30] ;
  output rounded_mantissa0_carry_i_54_0;
  output [3:0]sum_result0_carry__1_i_1_0;
  output \b[9] ;
  output [2:0]sum_result1_carry__0_i_12_0;
  output [3:0]sum_result0_carry__1_i_1_1;
  output [3:0]sum_result1_carry__0_i_10_0;
  output [3:0]sum_result1_carry__0_i_10_1;
  output \b[11] ;
  output \a[11] ;
  output \b[10] ;
  output [3:0]i__carry__2_i_2_0;
  output [3:0]sum_result1_carry__0_i_10_2;
  output [3:0]sum_result1_carry__0_i_9_0;
  output [3:0]sum_result1_carry__0_i_10_3;
  output [3:0]sum_result1_carry__0_i_10_4;
  output [3:0]sum_result0_carry__3_i_1_0;
  output \b[17] ;
  output \a[17] ;
  output [3:0]sum_result0_carry__3_i_1_1;
  output [3:0]i__carry__4_i_1_0;
  output \b[16] ;
  output \a[16] ;
  output [3:0]i__carry__4_i_1_1;
  output \b[19] ;
  output \a[19] ;
  output \b[18] ;
  output \a[18] ;
  output [3:0]i__carry__4_i_1_2;
  output \b[22] ;
  output [3:0]sum_result1_carry__1_i_9_0;
  output [3:0]i__carry__4_i_1_3;
  output \b[21] ;
  output \b[20] ;
  output [3:0]sum_result0_carry__0_i_1_0;
  output \a[5] ;
  output [3:0]sum_result0_carry__0_i_1_1;
  output [3:0]sum_result0_carry__0_i_1_2;
  output [3:0]sum_result0_carry__0_i_1_3;
  output [3:0]sum_result0_carry__0_i_1_4;
  output \a[7] ;
  output \a[6] ;
  output [3:0]sum_result1_carry_i_16_0;
  output [3:0]sum_result1_carry_i_16_1;
  output [3:0]\a[3] ;
  output [3:0]\b[3] ;
  output i__carry__4_i_9;
  output [3:0]sum_result0_carry__2_i_2_0;
  output [3:0]\a[30] ;
  output [3:0]rounded_mantissa0_carry_i_5__1_0;
  output [3:0]rounded_mantissa0_carry_i_5_0;
  output [3:0]rounded_mantissa0_carry_i_7__0_0;
  output [3:0]rounded_mantissa0_carry_i_5__0_0;
  output [3:0]rounded_mantissa0_carry_i_5__3_0;
  output [1:0]rounded_mantissa0_carry_i_3__3_0;
  output rounded_mantissa0_carry_i_6__2_0;
  output underflow_OBUF;
  output \mantissa_out1_inferred__1/i__carry__0_0 ;
  output \mantissa_out1_inferred__1/i__carry ;
  output \mantissa_out1_inferred__1/i__carry_0 ;
  output \mantissa_out1_inferred__1/i__carry__0_1 ;
  output [3:0]i__carry__4_i_2_0;
  output [3:0]sum_result0_carry__4_i_2_0;
  output [3:0]sum_result1_carry_i_10_0;
  output [0:0]sum_result1_carry_i_12_0;
  output [3:0]\b[7] ;
  output [0:0]\b[8] ;
  input [3:0]i__carry__4_i_1_4;
  input [3:0]i__carry__4_i_1_5;
  input [31:0]b_IBUF;
  input [3:0]sum_result0_carry__1_i_16_0;
  input [31:0]a_IBUF;
  input [3:0]i__carry__1_i_18_0;
  input [1:0]op_IBUF;
  input underflow_OBUF_inst_i_11_0;
  input \result[23] ;
  input [0:0]CO;
  input rounded_mantissa0_carry_i_24__1_0;
  input rounded_mantissa0_carry_i_18__0_0;
  input \result_OBUF[22]_inst_i_6_0 ;
  input mantissa_out1_carry_i_34_0;
  input [3:0]rounded_mantissa0_carry_i_53_0;
  input rounded_mantissa0_carry_i_8__2_0;
  input \result_OBUF[30]_inst_i_62_0 ;
  input rounded_mantissa0_carry_i_8__2_1;
  input \result_OBUF[22]_inst_i_12_0 ;
  input \result_OBUF[22]_inst_i_12_1 ;
  input \result_OBUF[30]_inst_i_43_0 ;
  input rounded_mantissa0_carry_i_25_0;
  input rounded_mantissa0_carry_i_36__0_0;
  input rounded_mantissa0_carry_i_5_1;
  input rounded_mantissa0_carry_i_25_1;
  input rounded_mantissa0_carry_i_35_0;
  input rounded_mantissa0_carry_i_7__0_1;
  input mantissa_out1_carry_i_18_0;
  input rounded_mantissa0_carry_i_41_0;
  input rounded_mantissa0_carry_i_25__0_0;
  input rounded_mantissa0_carry_i_26__2_0;
  input rounded_mantissa0_carry_i_26_0;
  input \result_OBUF[31]_inst_i_1_0 ;
  input \result_OBUF[23]_inst_i_1_0 ;
  input sum_result1_carry__0;
  input \result_OBUF[23]_inst_i_1_1 ;
  input \result_OBUF[23]_inst_i_1_2 ;
  input \result_OBUF[23]_inst_i_1_3 ;
  input [0:0]underflow_OBUF_inst_i_2_0;
  input [21:0]data0;
  input \result_OBUF[22]_inst_i_2_0 ;
  input \result_OBUF[30]_inst_i_46_0 ;
  input \result_OBUF[30]_inst_i_46_1 ;
  input rounded_mantissa0_carry_i_7__3_0;
  input \result_OBUF[22]_inst_i_12_2 ;
  input [3:0]rounded_mantissa0_carry_i_5__4;
  input rounded_mantissa0_carry_i_6__0_0;
  input rounded_mantissa0_carry_i_25__1_0;
  input [0:0]underflow_OBUF_inst_i_2_1;
  input sum_result0_carry__0_i_17_0;
  input \sum_result0_inferred__0/i__carry ;
  input \sum_result0_inferred__0/i__carry_0 ;
  input \sum_result0_inferred__0/i__carry_1 ;
  input sum_result0_carry;
  input sum_result0_carry_0;
  input \result_OBUF[31]_inst_i_1_1 ;
  input i__carry__0_i_17_0;
  input [23:0]data1;
  input [23:0]data2;
  input mantissa_out1_carry_i_23_0;
  input [0:0]underflow_OBUF_inst_i_6_0;
  input [0:0]underflow_OBUF_inst_i_6_1;
  input [0:0]rounded_mantissa0_carry_i_25__3_0;

  wire [0:0]CO;
  wire [1:0]DI;
  wire [1:0]O;
  wire [3:0]S;
  wire \a[11] ;
  wire \a[16] ;
  wire \a[17] ;
  wire \a[18] ;
  wire \a[19] ;
  wire [3:0]\a[30] ;
  wire \a[31] ;
  wire \a[31]_0 ;
  wire \a[31]_1 ;
  wire [3:0]\a[3] ;
  wire \a[5] ;
  wire \a[6] ;
  wire \a[7] ;
  wire [31:0]a_IBUF;
  wire [24:0]\adder/data0 ;
  wire [7:0]aligned_mantissa_a11_out;
  wire aligned_mantissa_a1_carry__0_n_1;
  wire aligned_mantissa_a1_carry__0_n_2;
  wire aligned_mantissa_a1_carry__0_n_3;
  wire aligned_mantissa_a1_carry_i_1_n_0;
  wire aligned_mantissa_a1_carry_i_2_n_0;
  wire aligned_mantissa_a1_carry_i_3_n_0;
  wire aligned_mantissa_a1_carry_i_4_n_0;
  wire aligned_mantissa_a1_carry_n_0;
  wire aligned_mantissa_a1_carry_n_1;
  wire aligned_mantissa_a1_carry_n_2;
  wire aligned_mantissa_a1_carry_n_3;
  wire [7:0]aligned_mantissa_b10_out;
  wire aligned_mantissa_b1_carry__0_n_1;
  wire aligned_mantissa_b1_carry__0_n_2;
  wire aligned_mantissa_b1_carry__0_n_3;
  wire aligned_mantissa_b1_carry_i_1_n_0;
  wire aligned_mantissa_b1_carry_i_2_n_0;
  wire aligned_mantissa_b1_carry_i_3_n_0;
  wire aligned_mantissa_b1_carry_i_4_n_0;
  wire aligned_mantissa_b1_carry_n_0;
  wire aligned_mantissa_b1_carry_n_1;
  wire aligned_mantissa_b1_carry_n_2;
  wire aligned_mantissa_b1_carry_n_3;
  wire \b[10] ;
  wire \b[11] ;
  wire \b[16] ;
  wire \b[17] ;
  wire \b[18] ;
  wire \b[19] ;
  wire \b[20] ;
  wire \b[21] ;
  wire \b[22] ;
  wire \b[24] ;
  wire [3:0]\b[30] ;
  wire \b[31] ;
  wire [3:0]\b[3] ;
  wire [3:0]\b[7] ;
  wire [0:0]\b[8] ;
  wire \b[9] ;
  wire [31:0]b_IBUF;
  wire [21:0]data0;
  wire [23:0]data1;
  wire [23:0]data2;
  wire error_OBUF;
  wire error_OBUF_inst_i_2_n_0;
  wire final_exp1__0__0;
  wire final_exp1_carry_n_1;
  wire final_exp1_carry_n_2;
  wire final_exp1_carry_n_3;
  wire i__carry__0_i_10_n_0;
  wire i__carry__0_i_11_n_0;
  wire i__carry__0_i_12_n_0;
  wire i__carry__0_i_13_n_0;
  wire i__carry__0_i_14_n_0;
  wire i__carry__0_i_15_n_0;
  wire i__carry__0_i_16_n_0;
  wire i__carry__0_i_17_0;
  wire i__carry__0_i_17_n_0;
  wire i__carry__0_i_18_n_0;
  wire i__carry__0_i_19_n_0;
  wire i__carry__0_i_9_n_0;
  wire i__carry__1_i_10_n_0;
  wire i__carry__1_i_11_n_0;
  wire i__carry__1_i_12_n_0;
  wire i__carry__1_i_13_n_0;
  wire i__carry__1_i_14_n_0;
  wire i__carry__1_i_15_n_0;
  wire i__carry__1_i_16_n_0;
  wire i__carry__1_i_17_n_0;
  wire [3:0]i__carry__1_i_18_0;
  wire i__carry__1_i_18_n_0;
  wire i__carry__1_i_19_n_0;
  wire i__carry__1_i_20_n_0;
  wire i__carry__1_i_21_n_0;
  wire i__carry__1_i_22_n_0;
  wire i__carry__1_i_23_n_0;
  wire i__carry__1_i_24_n_0;
  wire i__carry__1_i_9_n_0;
  wire i__carry__2_i_10_n_0;
  wire i__carry__2_i_11_n_0;
  wire i__carry__2_i_12_n_0;
  wire i__carry__2_i_13_n_0;
  wire i__carry__2_i_14_n_0;
  wire i__carry__2_i_15_n_0;
  wire [3:0]i__carry__2_i_2_0;
  wire i__carry__2_i_9_n_0;
  wire i__carry__3_i_10_n_0;
  wire i__carry__3_i_11_n_0;
  wire i__carry__3_i_12_n_0;
  wire i__carry__3_i_13_n_0;
  wire i__carry__3_i_14_n_0;
  wire i__carry__3_i_15_n_0;
  wire i__carry__3_i_16_n_0;
  wire i__carry__3_i_17_n_0;
  wire i__carry__3_i_18_n_0;
  wire i__carry__3_i_19_n_0;
  wire i__carry__3_i_9_n_0;
  wire i__carry__4_i_10_n_0;
  wire i__carry__4_i_11_n_0;
  wire i__carry__4_i_12_n_0;
  wire i__carry__4_i_13_n_0;
  wire i__carry__4_i_14_n_0;
  wire i__carry__4_i_15_n_0;
  wire i__carry__4_i_16_n_0;
  wire [3:0]i__carry__4_i_1_0;
  wire [3:0]i__carry__4_i_1_1;
  wire [3:0]i__carry__4_i_1_2;
  wire [3:0]i__carry__4_i_1_3;
  wire [3:0]i__carry__4_i_1_4;
  wire [3:0]i__carry__4_i_1_5;
  wire [3:0]i__carry__4_i_2_0;
  wire i__carry__4_i_9;
  wire i__carry_i_10_n_0;
  wire i__carry_i_11_n_0;
  wire i__carry_i_15_n_0;
  wire i__carry_i_16_n_0;
  wire i__carry_i_17_n_0;
  wire i__carry_i_18_n_0;
  wire i__carry_i_21_n_0;
  wire i__carry_i_22_n_0;
  wire i__carry_i_23_n_0;
  wire i__carry_i_24_n_0;
  wire i__carry_i_25_n_0;
  wire i__carry_i_26_n_0;
  wire i__carry_i_27_n_0;
  wire i__carry_i_9_n_0;
  wire [2:0]mantissa_out1_carry_i_10_0;
  wire mantissa_out1_carry_i_10_n_0;
  wire mantissa_out1_carry_i_11_n_0;
  wire [2:0]mantissa_out1_carry_i_12_0;
  wire mantissa_out1_carry_i_12_n_0;
  wire mantissa_out1_carry_i_13_n_0;
  wire mantissa_out1_carry_i_14_n_0;
  wire mantissa_out1_carry_i_15_n_0;
  wire mantissa_out1_carry_i_17_n_0;
  wire mantissa_out1_carry_i_18_0;
  wire mantissa_out1_carry_i_18_n_0;
  wire mantissa_out1_carry_i_19_n_0;
  wire mantissa_out1_carry_i_20_n_0;
  wire mantissa_out1_carry_i_21_n_0;
  wire mantissa_out1_carry_i_22_n_0;
  wire mantissa_out1_carry_i_23_0;
  wire mantissa_out1_carry_i_23_n_0;
  wire mantissa_out1_carry_i_24_n_0;
  wire mantissa_out1_carry_i_25_n_0;
  wire mantissa_out1_carry_i_26_n_0;
  wire mantissa_out1_carry_i_27_n_0;
  wire mantissa_out1_carry_i_28_n_0;
  wire mantissa_out1_carry_i_29_n_0;
  wire mantissa_out1_carry_i_30_n_0;
  wire mantissa_out1_carry_i_31_n_0;
  wire mantissa_out1_carry_i_32_n_0;
  wire mantissa_out1_carry_i_33_n_0;
  wire mantissa_out1_carry_i_34_0;
  wire mantissa_out1_carry_i_34_n_0;
  wire mantissa_out1_carry_i_35_n_0;
  wire mantissa_out1_carry_i_36_n_0;
  wire mantissa_out1_carry_i_37_n_0;
  wire mantissa_out1_carry_i_38_n_0;
  wire mantissa_out1_carry_i_39_n_0;
  wire mantissa_out1_carry_i_40_n_0;
  wire mantissa_out1_carry_i_41_n_0;
  wire mantissa_out1_carry_i_43_n_0;
  wire mantissa_out1_carry_i_43_n_1;
  wire mantissa_out1_carry_i_43_n_2;
  wire mantissa_out1_carry_i_43_n_3;
  wire mantissa_out1_carry_i_49_n_0;
  wire mantissa_out1_carry_i_49_n_1;
  wire mantissa_out1_carry_i_49_n_2;
  wire mantissa_out1_carry_i_49_n_3;
  wire mantissa_out1_carry_i_53_n_0;
  wire mantissa_out1_carry_i_54_n_0;
  wire mantissa_out1_carry_i_55_n_0;
  wire mantissa_out1_carry_i_56_n_0;
  wire mantissa_out1_carry_i_57_n_0;
  wire mantissa_out1_carry_i_58_n_0;
  wire mantissa_out1_carry_i_59_n_0;
  wire mantissa_out1_carry_i_60_n_0;
  wire mantissa_out1_carry_i_61_n_0;
  wire mantissa_out1_carry_i_62_n_0;
  wire mantissa_out1_carry_i_63_n_0;
  wire mantissa_out1_carry_i_64_n_0;
  wire mantissa_out1_carry_i_65_n_0;
  wire mantissa_out1_carry_i_66_n_0;
  wire mantissa_out1_carry_i_67_n_0;
  wire mantissa_out1_carry_i_68_n_0;
  wire mantissa_out1_carry_i_69_n_0;
  wire mantissa_out1_carry_i_70_n_0;
  wire mantissa_out1_carry_i_71_n_0;
  wire mantissa_out1_carry_i_72_n_0;
  wire mantissa_out1_carry_i_73_n_0;
  wire mantissa_out1_carry_i_74_n_0;
  wire mantissa_out1_carry_i_75_n_0;
  wire mantissa_out1_carry_i_76_n_0;
  wire mantissa_out1_carry_i_77_n_0;
  wire mantissa_out1_carry_i_78_n_0;
  wire mantissa_out1_carry_i_79_n_0;
  wire mantissa_out1_carry_i_80_n_0;
  wire mantissa_out1_carry_i_81_n_0;
  wire mantissa_out1_carry_i_82_n_0;
  wire mantissa_out1_carry_i_83_n_0;
  wire mantissa_out1_carry_i_84_n_0;
  wire mantissa_out1_carry_i_85_n_0;
  wire mantissa_out1_carry_i_86_n_0;
  wire mantissa_out1_carry_i_87_n_0;
  wire mantissa_out1_carry_i_88_n_0;
  wire mantissa_out1_carry_i_89_n_0;
  wire mantissa_out1_carry_i_8_n_0;
  wire mantissa_out1_carry_i_90_n_0;
  wire mantissa_out1_carry_i_9_n_0;
  wire \mantissa_out1_inferred__1/i__carry ;
  wire \mantissa_out1_inferred__1/i__carry_0 ;
  wire \mantissa_out1_inferred__1/i__carry__0 ;
  wire \mantissa_out1_inferred__1/i__carry__0_0 ;
  wire \mantissa_out1_inferred__1/i__carry__0_1 ;
  wire [7:0]\norm/exponent_out0 ;
  wire [0:0]\norm/p_0_in ;
  wire [1:0]op_IBUF;
  wire overflow_OBUF;
  wire overflow_OBUF_inst_i_10_n_0;
  wire overflow_OBUF_inst_i_11_n_0;
  wire overflow_OBUF_inst_i_12_n_0;
  wire overflow_OBUF_inst_i_2_n_0;
  wire overflow_OBUF_inst_i_3_n_0;
  wire overflow_OBUF_inst_i_4_n_1;
  wire overflow_OBUF_inst_i_4_n_2;
  wire overflow_OBUF_inst_i_4_n_3;
  wire overflow_OBUF_inst_i_5_n_0;
  wire overflow_OBUF_inst_i_6_n_0;
  wire overflow_OBUF_inst_i_7_n_0;
  wire overflow_OBUF_inst_i_8_n_0;
  wire overflow_OBUF_inst_i_9_n_0;
  wire \result[23] ;
  wire [31:0]result_OBUF;
  wire \result_OBUF[0]_inst_i_2_n_0 ;
  wire \result_OBUF[10]_inst_i_2_n_0 ;
  wire \result_OBUF[11]_inst_i_2_n_0 ;
  wire \result_OBUF[12]_inst_i_2_n_0 ;
  wire \result_OBUF[13]_inst_i_2_n_0 ;
  wire \result_OBUF[14]_inst_i_2_n_0 ;
  wire \result_OBUF[15]_inst_i_2_n_0 ;
  wire \result_OBUF[16]_inst_i_2_n_0 ;
  wire \result_OBUF[17]_inst_i_2_n_0 ;
  wire \result_OBUF[18]_inst_i_2_n_0 ;
  wire \result_OBUF[19]_inst_i_2_n_0 ;
  wire \result_OBUF[1]_inst_i_2_n_0 ;
  wire \result_OBUF[20]_inst_i_2_n_0 ;
  wire \result_OBUF[21]_inst_i_2_n_0 ;
  wire \result_OBUF[21]_inst_i_3_n_0 ;
  wire \result_OBUF[21]_inst_i_4_n_0 ;
  wire \result_OBUF[21]_inst_i_5_n_0 ;
  wire \result_OBUF[21]_inst_i_6_n_0 ;
  wire \result_OBUF[22]_inst_i_10_n_0 ;
  wire \result_OBUF[22]_inst_i_11_n_0 ;
  wire \result_OBUF[22]_inst_i_12_0 ;
  wire \result_OBUF[22]_inst_i_12_1 ;
  wire \result_OBUF[22]_inst_i_12_2 ;
  wire \result_OBUF[22]_inst_i_12_n_0 ;
  wire \result_OBUF[22]_inst_i_13_n_0 ;
  wire \result_OBUF[22]_inst_i_14_n_0 ;
  wire \result_OBUF[22]_inst_i_15_n_0 ;
  wire \result_OBUF[22]_inst_i_16_n_0 ;
  wire \result_OBUF[22]_inst_i_17_n_0 ;
  wire \result_OBUF[22]_inst_i_2_0 ;
  wire \result_OBUF[22]_inst_i_2_n_0 ;
  wire \result_OBUF[22]_inst_i_3_n_0 ;
  wire \result_OBUF[22]_inst_i_4_n_0 ;
  wire \result_OBUF[22]_inst_i_5_n_0 ;
  wire \result_OBUF[22]_inst_i_6_0 ;
  wire \result_OBUF[22]_inst_i_6_n_0 ;
  wire \result_OBUF[22]_inst_i_7_n_0 ;
  wire \result_OBUF[22]_inst_i_8_n_0 ;
  wire \result_OBUF[22]_inst_i_9_n_0 ;
  wire \result_OBUF[23]_inst_i_1_0 ;
  wire \result_OBUF[23]_inst_i_1_1 ;
  wire \result_OBUF[23]_inst_i_1_2 ;
  wire \result_OBUF[23]_inst_i_1_3 ;
  wire \result_OBUF[24]_inst_i_2_n_0 ;
  wire \result_OBUF[24]_inst_i_3_n_0 ;
  wire \result_OBUF[24]_inst_i_4_n_0 ;
  wire \result_OBUF[25]_inst_i_2_n_0 ;
  wire \result_OBUF[26]_inst_i_2_n_0 ;
  wire \result_OBUF[26]_inst_i_3_n_0 ;
  wire \result_OBUF[27]_inst_i_2_n_0 ;
  wire \result_OBUF[28]_inst_i_2_n_0 ;
  wire \result_OBUF[28]_inst_i_3_n_0 ;
  wire \result_OBUF[28]_inst_i_4_n_0 ;
  wire \result_OBUF[29]_inst_i_2_n_0 ;
  wire \result_OBUF[2]_inst_i_2_n_0 ;
  wire \result_OBUF[30]_inst_i_10_n_0 ;
  wire \result_OBUF[30]_inst_i_13_n_0 ;
  wire \result_OBUF[30]_inst_i_14_n_0 ;
  wire \result_OBUF[30]_inst_i_15_n_0 ;
  wire \result_OBUF[30]_inst_i_16_n_0 ;
  wire \result_OBUF[30]_inst_i_16_n_1 ;
  wire \result_OBUF[30]_inst_i_16_n_2 ;
  wire \result_OBUF[30]_inst_i_16_n_3 ;
  wire \result_OBUF[30]_inst_i_17_n_0 ;
  wire \result_OBUF[30]_inst_i_21_n_0 ;
  wire \result_OBUF[30]_inst_i_22_n_0 ;
  wire \result_OBUF[30]_inst_i_23_n_0 ;
  wire \result_OBUF[30]_inst_i_24_n_0 ;
  wire \result_OBUF[30]_inst_i_25_n_0 ;
  wire \result_OBUF[30]_inst_i_26_n_0 ;
  wire \result_OBUF[30]_inst_i_27_n_0 ;
  wire \result_OBUF[30]_inst_i_29_n_0 ;
  wire \result_OBUF[30]_inst_i_2_n_0 ;
  wire \result_OBUF[30]_inst_i_30_n_0 ;
  wire \result_OBUF[30]_inst_i_31_n_0 ;
  wire \result_OBUF[30]_inst_i_32_n_0 ;
  wire \result_OBUF[30]_inst_i_33_n_0 ;
  wire \result_OBUF[30]_inst_i_34_n_0 ;
  wire \result_OBUF[30]_inst_i_35_n_0 ;
  wire \result_OBUF[30]_inst_i_36_n_0 ;
  wire \result_OBUF[30]_inst_i_37_n_0 ;
  wire \result_OBUF[30]_inst_i_38_n_0 ;
  wire \result_OBUF[30]_inst_i_39_n_0 ;
  wire \result_OBUF[30]_inst_i_3_n_0 ;
  wire \result_OBUF[30]_inst_i_40_n_0 ;
  wire \result_OBUF[30]_inst_i_41_n_0 ;
  wire \result_OBUF[30]_inst_i_42_n_0 ;
  wire \result_OBUF[30]_inst_i_43_0 ;
  wire \result_OBUF[30]_inst_i_43_n_0 ;
  wire \result_OBUF[30]_inst_i_44_n_0 ;
  wire \result_OBUF[30]_inst_i_45_n_0 ;
  wire \result_OBUF[30]_inst_i_46_0 ;
  wire \result_OBUF[30]_inst_i_46_1 ;
  wire \result_OBUF[30]_inst_i_46_n_0 ;
  wire \result_OBUF[30]_inst_i_47_n_0 ;
  wire \result_OBUF[30]_inst_i_48_n_0 ;
  wire \result_OBUF[30]_inst_i_49_n_0 ;
  wire \result_OBUF[30]_inst_i_4_n_0 ;
  wire \result_OBUF[30]_inst_i_50_n_0 ;
  wire \result_OBUF[30]_inst_i_51_n_0 ;
  wire \result_OBUF[30]_inst_i_52_n_0 ;
  wire \result_OBUF[30]_inst_i_53_n_0 ;
  wire \result_OBUF[30]_inst_i_54_n_0 ;
  wire \result_OBUF[30]_inst_i_55_n_0 ;
  wire \result_OBUF[30]_inst_i_56_n_0 ;
  wire \result_OBUF[30]_inst_i_57_n_0 ;
  wire \result_OBUF[30]_inst_i_58_n_0 ;
  wire \result_OBUF[30]_inst_i_59_n_0 ;
  wire \result_OBUF[30]_inst_i_5_n_0 ;
  wire \result_OBUF[30]_inst_i_60_n_0 ;
  wire \result_OBUF[30]_inst_i_61_n_0 ;
  wire \result_OBUF[30]_inst_i_62_0 ;
  wire \result_OBUF[30]_inst_i_62_n_0 ;
  wire \result_OBUF[30]_inst_i_63_n_0 ;
  wire \result_OBUF[30]_inst_i_64_n_0 ;
  wire \result_OBUF[30]_inst_i_7_n_0 ;
  wire \result_OBUF[30]_inst_i_8_n_0 ;
  wire \result_OBUF[30]_inst_i_9_n_0 ;
  wire \result_OBUF[31]_inst_i_1_0 ;
  wire \result_OBUF[31]_inst_i_1_1 ;
  wire \result_OBUF[31]_inst_i_2_n_0 ;
  wire \result_OBUF[31]_inst_i_3_n_0 ;
  wire \result_OBUF[31]_inst_i_4_n_0 ;
  wire \result_OBUF[31]_inst_i_5_n_0 ;
  wire \result_OBUF[31]_inst_i_6_n_0 ;
  wire \result_OBUF[3]_inst_i_2_n_0 ;
  wire \result_OBUF[4]_inst_i_2_n_0 ;
  wire \result_OBUF[5]_inst_i_2_n_0 ;
  wire \result_OBUF[6]_inst_i_2_n_0 ;
  wire \result_OBUF[7]_inst_i_2_n_0 ;
  wire \result_OBUF[8]_inst_i_2_n_0 ;
  wire \result_OBUF[9]_inst_i_2_n_0 ;
  wire rounded_mantissa0_carry_i_10__0_n_0;
  wire rounded_mantissa0_carry_i_10__1_n_0;
  wire rounded_mantissa0_carry_i_10__2_n_0;
  wire rounded_mantissa0_carry_i_10__4_n_0;
  wire rounded_mantissa0_carry_i_10_n_0;
  wire rounded_mantissa0_carry_i_11__0_n_0;
  wire rounded_mantissa0_carry_i_11__1_n_0;
  wire rounded_mantissa0_carry_i_11__3_n_0;
  wire rounded_mantissa0_carry_i_11__4_n_0;
  wire rounded_mantissa0_carry_i_11_n_0;
  wire rounded_mantissa0_carry_i_12__0_n_0;
  wire rounded_mantissa0_carry_i_12__1_n_0;
  wire rounded_mantissa0_carry_i_12__3_n_0;
  wire rounded_mantissa0_carry_i_12_n_0;
  wire rounded_mantissa0_carry_i_13__0_n_0;
  wire rounded_mantissa0_carry_i_13__2_n_0;
  wire rounded_mantissa0_carry_i_13__3_n_0;
  wire rounded_mantissa0_carry_i_13__4_n_0;
  wire rounded_mantissa0_carry_i_13_n_0;
  wire rounded_mantissa0_carry_i_14__0_n_0;
  wire rounded_mantissa0_carry_i_14__1_n_0;
  wire rounded_mantissa0_carry_i_14__2_n_0;
  wire rounded_mantissa0_carry_i_14__3_n_0;
  wire rounded_mantissa0_carry_i_14__4_n_0;
  wire rounded_mantissa0_carry_i_14_n_0;
  wire rounded_mantissa0_carry_i_15__0_n_0;
  wire rounded_mantissa0_carry_i_15__1_n_0;
  wire rounded_mantissa0_carry_i_15__2_n_0;
  wire rounded_mantissa0_carry_i_15__3_n_0;
  wire rounded_mantissa0_carry_i_15__4_n_0;
  wire rounded_mantissa0_carry_i_15_n_0;
  wire rounded_mantissa0_carry_i_16__0_n_0;
  wire rounded_mantissa0_carry_i_16__1_n_0;
  wire rounded_mantissa0_carry_i_16__2_n_0;
  wire rounded_mantissa0_carry_i_16__3_n_0;
  wire rounded_mantissa0_carry_i_16__4_n_0;
  wire rounded_mantissa0_carry_i_16_n_0;
  wire rounded_mantissa0_carry_i_17__0_n_0;
  wire rounded_mantissa0_carry_i_17__1_n_0;
  wire rounded_mantissa0_carry_i_17__2_n_0;
  wire rounded_mantissa0_carry_i_17__3_n_0;
  wire rounded_mantissa0_carry_i_17__4_n_0;
  wire rounded_mantissa0_carry_i_17_n_0;
  wire rounded_mantissa0_carry_i_18__0_0;
  wire rounded_mantissa0_carry_i_18__0_n_0;
  wire rounded_mantissa0_carry_i_18__1_n_0;
  wire rounded_mantissa0_carry_i_18__2_n_0;
  wire rounded_mantissa0_carry_i_18__3_n_0;
  wire rounded_mantissa0_carry_i_18_n_0;
  wire rounded_mantissa0_carry_i_19__0_n_0;
  wire rounded_mantissa0_carry_i_19__1_n_0;
  wire rounded_mantissa0_carry_i_19__2_n_0;
  wire rounded_mantissa0_carry_i_19__3_n_0;
  wire rounded_mantissa0_carry_i_19_n_0;
  wire rounded_mantissa0_carry_i_20__0_n_0;
  wire rounded_mantissa0_carry_i_20__1_n_0;
  wire rounded_mantissa0_carry_i_20__2_n_0;
  wire rounded_mantissa0_carry_i_20__3_n_0;
  wire rounded_mantissa0_carry_i_20_n_0;
  wire rounded_mantissa0_carry_i_21__1_n_0;
  wire rounded_mantissa0_carry_i_21__1_n_1;
  wire rounded_mantissa0_carry_i_21__1_n_2;
  wire rounded_mantissa0_carry_i_21__1_n_3;
  wire rounded_mantissa0_carry_i_21__3_n_0;
  wire rounded_mantissa0_carry_i_21_n_0;
  wire rounded_mantissa0_carry_i_22__0_n_0;
  wire rounded_mantissa0_carry_i_22__3_n_0;
  wire rounded_mantissa0_carry_i_22_n_0;
  wire rounded_mantissa0_carry_i_23__0_n_0;
  wire rounded_mantissa0_carry_i_23__1_n_0;
  wire rounded_mantissa0_carry_i_23__2_n_0;
  wire rounded_mantissa0_carry_i_23__3_n_0;
  wire rounded_mantissa0_carry_i_23_n_0;
  wire rounded_mantissa0_carry_i_24__0_n_0;
  wire rounded_mantissa0_carry_i_24__1_0;
  wire rounded_mantissa0_carry_i_24__1_n_0;
  wire rounded_mantissa0_carry_i_24__2_n_0;
  wire rounded_mantissa0_carry_i_24__3_n_0;
  wire rounded_mantissa0_carry_i_24_n_0;
  wire rounded_mantissa0_carry_i_25_0;
  wire rounded_mantissa0_carry_i_25_1;
  wire rounded_mantissa0_carry_i_25__0_0;
  wire rounded_mantissa0_carry_i_25__0_n_0;
  wire rounded_mantissa0_carry_i_25__1_0;
  wire rounded_mantissa0_carry_i_25__1_n_0;
  wire rounded_mantissa0_carry_i_25__2_n_0;
  wire [0:0]rounded_mantissa0_carry_i_25__3_0;
  wire rounded_mantissa0_carry_i_25_n_0;
  wire rounded_mantissa0_carry_i_26_0;
  wire rounded_mantissa0_carry_i_26__0_n_0;
  wire rounded_mantissa0_carry_i_26__1_n_0;
  wire rounded_mantissa0_carry_i_26__2_0;
  wire rounded_mantissa0_carry_i_26__2_n_0;
  wire rounded_mantissa0_carry_i_26__3_n_0;
  wire rounded_mantissa0_carry_i_26_n_0;
  wire rounded_mantissa0_carry_i_27__0_n_0;
  wire rounded_mantissa0_carry_i_27__1_n_0;
  wire rounded_mantissa0_carry_i_27__2_n_0;
  wire rounded_mantissa0_carry_i_27__3_n_0;
  wire rounded_mantissa0_carry_i_27_n_0;
  wire rounded_mantissa0_carry_i_28__0_n_0;
  wire rounded_mantissa0_carry_i_28__1_n_0;
  wire rounded_mantissa0_carry_i_28__3_n_0;
  wire rounded_mantissa0_carry_i_28_n_0;
  wire rounded_mantissa0_carry_i_29__0_n_0;
  wire rounded_mantissa0_carry_i_29__1_n_0;
  wire rounded_mantissa0_carry_i_29__2_n_0;
  wire rounded_mantissa0_carry_i_29__3_n_0;
  wire rounded_mantissa0_carry_i_29__3_n_1;
  wire rounded_mantissa0_carry_i_29__3_n_2;
  wire rounded_mantissa0_carry_i_29__3_n_3;
  wire rounded_mantissa0_carry_i_29_n_0;
  wire rounded_mantissa0_carry_i_30__0_n_0;
  wire rounded_mantissa0_carry_i_30__1_n_0;
  wire rounded_mantissa0_carry_i_30__2_n_0;
  wire rounded_mantissa0_carry_i_30_n_0;
  wire rounded_mantissa0_carry_i_31__0_n_0;
  wire rounded_mantissa0_carry_i_31__1_n_0;
  wire rounded_mantissa0_carry_i_31__2_n_0;
  wire rounded_mantissa0_carry_i_31__3_n_0;
  wire rounded_mantissa0_carry_i_31_n_0;
  wire rounded_mantissa0_carry_i_32__0_n_0;
  wire rounded_mantissa0_carry_i_32__1_n_0;
  wire rounded_mantissa0_carry_i_32__2_n_0;
  wire rounded_mantissa0_carry_i_32_n_0;
  wire rounded_mantissa0_carry_i_33__0_n_0;
  wire rounded_mantissa0_carry_i_33__1_n_0;
  wire rounded_mantissa0_carry_i_33__2_n_0;
  wire rounded_mantissa0_carry_i_33_n_0;
  wire rounded_mantissa0_carry_i_34__1_n_0;
  wire rounded_mantissa0_carry_i_34__2_n_0;
  wire rounded_mantissa0_carry_i_34_n_0;
  wire rounded_mantissa0_carry_i_35_0;
  wire rounded_mantissa0_carry_i_35__0_n_0;
  wire rounded_mantissa0_carry_i_35__1_n_0;
  wire rounded_mantissa0_carry_i_35__2_n_0;
  wire rounded_mantissa0_carry_i_35_n_0;
  wire rounded_mantissa0_carry_i_36__0_0;
  wire rounded_mantissa0_carry_i_36__0_n_0;
  wire rounded_mantissa0_carry_i_36__1_n_0;
  wire rounded_mantissa0_carry_i_36__2_n_0;
  wire rounded_mantissa0_carry_i_36_n_0;
  wire rounded_mantissa0_carry_i_37__0_n_0;
  wire rounded_mantissa0_carry_i_37__1_n_0;
  wire rounded_mantissa0_carry_i_37__2_n_0;
  wire rounded_mantissa0_carry_i_37_n_0;
  wire rounded_mantissa0_carry_i_38__0_n_0;
  wire rounded_mantissa0_carry_i_38__1_n_0;
  wire rounded_mantissa0_carry_i_38__2_n_0;
  wire rounded_mantissa0_carry_i_38_n_0;
  wire rounded_mantissa0_carry_i_39__0_n_0;
  wire rounded_mantissa0_carry_i_39__1_n_0;
  wire rounded_mantissa0_carry_i_39__2_n_0;
  wire rounded_mantissa0_carry_i_39_n_0;
  wire [1:0]rounded_mantissa0_carry_i_3__3_0;
  wire rounded_mantissa0_carry_i_3__3_n_0;
  wire rounded_mantissa0_carry_i_40__0_n_0;
  wire rounded_mantissa0_carry_i_40__1_n_0;
  wire rounded_mantissa0_carry_i_40__2_n_0;
  wire rounded_mantissa0_carry_i_40_n_0;
  wire rounded_mantissa0_carry_i_41_0;
  wire rounded_mantissa0_carry_i_41__2_n_0;
  wire rounded_mantissa0_carry_i_41_n_0;
  wire rounded_mantissa0_carry_i_42__0_n_0;
  wire rounded_mantissa0_carry_i_42__1_n_0;
  wire rounded_mantissa0_carry_i_42__2_n_0;
  wire rounded_mantissa0_carry_i_42_n_0;
  wire rounded_mantissa0_carry_i_43__0_n_0;
  wire rounded_mantissa0_carry_i_43__1_n_0;
  wire rounded_mantissa0_carry_i_43__2_n_0;
  wire rounded_mantissa0_carry_i_43_n_0;
  wire rounded_mantissa0_carry_i_44__0_n_0;
  wire rounded_mantissa0_carry_i_44_n_0;
  wire rounded_mantissa0_carry_i_45_n_0;
  wire rounded_mantissa0_carry_i_46_n_0;
  wire rounded_mantissa0_carry_i_46_n_1;
  wire rounded_mantissa0_carry_i_46_n_2;
  wire rounded_mantissa0_carry_i_46_n_3;
  wire rounded_mantissa0_carry_i_47_n_0;
  wire rounded_mantissa0_carry_i_48_n_0;
  wire rounded_mantissa0_carry_i_49_n_0;
  wire rounded_mantissa0_carry_i_4__4_n_0;
  wire rounded_mantissa0_carry_i_50_n_0;
  wire rounded_mantissa0_carry_i_51_n_0;
  wire rounded_mantissa0_carry_i_52_n_0;
  wire [3:0]rounded_mantissa0_carry_i_53_0;
  wire rounded_mantissa0_carry_i_53_n_0;
  wire rounded_mantissa0_carry_i_54_0;
  wire rounded_mantissa0_carry_i_54_n_3;
  wire rounded_mantissa0_carry_i_55_n_0;
  wire rounded_mantissa0_carry_i_56_n_0;
  wire rounded_mantissa0_carry_i_57_n_0;
  wire rounded_mantissa0_carry_i_58_n_0;
  wire rounded_mantissa0_carry_i_59_n_0;
  wire [3:0]rounded_mantissa0_carry_i_5_0;
  wire rounded_mantissa0_carry_i_5_1;
  wire [3:0]rounded_mantissa0_carry_i_5__0_0;
  wire rounded_mantissa0_carry_i_5__0_n_0;
  wire [3:0]rounded_mantissa0_carry_i_5__1_0;
  wire rounded_mantissa0_carry_i_5__1_n_0;
  wire [3:0]rounded_mantissa0_carry_i_5__3_0;
  wire rounded_mantissa0_carry_i_5__3_n_0;
  wire [3:0]rounded_mantissa0_carry_i_5__4;
  wire rounded_mantissa0_carry_i_5_n_0;
  wire rounded_mantissa0_carry_i_60_n_0;
  wire rounded_mantissa0_carry_i_61_n_0;
  wire rounded_mantissa0_carry_i_62_n_0;
  wire rounded_mantissa0_carry_i_63_n_0;
  wire rounded_mantissa0_carry_i_64_n_0;
  wire rounded_mantissa0_carry_i_65_n_0;
  wire rounded_mantissa0_carry_i_66_n_0;
  wire rounded_mantissa0_carry_i_67_n_0;
  wire rounded_mantissa0_carry_i_68_n_0;
  wire rounded_mantissa0_carry_i_69_n_0;
  wire rounded_mantissa0_carry_i_6__0_0;
  wire rounded_mantissa0_carry_i_6__0_n_0;
  wire rounded_mantissa0_carry_i_6__1_n_0;
  wire rounded_mantissa0_carry_i_6__2_0;
  wire rounded_mantissa0_carry_i_6__2_n_0;
  wire rounded_mantissa0_carry_i_6__3_n_0;
  wire rounded_mantissa0_carry_i_6__4_n_0;
  wire rounded_mantissa0_carry_i_6_n_0;
  wire rounded_mantissa0_carry_i_70_n_0;
  wire rounded_mantissa0_carry_i_72_n_0;
  wire rounded_mantissa0_carry_i_73_n_0;
  wire rounded_mantissa0_carry_i_74_n_0;
  wire rounded_mantissa0_carry_i_75_n_0;
  wire rounded_mantissa0_carry_i_76_n_0;
  wire rounded_mantissa0_carry_i_77_n_0;
  wire rounded_mantissa0_carry_i_78_n_0;
  wire rounded_mantissa0_carry_i_79_n_0;
  wire [3:0]rounded_mantissa0_carry_i_7__0_0;
  wire rounded_mantissa0_carry_i_7__0_1;
  wire rounded_mantissa0_carry_i_7__0_n_0;
  wire rounded_mantissa0_carry_i_7__1_n_0;
  wire rounded_mantissa0_carry_i_7__2_n_0;
  wire rounded_mantissa0_carry_i_7__3_0;
  wire rounded_mantissa0_carry_i_7__3_n_0;
  wire rounded_mantissa0_carry_i_7__4_n_0;
  wire rounded_mantissa0_carry_i_7_n_0;
  wire rounded_mantissa0_carry_i_80_n_0;
  wire rounded_mantissa0_carry_i_81_n_0;
  wire rounded_mantissa0_carry_i_82_n_0;
  wire rounded_mantissa0_carry_i_83_n_0;
  wire rounded_mantissa0_carry_i_84_n_0;
  wire rounded_mantissa0_carry_i_8__0_n_0;
  wire rounded_mantissa0_carry_i_8__1_n_0;
  wire rounded_mantissa0_carry_i_8__2_0;
  wire rounded_mantissa0_carry_i_8__2_1;
  wire rounded_mantissa0_carry_i_8__2_n_0;
  wire rounded_mantissa0_carry_i_8__3_n_0;
  wire rounded_mantissa0_carry_i_8_n_0;
  wire rounded_mantissa0_carry_i_9__0_n_0;
  wire rounded_mantissa0_carry_i_9__1_n_0;
  wire rounded_mantissa0_carry_i_9__3_n_0;
  wire rounded_mantissa0_carry_i_9__4_n_0;
  wire rounded_mantissa0_carry_i_9_n_0;
  wire sum_result0_carry;
  wire sum_result0_carry_0;
  wire sum_result0_carry__0_i_10_n_0;
  wire sum_result0_carry__0_i_11_n_0;
  wire sum_result0_carry__0_i_12_n_0;
  wire sum_result0_carry__0_i_13_n_0;
  wire sum_result0_carry__0_i_14_n_0;
  wire sum_result0_carry__0_i_15_n_0;
  wire sum_result0_carry__0_i_16_n_0;
  wire sum_result0_carry__0_i_17_0;
  wire sum_result0_carry__0_i_17_n_0;
  wire sum_result0_carry__0_i_18_n_0;
  wire sum_result0_carry__0_i_19_n_0;
  wire [3:0]sum_result0_carry__0_i_1_0;
  wire [3:0]sum_result0_carry__0_i_1_1;
  wire [3:0]sum_result0_carry__0_i_1_2;
  wire [3:0]sum_result0_carry__0_i_1_3;
  wire [3:0]sum_result0_carry__0_i_1_4;
  wire sum_result0_carry__0_i_20_n_0;
  wire sum_result0_carry__0_i_21_n_0;
  wire sum_result0_carry__0_i_22_n_0;
  wire sum_result0_carry__0_i_9_n_0;
  wire sum_result0_carry__1_i_10_n_0;
  wire sum_result0_carry__1_i_11_n_0;
  wire sum_result0_carry__1_i_12_n_0;
  wire sum_result0_carry__1_i_13_n_0;
  wire sum_result0_carry__1_i_14_n_0;
  wire sum_result0_carry__1_i_15_n_0;
  wire [3:0]sum_result0_carry__1_i_16_0;
  wire sum_result0_carry__1_i_16_n_0;
  wire sum_result0_carry__1_i_17_n_0;
  wire sum_result0_carry__1_i_18_n_0;
  wire sum_result0_carry__1_i_19_n_0;
  wire [3:0]sum_result0_carry__1_i_1_0;
  wire [3:0]sum_result0_carry__1_i_1_1;
  wire sum_result0_carry__1_i_9_n_0;
  wire sum_result0_carry__2_i_10_n_0;
  wire sum_result0_carry__2_i_11_n_0;
  wire sum_result0_carry__2_i_12_n_0;
  wire sum_result0_carry__2_i_13_n_0;
  wire sum_result0_carry__2_i_14_n_0;
  wire sum_result0_carry__2_i_15_n_0;
  wire sum_result0_carry__2_i_16_n_0;
  wire sum_result0_carry__2_i_17_n_0;
  wire sum_result0_carry__2_i_18_n_0;
  wire [3:0]sum_result0_carry__2_i_2_0;
  wire sum_result0_carry__2_i_9_n_0;
  wire sum_result0_carry__3_i_10_n_0;
  wire sum_result0_carry__3_i_11_n_0;
  wire sum_result0_carry__3_i_12_n_0;
  wire sum_result0_carry__3_i_13_n_0;
  wire sum_result0_carry__3_i_14_n_0;
  wire sum_result0_carry__3_i_15_n_0;
  wire sum_result0_carry__3_i_16_n_0;
  wire sum_result0_carry__3_i_17_n_0;
  wire sum_result0_carry__3_i_18_n_0;
  wire sum_result0_carry__3_i_19_n_0;
  wire [3:0]sum_result0_carry__3_i_1_0;
  wire [3:0]sum_result0_carry__3_i_1_1;
  wire sum_result0_carry__3_i_9_n_0;
  wire sum_result0_carry__4_i_10_n_0;
  wire sum_result0_carry__4_i_11_n_0;
  wire sum_result0_carry__4_i_12_n_0;
  wire sum_result0_carry__4_i_13_n_0;
  wire sum_result0_carry__4_i_14_n_0;
  wire sum_result0_carry__4_i_15_n_0;
  wire [3:0]sum_result0_carry__4_i_2_0;
  wire sum_result0_carry__4_i_9_n_0;
  wire sum_result0_carry_i_10_n_0;
  wire sum_result0_carry_i_11_n_0;
  wire sum_result0_carry_i_14_n_0;
  wire sum_result0_carry_i_15_n_0;
  wire sum_result0_carry_i_16_n_0;
  wire sum_result0_carry_i_17_n_0;
  wire sum_result0_carry_i_20_n_0;
  wire sum_result0_carry_i_21_n_0;
  wire sum_result0_carry_i_22_n_0;
  wire sum_result0_carry_i_23_n_0;
  wire sum_result0_carry_i_24_n_0;
  wire sum_result0_carry_i_25_n_0;
  wire sum_result0_carry_i_26_n_0;
  wire sum_result0_carry_i_27_n_0;
  wire sum_result0_carry_i_29_n_0;
  wire sum_result0_carry_i_30_n_0;
  wire sum_result0_carry_i_31_n_0;
  wire sum_result0_carry_i_32_n_0;
  wire sum_result0_carry_i_33_n_0;
  wire sum_result0_carry_i_34_n_0;
  wire sum_result0_carry_i_35_n_0;
  wire sum_result0_carry_i_36_n_0;
  wire sum_result0_carry_i_9_n_0;
  wire \sum_result0_inferred__0/i__carry ;
  wire \sum_result0_inferred__0/i__carry_0 ;
  wire \sum_result0_inferred__0/i__carry_1 ;
  wire sum_result1_carry__0;
  wire [3:0]sum_result1_carry__0_i_10_0;
  wire [3:0]sum_result1_carry__0_i_10_1;
  wire [3:0]sum_result1_carry__0_i_10_2;
  wire [3:0]sum_result1_carry__0_i_10_3;
  wire [3:0]sum_result1_carry__0_i_10_4;
  wire sum_result1_carry__0_i_10_n_0;
  wire sum_result1_carry__0_i_11_n_0;
  wire [2:0]sum_result1_carry__0_i_12_0;
  wire sum_result1_carry__0_i_12_n_0;
  wire sum_result1_carry__0_i_13_n_0;
  wire sum_result1_carry__0_i_14_n_0;
  wire sum_result1_carry__0_i_15_n_0;
  wire sum_result1_carry__0_i_16_n_0;
  wire sum_result1_carry__0_i_17_n_0;
  wire sum_result1_carry__0_i_18_n_0;
  wire [3:0]sum_result1_carry__0_i_9_0;
  wire sum_result1_carry__0_i_9_n_0;
  wire [3:0]sum_result1_carry__1_i_9_0;
  wire sum_result1_carry__1_i_9_n_0;
  wire [3:0]sum_result1_carry_i_10_0;
  wire sum_result1_carry_i_10_n_0;
  wire sum_result1_carry_i_11_n_0;
  wire [0:0]sum_result1_carry_i_12_0;
  wire sum_result1_carry_i_12_n_0;
  wire sum_result1_carry_i_13_n_0;
  wire sum_result1_carry_i_14_n_0;
  wire sum_result1_carry_i_15_n_0;
  wire [3:0]sum_result1_carry_i_16_0;
  wire [3:0]sum_result1_carry_i_16_1;
  wire sum_result1_carry_i_16_n_0;
  wire sum_result1_carry_i_17_n_0;
  wire sum_result1_carry_i_18_n_0;
  wire sum_result1_carry_i_19_n_0;
  wire sum_result1_carry_i_21_n_0;
  wire sum_result1_carry_i_22_n_0;
  wire sum_result1_carry_i_9_n_0;
  wire underflow_OBUF;
  wire underflow_OBUF_inst_i_10_n_0;
  wire underflow_OBUF_inst_i_11_0;
  wire underflow_OBUF_inst_i_11_n_0;
  wire underflow_OBUF_inst_i_11_n_1;
  wire underflow_OBUF_inst_i_11_n_2;
  wire underflow_OBUF_inst_i_11_n_3;
  wire underflow_OBUF_inst_i_12_n_3;
  wire underflow_OBUF_inst_i_13_n_3;
  wire underflow_OBUF_inst_i_14_n_0;
  wire underflow_OBUF_inst_i_15_n_0;
  wire underflow_OBUF_inst_i_16_n_0;
  wire underflow_OBUF_inst_i_17_n_0;
  wire underflow_OBUF_inst_i_18_n_0;
  wire underflow_OBUF_inst_i_19_n_0;
  wire underflow_OBUF_inst_i_20_n_0;
  wire underflow_OBUF_inst_i_21_n_0;
  wire underflow_OBUF_inst_i_22_n_0;
  wire underflow_OBUF_inst_i_23_n_0;
  wire underflow_OBUF_inst_i_24_n_0;
  wire underflow_OBUF_inst_i_25_n_0;
  wire underflow_OBUF_inst_i_26_n_0;
  wire underflow_OBUF_inst_i_27_n_0;
  wire underflow_OBUF_inst_i_28_n_0;
  wire underflow_OBUF_inst_i_29_n_0;
  wire [0:0]underflow_OBUF_inst_i_2_0;
  wire [0:0]underflow_OBUF_inst_i_2_1;
  wire underflow_OBUF_inst_i_2_n_0;
  wire underflow_OBUF_inst_i_30_n_0;
  wire underflow_OBUF_inst_i_3_n_0;
  wire underflow_OBUF_inst_i_4_n_0;
  wire [0:0]underflow_OBUF_inst_i_6_0;
  wire [0:0]underflow_OBUF_inst_i_6_1;
  wire underflow_OBUF_inst_i_6_n_0;
  wire underflow_OBUF_inst_i_8_n_0;
  wire underflow_OBUF_inst_i_9_n_0;
  wire [3:3]NLW_aligned_mantissa_a1_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_aligned_mantissa_b1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_final_exp1_carry_O_UNCONNECTED;
  wire [3:3]NLW_overflow_OBUF_inst_i_4_CO_UNCONNECTED;
  wire [3:1]NLW_rounded_mantissa0_carry_i_54_CO_UNCONNECTED;
  wire [3:0]NLW_rounded_mantissa0_carry_i_54_O_UNCONNECTED;
  wire [3:1]NLW_underflow_OBUF_inst_i_12_CO_UNCONNECTED;
  wire [3:0]NLW_underflow_OBUF_inst_i_12_O_UNCONNECTED;
  wire [3:1]NLW_underflow_OBUF_inst_i_13_CO_UNCONNECTED;
  wire [3:0]NLW_underflow_OBUF_inst_i_13_O_UNCONNECTED;
  wire [3:1]NLW_underflow_OBUF_inst_i_5_CO_UNCONNECTED;
  wire [3:0]NLW_underflow_OBUF_inst_i_5_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 aligned_mantissa_a1_carry
       (.CI(1'b0),
        .CO({aligned_mantissa_a1_carry_n_0,aligned_mantissa_a1_carry_n_1,aligned_mantissa_a1_carry_n_2,aligned_mantissa_a1_carry_n_3}),
        .CYINIT(1'b1),
        .DI(b_IBUF[26:23]),
        .O(aligned_mantissa_a11_out[3:0]),
        .S({aligned_mantissa_a1_carry_i_1_n_0,aligned_mantissa_a1_carry_i_2_n_0,aligned_mantissa_a1_carry_i_3_n_0,aligned_mantissa_a1_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 aligned_mantissa_a1_carry__0
       (.CI(aligned_mantissa_a1_carry_n_0),
        .CO({NLW_aligned_mantissa_a1_carry__0_CO_UNCONNECTED[3],aligned_mantissa_a1_carry__0_n_1,aligned_mantissa_a1_carry__0_n_2,aligned_mantissa_a1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,b_IBUF[29:27]}),
        .O(aligned_mantissa_a11_out[7:4]),
        .S(sum_result0_carry__1_i_16_0));
  LUT2 #(
    .INIT(4'h9)) 
    aligned_mantissa_a1_carry_i_1
       (.I0(b_IBUF[26]),
        .I1(a_IBUF[26]),
        .O(aligned_mantissa_a1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    aligned_mantissa_a1_carry_i_2
       (.I0(b_IBUF[25]),
        .I1(a_IBUF[25]),
        .O(aligned_mantissa_a1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    aligned_mantissa_a1_carry_i_3
       (.I0(b_IBUF[24]),
        .I1(a_IBUF[24]),
        .O(aligned_mantissa_a1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    aligned_mantissa_a1_carry_i_4
       (.I0(b_IBUF[23]),
        .I1(a_IBUF[23]),
        .O(aligned_mantissa_a1_carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 aligned_mantissa_b1_carry
       (.CI(1'b0),
        .CO({aligned_mantissa_b1_carry_n_0,aligned_mantissa_b1_carry_n_1,aligned_mantissa_b1_carry_n_2,aligned_mantissa_b1_carry_n_3}),
        .CYINIT(1'b1),
        .DI(a_IBUF[26:23]),
        .O(aligned_mantissa_b10_out[3:0]),
        .S({aligned_mantissa_b1_carry_i_1_n_0,aligned_mantissa_b1_carry_i_2_n_0,aligned_mantissa_b1_carry_i_3_n_0,aligned_mantissa_b1_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 aligned_mantissa_b1_carry__0
       (.CI(aligned_mantissa_b1_carry_n_0),
        .CO({NLW_aligned_mantissa_b1_carry__0_CO_UNCONNECTED[3],aligned_mantissa_b1_carry__0_n_1,aligned_mantissa_b1_carry__0_n_2,aligned_mantissa_b1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,a_IBUF[29:27]}),
        .O(aligned_mantissa_b10_out[7:4]),
        .S(i__carry__1_i_18_0));
  LUT2 #(
    .INIT(4'h9)) 
    aligned_mantissa_b1_carry_i_1
       (.I0(b_IBUF[26]),
        .I1(a_IBUF[26]),
        .O(aligned_mantissa_b1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    aligned_mantissa_b1_carry_i_2
       (.I0(b_IBUF[25]),
        .I1(a_IBUF[25]),
        .O(aligned_mantissa_b1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    aligned_mantissa_b1_carry_i_3
       (.I0(b_IBUF[24]),
        .I1(a_IBUF[24]),
        .O(aligned_mantissa_b1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    aligned_mantissa_b1_carry_i_4
       (.I0(b_IBUF[23]),
        .I1(a_IBUF[23]),
        .O(aligned_mantissa_b1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h4444444444444454)) 
    error_OBUF_inst_i_1
       (.I0(op_IBUF[1]),
        .I1(error_OBUF_inst_i_2_n_0),
        .I2(\result_OBUF[30]_inst_i_5_n_0 ),
        .I3(\result_OBUF[30]_inst_i_2_n_0 ),
        .I4(\result_OBUF[21]_inst_i_3_n_0 ),
        .I5(\result_OBUF[21]_inst_i_4_n_0 ),
        .O(error_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hAABA)) 
    error_OBUF_inst_i_2
       (.I0(\result_OBUF[31]_inst_i_6_n_0 ),
        .I1(underflow_OBUF_inst_i_2_n_0),
        .I2(CO),
        .I3(underflow_OBUF_inst_i_3_n_0),
        .O(error_OBUF_inst_i_2_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 final_exp1_carry
       (.CI(1'b0),
        .CO({final_exp1__0__0,final_exp1_carry_n_1,final_exp1_carry_n_2,final_exp1_carry_n_3}),
        .CYINIT(1'b0),
        .DI(i__carry__4_i_1_4),
        .O(NLW_final_exp1_carry_O_UNCONNECTED[3:0]),
        .S(i__carry__4_i_1_5));
  LUT5 #(
    .INIT(32'h0202EF02)) 
    i__carry__0_i_1
       (.I0(sum_result1_carry__0_i_9_n_0),
        .I1(sum_result1_carry__0),
        .I2(sum_result1_carry__0_i_10_n_0),
        .I3(sum_result1_carry__0_i_10_3[2]),
        .I4(sum_result1_carry__0_i_9_0[2]),
        .O(i__carry__2_i_2_0[3]));
  LUT6 #(
    .INIT(64'h0000000101010001)) 
    i__carry__0_i_10
       (.I0(aligned_mantissa_b10_out[5]),
        .I1(aligned_mantissa_b10_out[6]),
        .I2(aligned_mantissa_b10_out[7]),
        .I3(i__carry__0_i_15_n_0),
        .I4(aligned_mantissa_b10_out[0]),
        .I5(i__carry__0_i_13_n_0),
        .O(i__carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'h0000000101010001)) 
    i__carry__0_i_11
       (.I0(aligned_mantissa_b10_out[5]),
        .I1(aligned_mantissa_b10_out[6]),
        .I2(aligned_mantissa_b10_out[7]),
        .I3(i__carry__0_i_16_n_0),
        .I4(aligned_mantissa_b10_out[0]),
        .I5(i__carry__0_i_15_n_0),
        .O(i__carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'h0000000101010001)) 
    i__carry__0_i_12
       (.I0(aligned_mantissa_b10_out[5]),
        .I1(aligned_mantissa_b10_out[6]),
        .I2(aligned_mantissa_b10_out[7]),
        .I3(i__carry_i_17_n_0),
        .I4(aligned_mantissa_b10_out[0]),
        .I5(i__carry__0_i_16_n_0),
        .O(i__carry__0_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__0_i_13
       (.I0(i__carry__1_i_21_n_0),
        .I1(aligned_mantissa_b10_out[1]),
        .I2(i__carry__0_i_17_n_0),
        .O(i__carry__0_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h47)) 
    i__carry__0_i_14
       (.I0(i__carry__1_i_20_n_0),
        .I1(aligned_mantissa_b10_out[1]),
        .I2(i__carry__0_i_18_n_0),
        .O(i__carry__0_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h47)) 
    i__carry__0_i_15
       (.I0(i__carry__0_i_18_n_0),
        .I1(aligned_mantissa_b10_out[1]),
        .I2(i__carry_i_24_n_0),
        .O(i__carry__0_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__0_i_16
       (.I0(i__carry__0_i_17_n_0),
        .I1(aligned_mantissa_b10_out[1]),
        .I2(i__carry_i_23_n_0),
        .O(i__carry__0_i_16_n_0));
  LUT6 #(
    .INIT(64'hABFBFFFFABFB0000)) 
    i__carry__0_i_17
       (.I0(aligned_mantissa_b10_out[4]),
        .I1(b_IBUF[11]),
        .I2(aligned_mantissa_b10_out[3]),
        .I3(b_IBUF[19]),
        .I4(aligned_mantissa_b10_out[2]),
        .I5(sum_result0_carry_i_33_n_0),
        .O(i__carry__0_i_17_n_0));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    i__carry__0_i_18
       (.I0(b_IBUF[20]),
        .I1(aligned_mantissa_b10_out[3]),
        .I2(b_IBUF[12]),
        .I3(aligned_mantissa_b10_out[4]),
        .I4(aligned_mantissa_b10_out[2]),
        .I5(i__carry__0_i_19_n_0),
        .O(i__carry__0_i_18_n_0));
  LUT4 #(
    .INIT(16'h00B8)) 
    i__carry__0_i_19
       (.I0(b_IBUF[16]),
        .I1(aligned_mantissa_b10_out[3]),
        .I2(b_IBUF[8]),
        .I3(aligned_mantissa_b10_out[4]),
        .O(i__carry__0_i_19_n_0));
  LUT4 #(
    .INIT(16'h00B8)) 
    i__carry__0_i_1__0
       (.I0(i__carry__0_i_9_n_0),
        .I1(final_exp1__0__0),
        .I2(b_IBUF[7]),
        .I3(sum_result1_carry__0),
        .O(\b[7] [3]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_1__1
       (.I0(mantissa_out1_carry_i_8_n_0),
        .I1(mantissa_out1_carry_i_9_n_0),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h8F08)) 
    i__carry__0_i_2
       (.I0(sum_result1_carry__0_i_11_n_0),
        .I1(sum_result1_carry__0_i_10_3[0]),
        .I2(sum_result1_carry__0_i_9_0[1]),
        .I3(sum_result1_carry__0_i_10_3[1]),
        .O(i__carry__2_i_2_0[2]));
  LUT4 #(
    .INIT(16'h00B8)) 
    i__carry__0_i_2__0
       (.I0(i__carry__0_i_10_n_0),
        .I1(final_exp1__0__0),
        .I2(b_IBUF[6]),
        .I3(sum_result1_carry__0),
        .O(\b[7] [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_2__1
       (.I0(mantissa_out1_carry_i_14_n_0),
        .I1(mantissa_out1_carry_i_13_n_0),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h00B8)) 
    i__carry__0_i_3
       (.I0(i__carry__0_i_11_n_0),
        .I1(final_exp1__0__0),
        .I2(b_IBUF[5]),
        .I3(sum_result1_carry__0),
        .O(\b[7] [1]));
  LUT4 #(
    .INIT(16'h02A2)) 
    i__carry__0_i_3__0
       (.I0(underflow_OBUF_inst_i_11_0),
        .I1(b_IBUF[30]),
        .I2(final_exp1__0__0),
        .I3(a_IBUF[30]),
        .O(\b[30] [3]));
  LUT5 #(
    .INIT(32'h01FF0001)) 
    i__carry__0_i_3__1
       (.I0(sum_result1_carry__0),
        .I1(sum_result1_carry__0_i_12_n_0),
        .I2(\b[10] ),
        .I3(\b[11] ),
        .I4(\a[11] ),
        .O(i__carry__2_i_2_0[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_4
       (.I0(sum_result1_carry__0_i_12_0[0]),
        .I1(sum_result1_carry__0_i_13_n_0),
        .I2(\b[9] ),
        .I3(sum_result1_carry__0_i_12_0[1]),
        .O(i__carry__2_i_2_0[0]));
  LUT4 #(
    .INIT(16'h00B8)) 
    i__carry__0_i_4__0
       (.I0(i__carry__0_i_12_n_0),
        .I1(final_exp1__0__0),
        .I2(b_IBUF[4]),
        .I3(sum_result1_carry__0),
        .O(\b[7] [0]));
  LUT4 #(
    .INIT(16'h02A2)) 
    i__carry__0_i_4__1
       (.I0(underflow_OBUF_inst_i_11_0),
        .I1(b_IBUF[29]),
        .I2(final_exp1__0__0),
        .I3(a_IBUF[29]),
        .O(\b[30] [2]));
  LUT3 #(
    .INIT(8'hD2)) 
    i__carry__0_i_5
       (.I0(mantissa_out1_carry_i_8_n_0),
        .I1(mantissa_out1_carry_i_9_n_0),
        .I2(mantissa_out1_carry_i_10_n_0),
        .O(\b[30] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_5__0
       (.I0(sum_result1_carry_i_10_n_0),
        .I1(\a[7] ),
        .O(sum_result0_carry__0_i_1_1[3]));
  LUT5 #(
    .INIT(32'hE00EB00B)) 
    i__carry__0_i_5__1
       (.I0(sum_result1_carry__0),
        .I1(sum_result1_carry__0_i_9_n_0),
        .I2(sum_result1_carry__0_i_9_0[2]),
        .I3(sum_result1_carry__0_i_10_3[2]),
        .I4(sum_result1_carry__0_i_10_n_0),
        .O(sum_result1_carry__0_i_10_0[3]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_6
       (.I0(sum_result1_carry_i_9_n_0),
        .I1(\a[6] ),
        .O(sum_result0_carry__0_i_1_1[2]));
  LUT5 #(
    .INIT(32'h1E00001E)) 
    i__carry__0_i_6__0
       (.I0(sum_result1_carry__0),
        .I1(sum_result1_carry__0_i_11_n_0),
        .I2(sum_result1_carry__0_i_10_3[0]),
        .I3(sum_result1_carry__0_i_9_0[1]),
        .I4(sum_result1_carry__0_i_10_3[1]),
        .O(sum_result1_carry__0_i_10_0[2]));
  LUT4 #(
    .INIT(16'h9699)) 
    i__carry__0_i_6__1
       (.I0(mantissa_out1_carry_i_8_n_0),
        .I1(mantissa_out1_carry_i_9_n_0),
        .I2(mantissa_out1_carry_i_13_n_0),
        .I3(mantissa_out1_carry_i_14_n_0),
        .O(\b[30] [0]));
  LUT5 #(
    .INIT(32'h1E00001E)) 
    i__carry__0_i_7
       (.I0(sum_result1_carry__0),
        .I1(sum_result1_carry__0_i_12_n_0),
        .I2(\b[10] ),
        .I3(\b[11] ),
        .I4(\a[11] ),
        .O(sum_result1_carry__0_i_10_0[1]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_7__0
       (.I0(sum_result1_carry_i_13_n_0),
        .I1(\a[5] ),
        .O(sum_result0_carry__0_i_1_1[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8
       (.I0(sum_result1_carry__0_i_13_n_0),
        .I1(sum_result1_carry__0_i_12_0[0]),
        .I2(\b[9] ),
        .I3(sum_result1_carry__0_i_12_0[1]),
        .O(sum_result1_carry__0_i_10_0[0]));
  LUT3 #(
    .INIT(8'h1E)) 
    i__carry__0_i_8__0
       (.I0(sum_result1_carry__0),
        .I1(sum_result1_carry_i_12_n_0),
        .I2(sum_result1_carry_i_11_n_0),
        .O(sum_result0_carry__0_i_1_1[0]));
  LUT6 #(
    .INIT(64'h0000000101010001)) 
    i__carry__0_i_9
       (.I0(aligned_mantissa_b10_out[5]),
        .I1(aligned_mantissa_b10_out[6]),
        .I2(aligned_mantissa_b10_out[7]),
        .I3(i__carry__0_i_13_n_0),
        .I4(aligned_mantissa_b10_out[0]),
        .I5(i__carry__0_i_14_n_0),
        .O(i__carry__0_i_9_n_0));
  LUT5 #(
    .INIT(32'h02023F02)) 
    i__carry__1_i_1
       (.I0(underflow_OBUF_inst_i_11_0),
        .I1(sum_result1_carry__1_i_9_n_0),
        .I2(i__carry__4_i_9),
        .I3(sum_result1_carry__1_i_9_0[2]),
        .I4(\b[22] ),
        .O(i__carry__4_i_2_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    i__carry__1_i_10
       (.I0(aligned_mantissa_b10_out[5]),
        .I1(aligned_mantissa_b10_out[6]),
        .I2(aligned_mantissa_b10_out[7]),
        .I3(aligned_mantissa_b10_out[0]),
        .O(i__carry__1_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h53)) 
    i__carry__1_i_11
       (.I0(i__carry__1_i_17_n_0),
        .I1(i__carry__1_i_18_n_0),
        .I2(aligned_mantissa_b10_out[1]),
        .O(i__carry__1_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__1_i_12
       (.I0(i__carry__1_i_19_n_0),
        .I1(aligned_mantissa_b10_out[1]),
        .I2(i__carry__1_i_20_n_0),
        .O(i__carry__1_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    i__carry__1_i_13
       (.I0(aligned_mantissa_b10_out[7]),
        .I1(aligned_mantissa_b10_out[6]),
        .I2(aligned_mantissa_b10_out[5]),
        .I3(aligned_mantissa_b10_out[0]),
        .I4(i__carry__1_i_11_n_0),
        .O(i__carry__1_i_13_n_0));
  LUT6 #(
    .INIT(64'h00020000FFFFFFFF)) 
    i__carry__1_i_14
       (.I0(aligned_mantissa_b10_out[0]),
        .I1(aligned_mantissa_b10_out[5]),
        .I2(aligned_mantissa_b10_out[6]),
        .I3(aligned_mantissa_b10_out[7]),
        .I4(i__carry__1_i_12_n_0),
        .I5(final_exp1__0__0),
        .O(i__carry__1_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__1_i_15
       (.I0(i__carry__1_i_18_n_0),
        .I1(aligned_mantissa_b10_out[1]),
        .I2(i__carry__1_i_21_n_0),
        .O(i__carry__1_i_15_n_0));
  LUT6 #(
    .INIT(64'h0000000101010001)) 
    i__carry__1_i_16
       (.I0(aligned_mantissa_b10_out[5]),
        .I1(aligned_mantissa_b10_out[6]),
        .I2(aligned_mantissa_b10_out[7]),
        .I3(i__carry__0_i_14_n_0),
        .I4(aligned_mantissa_b10_out[0]),
        .I5(i__carry__1_i_15_n_0),
        .O(i__carry__1_i_16_n_0));
  LUT6 #(
    .INIT(64'hFFFFF5F5FFFF303F)) 
    i__carry__1_i_17
       (.I0(b_IBUF[17]),
        .I1(b_IBUF[21]),
        .I2(aligned_mantissa_b10_out[3]),
        .I3(b_IBUF[13]),
        .I4(aligned_mantissa_b10_out[4]),
        .I5(aligned_mantissa_b10_out[2]),
        .O(i__carry__1_i_17_n_0));
  LUT6 #(
    .INIT(64'hB8B8B8BBBBBBB8BB)) 
    i__carry__1_i_18
       (.I0(i__carry__1_i_22_n_0),
        .I1(aligned_mantissa_b10_out[2]),
        .I2(aligned_mantissa_b10_out[4]),
        .I3(b_IBUF[11]),
        .I4(aligned_mantissa_b10_out[3]),
        .I5(b_IBUF[19]),
        .O(i__carry__1_i_18_n_0));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    i__carry__1_i_19
       (.I0(b_IBUF[16]),
        .I1(aligned_mantissa_b10_out[2]),
        .I2(b_IBUF[20]),
        .I3(aligned_mantissa_b10_out[3]),
        .I4(b_IBUF[12]),
        .I5(aligned_mantissa_b10_out[4]),
        .O(i__carry__1_i_19_n_0));
  LUT6 #(
    .INIT(64'h00000000EAEAEA00)) 
    i__carry__1_i_1__0
       (.I0(i__carry__1_i_9_n_0),
        .I1(i__carry__1_i_10_n_0),
        .I2(i__carry__1_i_11_n_0),
        .I3(b_IBUF[11]),
        .I4(final_exp1__0__0),
        .I5(sum_result1_carry__0),
        .O(\b[11] ));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_2
       (.I0(sum_result1_carry__1_i_9_0[0]),
        .I1(\b[20] ),
        .I2(\b[21] ),
        .I3(sum_result1_carry__1_i_9_0[1]),
        .O(i__carry__4_i_2_0[2]));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    i__carry__1_i_20
       (.I0(b_IBUF[22]),
        .I1(aligned_mantissa_b10_out[3]),
        .I2(b_IBUF[14]),
        .I3(aligned_mantissa_b10_out[4]),
        .I4(aligned_mantissa_b10_out[2]),
        .I5(i__carry__1_i_23_n_0),
        .O(i__carry__1_i_20_n_0));
  LUT6 #(
    .INIT(64'hFF47FFFFFF470000)) 
    i__carry__1_i_21
       (.I0(b_IBUF[21]),
        .I1(aligned_mantissa_b10_out[3]),
        .I2(b_IBUF[13]),
        .I3(aligned_mantissa_b10_out[4]),
        .I4(aligned_mantissa_b10_out[2]),
        .I5(i__carry__1_i_24_n_0),
        .O(i__carry__1_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hABFB)) 
    i__carry__1_i_22
       (.I0(aligned_mantissa_b10_out[4]),
        .I1(b_IBUF[15]),
        .I2(aligned_mantissa_b10_out[3]),
        .I3(i__carry__0_i_17_0),
        .O(i__carry__1_i_22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    i__carry__1_i_23
       (.I0(b_IBUF[18]),
        .I1(aligned_mantissa_b10_out[3]),
        .I2(b_IBUF[10]),
        .I3(aligned_mantissa_b10_out[4]),
        .O(i__carry__1_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFF47)) 
    i__carry__1_i_24
       (.I0(b_IBUF[17]),
        .I1(aligned_mantissa_b10_out[3]),
        .I2(b_IBUF[9]),
        .I3(aligned_mantissa_b10_out[4]),
        .O(i__carry__1_i_24_n_0));
  LUT6 #(
    .INIT(64'h000000008F8FFF00)) 
    i__carry__1_i_2__0
       (.I0(i__carry__1_i_12_n_0),
        .I1(i__carry__1_i_10_n_0),
        .I2(i__carry__1_i_13_n_0),
        .I3(b_IBUF[10]),
        .I4(final_exp1__0__0),
        .I5(sum_result1_carry__0),
        .O(\b[10] ));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_3
       (.I0(\a[18] ),
        .I1(\b[18] ),
        .I2(\b[19] ),
        .I3(\a[19] ),
        .O(i__carry__4_i_2_0[1]));
  LUT6 #(
    .INIT(64'h00000000BABABA00)) 
    i__carry__1_i_3__0
       (.I0(i__carry__1_i_14_n_0),
        .I1(i__carry__1_i_15_n_0),
        .I2(i__carry__1_i_10_n_0),
        .I3(b_IBUF[9]),
        .I4(final_exp1__0__0),
        .I5(sum_result1_carry__0),
        .O(\b[9] ));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_4
       (.I0(\a[16] ),
        .I1(\b[16] ),
        .I2(\b[17] ),
        .I3(\a[17] ),
        .O(i__carry__4_i_2_0[0]));
  LUT4 #(
    .INIT(16'h00AC)) 
    i__carry__1_i_4__0
       (.I0(i__carry__1_i_16_n_0),
        .I1(b_IBUF[8]),
        .I2(final_exp1__0__0),
        .I3(sum_result1_carry__0),
        .O(\b[8] ));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_5
       (.I0(\b[11] ),
        .I1(\a[11] ),
        .O(sum_result0_carry__1_i_1_1[3]));
  LUT5 #(
    .INIT(32'h2002D00D)) 
    i__carry__1_i_5__0
       (.I0(underflow_OBUF_inst_i_11_0),
        .I1(sum_result1_carry__1_i_9_n_0),
        .I2(\b[22] ),
        .I3(sum_result1_carry__1_i_9_0[2]),
        .I4(i__carry__4_i_9),
        .O(i__carry__4_i_1_0[3]));
  LUT3 #(
    .INIT(8'h1E)) 
    i__carry__1_i_6
       (.I0(sum_result1_carry__0),
        .I1(sum_result1_carry__0_i_12_n_0),
        .I2(\b[10] ),
        .O(sum_result0_carry__1_i_1_1[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_6__0
       (.I0(\b[20] ),
        .I1(sum_result1_carry__1_i_9_0[0]),
        .I2(\b[21] ),
        .I3(sum_result1_carry__1_i_9_0[1]),
        .O(i__carry__4_i_1_0[2]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_7
       (.I0(\b[9] ),
        .I1(sum_result1_carry__0_i_12_0[1]),
        .O(sum_result0_carry__1_i_1_1[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_7__0
       (.I0(\b[18] ),
        .I1(\a[18] ),
        .I2(\b[19] ),
        .I3(\a[19] ),
        .O(i__carry__4_i_1_0[1]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_8
       (.I0(sum_result1_carry__0_i_13_n_0),
        .I1(sum_result1_carry__0_i_12_0[0]),
        .O(sum_result0_carry__1_i_1_1[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_8__0
       (.I0(\b[16] ),
        .I1(\a[16] ),
        .I2(\b[17] ),
        .I3(\a[17] ),
        .O(i__carry__4_i_1_0[0]));
  LUT6 #(
    .INIT(64'h00020000FFFFFFFF)) 
    i__carry__1_i_9
       (.I0(aligned_mantissa_b10_out[0]),
        .I1(aligned_mantissa_b10_out[5]),
        .I2(aligned_mantissa_b10_out[6]),
        .I3(aligned_mantissa_b10_out[7]),
        .I4(sum_result1_carry__0_i_17_n_0),
        .I5(final_exp1__0__0),
        .O(i__carry__1_i_9_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_1
       (.I0(sum_result1_carry__0),
        .I1(sum_result1_carry__0_i_9_n_0),
        .O(sum_result1_carry__0_i_9_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    i__carry__2_i_10
       (.I0(aligned_mantissa_b10_out[7]),
        .I1(aligned_mantissa_b10_out[6]),
        .I2(aligned_mantissa_b10_out[5]),
        .I3(aligned_mantissa_b10_out[0]),
        .I4(sum_result1_carry__0_i_15_n_0),
        .O(i__carry__2_i_10_n_0));
  LUT6 #(
    .INIT(64'h00020000FFFFFFFF)) 
    i__carry__2_i_11
       (.I0(aligned_mantissa_b10_out[0]),
        .I1(aligned_mantissa_b10_out[5]),
        .I2(aligned_mantissa_b10_out[6]),
        .I3(aligned_mantissa_b10_out[7]),
        .I4(i__carry__2_i_9_n_0),
        .I5(final_exp1__0__0),
        .O(i__carry__2_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__2_i_12
       (.I0(i__carry__2_i_15_n_0),
        .I1(aligned_mantissa_b10_out[1]),
        .I2(i__carry__1_i_17_n_0),
        .O(i__carry__2_i_12_n_0));
  LUT5 #(
    .INIT(32'h00000B08)) 
    i__carry__2_i_13
       (.I0(b_IBUF[20]),
        .I1(aligned_mantissa_b10_out[2]),
        .I2(aligned_mantissa_b10_out[4]),
        .I3(b_IBUF[16]),
        .I4(aligned_mantissa_b10_out[3]),
        .O(i__carry__2_i_13_n_0));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    i__carry__2_i_14
       (.I0(b_IBUF[18]),
        .I1(aligned_mantissa_b10_out[2]),
        .I2(b_IBUF[22]),
        .I3(aligned_mantissa_b10_out[3]),
        .I4(b_IBUF[14]),
        .I5(aligned_mantissa_b10_out[4]),
        .O(i__carry__2_i_14_n_0));
  LUT6 #(
    .INIT(64'hFCFCF4F7FFFFF4F7)) 
    i__carry__2_i_15
       (.I0(b_IBUF[19]),
        .I1(aligned_mantissa_b10_out[2]),
        .I2(aligned_mantissa_b10_out[4]),
        .I3(b_IBUF[15]),
        .I4(aligned_mantissa_b10_out[3]),
        .I5(i__carry__0_i_17_0),
        .O(i__carry__2_i_15_n_0));
  LUT6 #(
    .INIT(64'h000000008F8FFF00)) 
    i__carry__2_i_2
       (.I0(i__carry__2_i_9_n_0),
        .I1(i__carry__1_i_10_n_0),
        .I2(i__carry__2_i_10_n_0),
        .I3(b_IBUF[14]),
        .I4(final_exp1__0__0),
        .I5(sum_result1_carry__0),
        .O(sum_result1_carry__0_i_9_0[2]));
  LUT6 #(
    .INIT(64'h00000000BABABA00)) 
    i__carry__2_i_3
       (.I0(i__carry__2_i_11_n_0),
        .I1(i__carry__2_i_12_n_0),
        .I2(i__carry__1_i_10_n_0),
        .I3(b_IBUF[13]),
        .I4(final_exp1__0__0),
        .I5(sum_result1_carry__0),
        .O(sum_result1_carry__0_i_9_0[1]));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_4
       (.I0(sum_result1_carry__0),
        .I1(sum_result1_carry__0_i_11_n_0),
        .O(sum_result1_carry__0_i_9_0[0]));
  LUT3 #(
    .INIT(8'hEB)) 
    i__carry__2_i_5
       (.I0(sum_result1_carry__0),
        .I1(sum_result1_carry__0_i_9_n_0),
        .I2(sum_result1_carry__0_i_10_n_0),
        .O(sum_result1_carry__0_i_10_4[3]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_6
       (.I0(sum_result1_carry__0_i_9_0[2]),
        .I1(sum_result1_carry__0_i_10_3[2]),
        .O(sum_result1_carry__0_i_10_4[2]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_7
       (.I0(sum_result1_carry__0_i_9_0[1]),
        .I1(sum_result1_carry__0_i_10_3[1]),
        .O(sum_result1_carry__0_i_10_4[1]));
  LUT3 #(
    .INIT(8'h1E)) 
    i__carry__2_i_8
       (.I0(sum_result1_carry__0),
        .I1(sum_result1_carry__0_i_11_n_0),
        .I2(sum_result1_carry__0_i_10_3[0]),
        .O(sum_result1_carry__0_i_10_4[0]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__2_i_9
       (.I0(i__carry__2_i_13_n_0),
        .I1(aligned_mantissa_b10_out[1]),
        .I2(i__carry__2_i_14_n_0),
        .O(i__carry__2_i_9_n_0));
  LUT6 #(
    .INIT(64'h00000000BABABA00)) 
    i__carry__3_i_1
       (.I0(i__carry__3_i_9_n_0),
        .I1(i__carry__3_i_10_n_0),
        .I2(i__carry__1_i_10_n_0),
        .I3(b_IBUF[19]),
        .I4(final_exp1__0__0),
        .I5(sum_result1_carry__0),
        .O(\b[19] ));
  LUT6 #(
    .INIT(64'hFFEFFFFFFFEF0000)) 
    i__carry__3_i_10
       (.I0(aligned_mantissa_b10_out[2]),
        .I1(aligned_mantissa_b10_out[3]),
        .I2(b_IBUF[21]),
        .I3(aligned_mantissa_b10_out[4]),
        .I4(aligned_mantissa_b10_out[1]),
        .I5(i__carry__3_i_17_n_0),
        .O(i__carry__3_i_10_n_0));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    i__carry__3_i_11
       (.I0(aligned_mantissa_b10_out[3]),
        .I1(b_IBUF[20]),
        .I2(aligned_mantissa_b10_out[4]),
        .I3(aligned_mantissa_b10_out[2]),
        .I4(aligned_mantissa_b10_out[1]),
        .I5(i__carry__3_i_18_n_0),
        .O(i__carry__3_i_11_n_0));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    i__carry__3_i_12
       (.I0(aligned_mantissa_b10_out[7]),
        .I1(aligned_mantissa_b10_out[6]),
        .I2(aligned_mantissa_b10_out[5]),
        .I3(aligned_mantissa_b10_out[0]),
        .I4(i__carry__3_i_10_n_0),
        .O(i__carry__3_i_12_n_0));
  LUT6 #(
    .INIT(64'h00020000FFFFFFFF)) 
    i__carry__3_i_13
       (.I0(aligned_mantissa_b10_out[0]),
        .I1(aligned_mantissa_b10_out[5]),
        .I2(aligned_mantissa_b10_out[6]),
        .I3(aligned_mantissa_b10_out[7]),
        .I4(i__carry__3_i_11_n_0),
        .I5(final_exp1__0__0),
        .O(i__carry__3_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h74)) 
    i__carry__3_i_14
       (.I0(i__carry__3_i_17_n_0),
        .I1(aligned_mantissa_b10_out[1]),
        .I2(i__carry__3_i_19_n_0),
        .O(i__carry__3_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__3_i_15
       (.I0(i__carry__3_i_18_n_0),
        .I1(aligned_mantissa_b10_out[1]),
        .I2(i__carry__2_i_13_n_0),
        .O(i__carry__3_i_15_n_0));
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    i__carry__3_i_16
       (.I0(aligned_mantissa_b10_out[7]),
        .I1(aligned_mantissa_b10_out[6]),
        .I2(aligned_mantissa_b10_out[5]),
        .I3(aligned_mantissa_b10_out[0]),
        .I4(i__carry__3_i_14_n_0),
        .O(i__carry__3_i_16_n_0));
  LUT5 #(
    .INIT(32'hFFF4FFF7)) 
    i__carry__3_i_17
       (.I0(i__carry__0_i_17_0),
        .I1(aligned_mantissa_b10_out[2]),
        .I2(aligned_mantissa_b10_out[3]),
        .I3(aligned_mantissa_b10_out[4]),
        .I4(b_IBUF[19]),
        .O(i__carry__3_i_17_n_0));
  LUT5 #(
    .INIT(32'h00000B08)) 
    i__carry__3_i_18
       (.I0(b_IBUF[22]),
        .I1(aligned_mantissa_b10_out[2]),
        .I2(aligned_mantissa_b10_out[4]),
        .I3(b_IBUF[18]),
        .I4(aligned_mantissa_b10_out[3]),
        .O(i__carry__3_i_18_n_0));
  LUT5 #(
    .INIT(32'h00000B08)) 
    i__carry__3_i_19
       (.I0(b_IBUF[21]),
        .I1(aligned_mantissa_b10_out[2]),
        .I2(aligned_mantissa_b10_out[4]),
        .I3(b_IBUF[17]),
        .I4(aligned_mantissa_b10_out[3]),
        .O(i__carry__3_i_19_n_0));
  LUT6 #(
    .INIT(64'h000000008F8FFF00)) 
    i__carry__3_i_2
       (.I0(i__carry__3_i_11_n_0),
        .I1(i__carry__1_i_10_n_0),
        .I2(i__carry__3_i_12_n_0),
        .I3(b_IBUF[18]),
        .I4(final_exp1__0__0),
        .I5(sum_result1_carry__0),
        .O(\b[18] ));
  LUT6 #(
    .INIT(64'h00000000EAEAEA00)) 
    i__carry__3_i_3
       (.I0(i__carry__3_i_13_n_0),
        .I1(i__carry__1_i_10_n_0),
        .I2(i__carry__3_i_14_n_0),
        .I3(b_IBUF[17]),
        .I4(final_exp1__0__0),
        .I5(sum_result1_carry__0),
        .O(\b[17] ));
  LUT6 #(
    .INIT(64'h000000008F8FFF00)) 
    i__carry__3_i_4
       (.I0(i__carry__3_i_15_n_0),
        .I1(i__carry__1_i_10_n_0),
        .I2(i__carry__3_i_16_n_0),
        .I3(b_IBUF[16]),
        .I4(final_exp1__0__0),
        .I5(sum_result1_carry__0),
        .O(\b[16] ));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_5
       (.I0(\b[19] ),
        .I1(\a[19] ),
        .O(sum_result0_carry__3_i_1_1[3]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_6
       (.I0(\b[18] ),
        .I1(\a[18] ),
        .O(sum_result0_carry__3_i_1_1[2]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_7
       (.I0(\b[17] ),
        .I1(\a[17] ),
        .O(sum_result0_carry__3_i_1_1[1]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_8
       (.I0(\b[16] ),
        .I1(\a[16] ),
        .O(sum_result0_carry__3_i_1_1[0]));
  LUT6 #(
    .INIT(64'h00020000FFFFFFFF)) 
    i__carry__3_i_9
       (.I0(aligned_mantissa_b10_out[0]),
        .I1(aligned_mantissa_b10_out[5]),
        .I2(aligned_mantissa_b10_out[6]),
        .I3(aligned_mantissa_b10_out[7]),
        .I4(i__carry__4_i_15_n_0),
        .I5(final_exp1__0__0),
        .O(i__carry__3_i_9_n_0));
  LUT5 #(
    .INIT(32'h008AAA8A)) 
    i__carry__4_i_1
       (.I0(underflow_OBUF_inst_i_11_0),
        .I1(sum_result0_carry__4_i_10_n_0),
        .I2(sum_result0_carry__0_i_10_n_0),
        .I3(final_exp1__0__0),
        .I4(sum_result0_carry__0_i_17_0),
        .O(i__carry__4_i_9));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    i__carry__4_i_10
       (.I0(i__carry__1_i_10_n_0),
        .I1(aligned_mantissa_b10_out[3]),
        .I2(b_IBUF[22]),
        .I3(aligned_mantissa_b10_out[4]),
        .I4(aligned_mantissa_b10_out[2]),
        .I5(aligned_mantissa_b10_out[1]),
        .O(i__carry__4_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    i__carry__4_i_11
       (.I0(aligned_mantissa_b10_out[0]),
        .I1(aligned_mantissa_b10_out[5]),
        .I2(aligned_mantissa_b10_out[6]),
        .I3(aligned_mantissa_b10_out[7]),
        .O(i__carry__4_i_11_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    i__carry__4_i_12
       (.I0(aligned_mantissa_b10_out[1]),
        .I1(aligned_mantissa_b10_out[4]),
        .I2(i__carry__0_i_17_0),
        .I3(aligned_mantissa_b10_out[3]),
        .I4(aligned_mantissa_b10_out[2]),
        .O(i__carry__4_i_12_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    i__carry__4_i_13
       (.I0(i__carry__4_i_11_n_0),
        .I1(aligned_mantissa_b10_out[3]),
        .I2(b_IBUF[22]),
        .I3(aligned_mantissa_b10_out[4]),
        .I4(aligned_mantissa_b10_out[2]),
        .I5(aligned_mantissa_b10_out[1]),
        .O(i__carry__4_i_13_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF4FFF7)) 
    i__carry__4_i_14
       (.I0(i__carry__0_i_17_0),
        .I1(aligned_mantissa_b10_out[1]),
        .I2(aligned_mantissa_b10_out[2]),
        .I3(aligned_mantissa_b10_out[3]),
        .I4(b_IBUF[21]),
        .I5(aligned_mantissa_b10_out[4]),
        .O(i__carry__4_i_14_n_0));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    i__carry__4_i_15
       (.I0(b_IBUF[22]),
        .I1(aligned_mantissa_b10_out[1]),
        .I2(aligned_mantissa_b10_out[3]),
        .I3(b_IBUF[20]),
        .I4(aligned_mantissa_b10_out[4]),
        .I5(aligned_mantissa_b10_out[2]),
        .O(i__carry__4_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    i__carry__4_i_16
       (.I0(aligned_mantissa_b10_out[7]),
        .I1(aligned_mantissa_b10_out[6]),
        .I2(aligned_mantissa_b10_out[5]),
        .I3(aligned_mantissa_b10_out[0]),
        .I4(i__carry__4_i_14_n_0),
        .O(i__carry__4_i_16_n_0));
  LUT6 #(
    .INIT(64'h00000000ABABFF00)) 
    i__carry__4_i_2
       (.I0(i__carry__4_i_10_n_0),
        .I1(i__carry__4_i_11_n_0),
        .I2(i__carry__4_i_12_n_0),
        .I3(b_IBUF[22]),
        .I4(final_exp1__0__0),
        .I5(sum_result1_carry__0),
        .O(\b[22] ));
  LUT6 #(
    .INIT(64'h00000000BABAFF00)) 
    i__carry__4_i_3
       (.I0(i__carry__4_i_13_n_0),
        .I1(i__carry__4_i_14_n_0),
        .I2(i__carry__1_i_10_n_0),
        .I3(b_IBUF[21]),
        .I4(final_exp1__0__0),
        .I5(sum_result1_carry__0),
        .O(\b[21] ));
  LUT6 #(
    .INIT(64'h000000008F8FFF00)) 
    i__carry__4_i_4
       (.I0(i__carry__4_i_15_n_0),
        .I1(i__carry__1_i_10_n_0),
        .I2(i__carry__4_i_16_n_0),
        .I3(b_IBUF[20]),
        .I4(final_exp1__0__0),
        .I5(sum_result1_carry__0),
        .O(\b[20] ));
  LUT3 #(
    .INIT(8'h2D)) 
    i__carry__4_i_5
       (.I0(underflow_OBUF_inst_i_11_0),
        .I1(sum_result1_carry__1_i_9_n_0),
        .I2(i__carry__4_i_9),
        .O(i__carry__4_i_1_3[3]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_6
       (.I0(\b[22] ),
        .I1(sum_result1_carry__1_i_9_0[2]),
        .O(i__carry__4_i_1_3[2]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_7
       (.I0(\b[21] ),
        .I1(sum_result1_carry__1_i_9_0[1]),
        .O(i__carry__4_i_1_3[1]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_8
       (.I0(\b[20] ),
        .I1(sum_result1_carry__1_i_9_0[0]),
        .O(i__carry__4_i_1_3[0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1
       (.I0(\a[6] ),
        .I1(sum_result1_carry_i_9_n_0),
        .I2(sum_result1_carry_i_10_n_0),
        .I3(\a[7] ),
        .O(sum_result0_carry__0_i_1_4[3]));
  LUT6 #(
    .INIT(64'h0000000101010001)) 
    i__carry_i_10
       (.I0(aligned_mantissa_b10_out[5]),
        .I1(aligned_mantissa_b10_out[6]),
        .I2(aligned_mantissa_b10_out[7]),
        .I3(i__carry_i_18_n_0),
        .I4(aligned_mantissa_b10_out[0]),
        .I5(i__carry_i_16_n_0),
        .O(i__carry_i_10_n_0));
  LUT6 #(
    .INIT(64'h0000000101010001)) 
    i__carry_i_11
       (.I0(aligned_mantissa_b10_out[5]),
        .I1(aligned_mantissa_b10_out[6]),
        .I2(aligned_mantissa_b10_out[7]),
        .I3(sum_result0_carry_i_21_n_0),
        .I4(aligned_mantissa_b10_out[0]),
        .I5(i__carry_i_18_n_0),
        .O(i__carry_i_11_n_0));
  LUT6 #(
    .INIT(64'h888888B8B8B888B8)) 
    i__carry_i_15
       (.I0(a_IBUF[0]),
        .I1(final_exp1__0__0),
        .I2(i__carry_i_21_n_0),
        .I3(i__carry_i_22_n_0),
        .I4(aligned_mantissa_a11_out[0]),
        .I5(sum_result0_carry_i_17_n_0),
        .O(i__carry_i_15_n_0));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    i__carry_i_16
       (.I0(sum_result0_carry_i_33_n_0),
        .I1(aligned_mantissa_b10_out[2]),
        .I2(sum_result0_carry_i_34_n_0),
        .I3(i__carry_i_23_n_0),
        .I4(aligned_mantissa_b10_out[1]),
        .O(i__carry_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h74)) 
    i__carry_i_17
       (.I0(i__carry_i_24_n_0),
        .I1(aligned_mantissa_b10_out[1]),
        .I2(i__carry_i_25_n_0),
        .O(i__carry_i_17_n_0));
  LUT5 #(
    .INIT(32'hFF001D1D)) 
    i__carry_i_18
       (.I0(sum_result0_carry_i_29_n_0),
        .I1(aligned_mantissa_b10_out[2]),
        .I2(sum_result0_carry_i_30_n_0),
        .I3(i__carry_i_25_n_0),
        .I4(aligned_mantissa_b10_out[1]),
        .O(i__carry_i_18_n_0));
  LUT4 #(
    .INIT(16'h00B8)) 
    i__carry_i_1__0
       (.I0(i__carry_i_9_n_0),
        .I1(final_exp1__0__0),
        .I2(b_IBUF[3]),
        .I3(sum_result1_carry__0),
        .O(\b[3] [3]));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_1__1
       (.I0(mantissa_out1_carry_i_11_n_0),
        .I1(mantissa_out1_carry_i_12_n_0),
        .O(mantissa_out1_carry_i_12_0[2]));
  LUT4 #(
    .INIT(16'h02A2)) 
    i__carry_i_2
       (.I0(underflow_OBUF_inst_i_11_0),
        .I1(b_IBUF[24]),
        .I2(final_exp1__0__0),
        .I3(a_IBUF[24]),
        .O(\b[24] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h01)) 
    i__carry_i_21
       (.I0(aligned_mantissa_a11_out[7]),
        .I1(aligned_mantissa_a11_out[6]),
        .I2(aligned_mantissa_a11_out[5]),
        .O(i__carry_i_21_n_0));
  LUT6 #(
    .INIT(64'h1D001D001D331DFF)) 
    i__carry_i_22
       (.I0(sum_result0_carry_i_24_n_0),
        .I1(aligned_mantissa_a11_out[2]),
        .I2(sum_result0_carry_i_25_n_0),
        .I3(aligned_mantissa_a11_out[1]),
        .I4(i__carry_i_26_n_0),
        .I5(i__carry_i_27_n_0),
        .O(i__carry_i_22_n_0));
  LUT6 #(
    .INIT(64'hFF47FFFFFF470000)) 
    i__carry_i_23
       (.I0(b_IBUF[17]),
        .I1(aligned_mantissa_b10_out[3]),
        .I2(b_IBUF[9]),
        .I3(aligned_mantissa_b10_out[4]),
        .I4(aligned_mantissa_b10_out[2]),
        .I5(sum_result0_carry_i_35_n_0),
        .O(i__carry_i_23_n_0));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    i__carry_i_24
       (.I0(b_IBUF[18]),
        .I1(aligned_mantissa_b10_out[3]),
        .I2(b_IBUF[10]),
        .I3(aligned_mantissa_b10_out[4]),
        .I4(aligned_mantissa_b10_out[2]),
        .I5(sum_result0_carry_i_30_n_0),
        .O(i__carry_i_24_n_0));
  LUT6 #(
    .INIT(64'hD1D1D1DDDDDDD1DD)) 
    i__carry_i_25
       (.I0(sum_result0_carry_i_31_n_0),
        .I1(aligned_mantissa_b10_out[2]),
        .I2(aligned_mantissa_b10_out[4]),
        .I3(b_IBUF[8]),
        .I4(aligned_mantissa_b10_out[3]),
        .I5(b_IBUF[16]),
        .O(i__carry_i_25_n_0));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    i__carry_i_26
       (.I0(a_IBUF[12]),
        .I1(aligned_mantissa_a11_out[3]),
        .I2(a_IBUF[20]),
        .I3(aligned_mantissa_a11_out[4]),
        .I4(a_IBUF[4]),
        .O(i__carry_i_26_n_0));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    i__carry_i_27
       (.I0(a_IBUF[0]),
        .I1(aligned_mantissa_a11_out[4]),
        .I2(a_IBUF[16]),
        .I3(aligned_mantissa_a11_out[3]),
        .I4(a_IBUF[8]),
        .I5(aligned_mantissa_a11_out[2]),
        .O(i__carry_i_27_n_0));
  LUT4 #(
    .INIT(16'h00B8)) 
    i__carry_i_2__0
       (.I0(i__carry_i_10_n_0),
        .I1(final_exp1__0__0),
        .I2(b_IBUF[2]),
        .I3(sum_result1_carry__0),
        .O(\b[3] [2]));
  LUT5 #(
    .INIT(32'h01FF0001)) 
    i__carry_i_2__1
       (.I0(sum_result1_carry__0),
        .I1(sum_result1_carry_i_12_n_0),
        .I2(sum_result1_carry_i_11_n_0),
        .I3(sum_result1_carry_i_13_n_0),
        .I4(\a[5] ),
        .O(sum_result0_carry__0_i_1_4[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3
       (.I0(sum_result1_carry_i_15_n_0),
        .I1(sum_result1_carry_i_14_n_0),
        .I2(sum_result1_carry_i_17_n_0),
        .I3(sum_result1_carry_i_16_n_0),
        .O(sum_result0_carry__0_i_1_4[1]));
  LUT4 #(
    .INIT(16'h00B8)) 
    i__carry_i_3__0
       (.I0(i__carry_i_11_n_0),
        .I1(final_exp1__0__0),
        .I2(b_IBUF[1]),
        .I3(sum_result1_carry__0),
        .O(\b[3] [1]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3__1
       (.I0(\b[24] ),
        .O(mantissa_out1_carry_i_12_0[1]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_4
       (.I0(mantissa_out1_carry_i_17_n_0),
        .O(mantissa_out1_carry_i_12_0[0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4__0
       (.I0(\a[3] [0]),
        .I1(\b[3] [0]),
        .I2(sum_result1_carry_i_19_n_0),
        .I3(sum_result1_carry_i_18_n_0),
        .O(sum_result0_carry__0_i_1_4[0]));
  LUT5 #(
    .INIT(32'h0010FF10)) 
    i__carry_i_4__1
       (.I0(\sum_result0_inferred__0/i__carry ),
        .I1(\sum_result0_inferred__0/i__carry_0 ),
        .I2(\sum_result0_inferred__0/i__carry_1 ),
        .I3(underflow_OBUF_inst_i_11_0),
        .I4(i__carry_i_15_n_0),
        .O(\b[3] [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(sum_result1_carry_i_9_n_0),
        .I1(\a[6] ),
        .I2(sum_result1_carry_i_10_n_0),
        .I3(\a[7] ),
        .O(sum_result0_carry__0_i_1_3[3]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_5__0
       (.I0(sum_result1_carry_i_17_n_0),
        .I1(sum_result1_carry_i_16_n_0),
        .O(sum_result1_carry_i_16_1[3]));
  LUT4 #(
    .INIT(16'h7887)) 
    i__carry_i_5__1
       (.I0(mantissa_out1_carry_i_11_n_0),
        .I1(mantissa_out1_carry_i_12_n_0),
        .I2(mantissa_out1_carry_i_14_n_0),
        .I3(mantissa_out1_carry_i_13_n_0),
        .O(S[3]));
  LUT5 #(
    .INIT(32'h1E00001E)) 
    i__carry_i_6
       (.I0(sum_result1_carry__0),
        .I1(sum_result1_carry_i_12_n_0),
        .I2(sum_result1_carry_i_11_n_0),
        .I3(sum_result1_carry_i_13_n_0),
        .I4(\a[5] ),
        .O(sum_result0_carry__0_i_1_3[2]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_6__0
       (.I0(sum_result1_carry_i_14_n_0),
        .I1(sum_result1_carry_i_15_n_0),
        .O(sum_result1_carry_i_16_1[2]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_6__1
       (.I0(mantissa_out1_carry_i_12_n_0),
        .I1(mantissa_out1_carry_i_11_n_0),
        .I2(\b[24] ),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_7
       (.I0(\b[24] ),
        .I1(mantissa_out1_carry_i_15_n_0),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_7__0
       (.I0(sum_result1_carry_i_19_n_0),
        .I1(sum_result1_carry_i_18_n_0),
        .O(sum_result1_carry_i_16_1[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__1
       (.I0(sum_result1_carry_i_17_n_0),
        .I1(sum_result1_carry_i_16_n_0),
        .I2(sum_result1_carry_i_14_n_0),
        .I3(sum_result1_carry_i_15_n_0),
        .O(sum_result0_carry__0_i_1_3[1]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_8
       (.I0(mantissa_out1_carry_i_17_n_0),
        .I1(\norm/p_0_in ),
        .O(S[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__0
       (.I0(\a[3] [0]),
        .I1(\b[3] [0]),
        .I2(sum_result1_carry_i_19_n_0),
        .I3(sum_result1_carry_i_18_n_0),
        .O(sum_result0_carry__0_i_1_3[0]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_8__1
       (.I0(\a[3] [0]),
        .I1(\b[3] [0]),
        .O(sum_result1_carry_i_16_1[0]));
  LUT6 #(
    .INIT(64'h0000000101010001)) 
    i__carry_i_9
       (.I0(aligned_mantissa_b10_out[5]),
        .I1(aligned_mantissa_b10_out[6]),
        .I2(aligned_mantissa_b10_out[7]),
        .I3(i__carry_i_16_n_0),
        .I4(aligned_mantissa_b10_out[0]),
        .I5(i__carry_i_17_n_0),
        .O(i__carry_i_9_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    mantissa_out1_carry_i_1
       (.I0(mantissa_out1_carry_i_8_n_0),
        .I1(mantissa_out1_carry_i_9_n_0),
        .I2(mantissa_out1_carry_i_10_n_0),
        .O(mantissa_out1_carry_i_10_0[2]));
  LUT4 #(
    .INIT(16'h02A2)) 
    mantissa_out1_carry_i_10
       (.I0(underflow_OBUF_inst_i_11_0),
        .I1(b_IBUF[28]),
        .I2(final_exp1__0__0),
        .I3(a_IBUF[28]),
        .O(mantissa_out1_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFFA888)) 
    mantissa_out1_carry_i_11
       (.I0(mantissa_out1_carry_i_24_n_0),
        .I1(mantissa_out1_carry_i_25_n_0),
        .I2(mantissa_out1_carry_i_26_n_0),
        .I3(mantissa_out1_carry_i_27_n_0),
        .I4(mantissa_out1_carry_i_23_n_0),
        .I5(mantissa_out1_carry_i_18_n_0),
        .O(mantissa_out1_carry_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    mantissa_out1_carry_i_12
       (.I0(underflow_OBUF_inst_i_11_0),
        .I1(b_IBUF[25]),
        .I2(final_exp1__0__0),
        .I3(a_IBUF[25]),
        .O(mantissa_out1_carry_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hEEEF)) 
    mantissa_out1_carry_i_13
       (.I0(underflow_OBUF_inst_i_8_n_0),
        .I1(\b[31] ),
        .I2(underflow_OBUF_inst_i_9_n_0),
        .I3(underflow_OBUF_inst_i_10_n_0),
        .O(mantissa_out1_carry_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    mantissa_out1_carry_i_14
       (.I0(underflow_OBUF_inst_i_11_0),
        .I1(b_IBUF[26]),
        .I2(final_exp1__0__0),
        .I3(a_IBUF[26]),
        .O(mantissa_out1_carry_i_14_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFEFEE)) 
    mantissa_out1_carry_i_15
       (.I0(\b[31] ),
        .I1(mantissa_out1_carry_i_28_n_0),
        .I2(mantissa_out1_carry_i_29_n_0),
        .I3(mantissa_out1_carry_i_30_n_0),
        .I4(mantissa_out1_carry_i_31_n_0),
        .I5(mantissa_out1_carry_i_32_n_0),
        .O(mantissa_out1_carry_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    mantissa_out1_carry_i_16
       (.I0(underflow_OBUF_inst_i_11_0),
        .I1(b_IBUF[23]),
        .I2(final_exp1__0__0),
        .I3(a_IBUF[23]),
        .O(\norm/p_0_in ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBABAAAA)) 
    mantissa_out1_carry_i_17
       (.I0(\b[31] ),
        .I1(mantissa_out1_carry_i_33_n_0),
        .I2(mantissa_out1_carry_i_34_n_0),
        .I3(mantissa_out1_carry_i_35_n_0),
        .I4(mantissa_out1_carry_i_36_n_0),
        .I5(mantissa_out1_carry_i_37_n_0),
        .O(mantissa_out1_carry_i_17_n_0));
  LUT5 #(
    .INIT(32'hBF00FF00)) 
    mantissa_out1_carry_i_18
       (.I0(mantissa_out1_carry_i_38_n_0),
        .I1(mantissa_out1_carry_i_39_n_0),
        .I2(mantissa_out1_carry_i_40_n_0),
        .I3(underflow_OBUF_inst_i_4_n_0),
        .I4(mantissa_out1_carry_i_41_n_0),
        .O(mantissa_out1_carry_i_18_n_0));
  LUT6 #(
    .INIT(64'hFF5FCC5F00000000)) 
    mantissa_out1_carry_i_19
       (.I0(rounded_mantissa0_carry_i_5_1),
        .I1(\adder/data0 [9]),
        .I2(rounded_mantissa0_carry_i_26__2_0),
        .I3(mantissa_out1_carry_i_18_0),
        .I4(\adder/data0 [8]),
        .I5(underflow_OBUF_inst_i_4_n_0),
        .O(mantissa_out1_carry_i_19_n_0));
  LUT4 #(
    .INIT(16'h8F08)) 
    mantissa_out1_carry_i_2
       (.I0(mantissa_out1_carry_i_11_n_0),
        .I1(mantissa_out1_carry_i_12_n_0),
        .I2(mantissa_out1_carry_i_13_n_0),
        .I3(mantissa_out1_carry_i_14_n_0),
        .O(mantissa_out1_carry_i_10_0[1]));
  LUT6 #(
    .INIT(64'hFF5FCC5F00000000)) 
    mantissa_out1_carry_i_20
       (.I0(rounded_mantissa0_carry_i_25__1_0),
        .I1(\adder/data0 [11]),
        .I2(rounded_mantissa0_carry_i_26_0),
        .I3(mantissa_out1_carry_i_18_0),
        .I4(\adder/data0 [10]),
        .I5(underflow_OBUF_inst_i_4_n_0),
        .O(mantissa_out1_carry_i_20_n_0));
  LUT6 #(
    .INIT(64'hFF5FCC5F00000000)) 
    mantissa_out1_carry_i_21
       (.I0(rounded_mantissa0_carry_i_25__0_0),
        .I1(\adder/data0 [12]),
        .I2(\result_OBUF[30]_inst_i_43_0 ),
        .I3(mantissa_out1_carry_i_18_0),
        .I4(\adder/data0 [13]),
        .I5(underflow_OBUF_inst_i_4_n_0),
        .O(mantissa_out1_carry_i_21_n_0));
  LUT6 #(
    .INIT(64'hFF5FCC5F00000000)) 
    mantissa_out1_carry_i_22
       (.I0(rounded_mantissa0_carry_i_25_0),
        .I1(\adder/data0 [14]),
        .I2(\result_OBUF[22]_inst_i_12_1 ),
        .I3(mantissa_out1_carry_i_18_0),
        .I4(\adder/data0 [15]),
        .I5(underflow_OBUF_inst_i_4_n_0),
        .O(mantissa_out1_carry_i_22_n_0));
  LUT5 #(
    .INIT(32'h70F0F0F0)) 
    mantissa_out1_carry_i_23
       (.I0(mantissa_out1_carry_i_53_n_0),
        .I1(mantissa_out1_carry_i_54_n_0),
        .I2(underflow_OBUF_inst_i_4_n_0),
        .I3(mantissa_out1_carry_i_55_n_0),
        .I4(mantissa_out1_carry_i_56_n_0),
        .O(mantissa_out1_carry_i_23_n_0));
  LUT5 #(
    .INIT(32'h8F0F0F0F)) 
    mantissa_out1_carry_i_24
       (.I0(mantissa_out1_carry_i_57_n_0),
        .I1(mantissa_out1_carry_i_58_n_0),
        .I2(underflow_OBUF_inst_i_4_n_0),
        .I3(mantissa_out1_carry_i_59_n_0),
        .I4(mantissa_out1_carry_i_60_n_0),
        .O(mantissa_out1_carry_i_24_n_0));
  LUT5 #(
    .INIT(32'h70F0F0F0)) 
    mantissa_out1_carry_i_25
       (.I0(mantissa_out1_carry_i_61_n_0),
        .I1(mantissa_out1_carry_i_62_n_0),
        .I2(underflow_OBUF_inst_i_4_n_0),
        .I3(mantissa_out1_carry_i_63_n_0),
        .I4(mantissa_out1_carry_i_64_n_0),
        .O(mantissa_out1_carry_i_25_n_0));
  LUT5 #(
    .INIT(32'h8F0F0F0F)) 
    mantissa_out1_carry_i_26
       (.I0(mantissa_out1_carry_i_65_n_0),
        .I1(mantissa_out1_carry_i_66_n_0),
        .I2(underflow_OBUF_inst_i_4_n_0),
        .I3(mantissa_out1_carry_i_67_n_0),
        .I4(mantissa_out1_carry_i_68_n_0),
        .O(mantissa_out1_carry_i_26_n_0));
  LUT6 #(
    .INIT(64'h070F070FFFFF070F)) 
    mantissa_out1_carry_i_27
       (.I0(mantissa_out1_carry_i_69_n_0),
        .I1(mantissa_out1_carry_i_70_n_0),
        .I2(\result[23] ),
        .I3(mantissa_out1_carry_i_71_n_0),
        .I4(underflow_OBUF_inst_i_4_n_0),
        .I5(mantissa_out1_carry_i_72_n_0),
        .O(mantissa_out1_carry_i_27_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hAAAFAAAE)) 
    mantissa_out1_carry_i_28
       (.I0(\a[31]_1 ),
        .I1(underflow_OBUF_inst_i_16_n_0),
        .I2(\a[31]_0 ),
        .I3(\a[31] ),
        .I4(rounded_mantissa0_carry_i_17__3_n_0),
        .O(mantissa_out1_carry_i_28_n_0));
  LUT6 #(
    .INIT(64'hFEFEFFFFFEFEFFFE)) 
    mantissa_out1_carry_i_29
       (.I0(rounded_mantissa0_carry_i_11__3_n_0),
        .I1(underflow_OBUF_inst_i_15_n_0),
        .I2(underflow_OBUF_inst_i_17_n_0),
        .I3(rounded_mantissa0_carry_i_9__3_n_0),
        .I4(mantissa_out1_carry_i_22_n_0),
        .I5(underflow_OBUF_inst_i_25_n_0),
        .O(mantissa_out1_carry_i_29_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    mantissa_out1_carry_i_3
       (.I0(\b[24] ),
        .I1(mantissa_out1_carry_i_15_n_0),
        .I2(\norm/p_0_in ),
        .I3(mantissa_out1_carry_i_17_n_0),
        .O(mantissa_out1_carry_i_10_0[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0001)) 
    mantissa_out1_carry_i_30
       (.I0(underflow_OBUF_inst_i_18_n_0),
        .I1(underflow_OBUF_inst_i_22_n_0),
        .I2(mantissa_out1_carry_i_73_n_0),
        .I3(rounded_mantissa0_carry_i_9__4_n_0),
        .I4(mantissa_out1_carry_i_20_n_0),
        .I5(mantissa_out1_carry_i_22_n_0),
        .O(mantissa_out1_carry_i_30_n_0));
  LUT4 #(
    .INIT(16'h0301)) 
    mantissa_out1_carry_i_31
       (.I0(underflow_OBUF_inst_i_19_n_0),
        .I1(rounded_mantissa0_carry_i_9__4_n_0),
        .I2(mantissa_out1_carry_i_73_n_0),
        .I3(underflow_OBUF_inst_i_20_n_0),
        .O(mantissa_out1_carry_i_31_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    mantissa_out1_carry_i_32
       (.I0(mantissa_out1_carry_i_21_n_0),
        .I1(mantissa_out1_carry_i_19_n_0),
        .I2(underflow_OBUF_inst_i_17_n_0),
        .I3(\result_OBUF[22]_inst_i_15_n_0 ),
        .I4(underflow_OBUF_inst_i_18_n_0),
        .I5(mantissa_out1_carry_i_74_n_0),
        .O(mantissa_out1_carry_i_32_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFFFF00F4)) 
    mantissa_out1_carry_i_33
       (.I0(underflow_OBUF_inst_i_16_n_0),
        .I1(rounded_mantissa0_carry_i_17__3_n_0),
        .I2(\a[31]_0 ),
        .I3(\a[31] ),
        .I4(\a[31]_1 ),
        .O(mantissa_out1_carry_i_33_n_0));
  LUT6 #(
    .INIT(64'hFFFFFF00FFFFFFBA)) 
    mantissa_out1_carry_i_34
       (.I0(rounded_mantissa0_carry_i_24__1_0),
        .I1(\result_OBUF[22]_inst_i_15_n_0 ),
        .I2(underflow_OBUF_inst_i_21_n_0),
        .I3(underflow_OBUF_inst_i_20_n_0),
        .I4(mantissa_out1_carry_i_75_n_0),
        .I5(mantissa_out1_carry_i_76_n_0),
        .O(mantissa_out1_carry_i_34_n_0));
  LUT5 #(
    .INIT(32'hFFFFFF4F)) 
    mantissa_out1_carry_i_35
       (.I0(underflow_OBUF_inst_i_20_n_0),
        .I1(rounded_mantissa0_carry_i_14__3_n_0),
        .I2(underflow_OBUF_inst_i_19_n_0),
        .I3(underflow_OBUF_inst_i_23_n_0),
        .I4(rounded_mantissa0_carry_i_9__4_n_0),
        .O(mantissa_out1_carry_i_35_n_0));
  LUT6 #(
    .INIT(64'h1101110011011101)) 
    mantissa_out1_carry_i_36
       (.I0(mantissa_out1_carry_i_77_n_0),
        .I1(mantissa_out1_carry_i_78_n_0),
        .I2(underflow_OBUF_inst_i_24_n_0),
        .I3(underflow_OBUF_inst_i_23_n_0),
        .I4(rounded_mantissa0_carry_i_9__4_n_0),
        .I5(mantissa_out1_carry_i_73_n_0),
        .O(mantissa_out1_carry_i_36_n_0));
  LUT6 #(
    .INIT(64'hFFF0FFF0FFFFFFF2)) 
    mantissa_out1_carry_i_37
       (.I0(rounded_mantissa0_carry_i_9__3_n_0),
        .I1(mantissa_out1_carry_i_77_n_0),
        .I2(underflow_OBUF_inst_i_15_n_0),
        .I3(mantissa_out1_carry_i_79_n_0),
        .I4(mantissa_out1_carry_i_80_n_0),
        .I5(rounded_mantissa0_carry_i_11__3_n_0),
        .O(mantissa_out1_carry_i_37_n_0));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    mantissa_out1_carry_i_38
       (.I0(\adder/data0 [23]),
        .I1(mantissa_out1_carry_i_18_0),
        .I2(data1[23]),
        .I3(underflow_OBUF_inst_i_2_0),
        .I4(underflow_OBUF_inst_i_2_1),
        .I5(data2[23]),
        .O(mantissa_out1_carry_i_38_n_0));
  LUT6 #(
    .INIT(64'h00004777FFFF4777)) 
    mantissa_out1_carry_i_39
       (.I0(data1[21]),
        .I1(underflow_OBUF_inst_i_2_0),
        .I2(underflow_OBUF_inst_i_2_1),
        .I3(data2[21]),
        .I4(mantissa_out1_carry_i_18_0),
        .I5(\adder/data0 [21]),
        .O(mantissa_out1_carry_i_39_n_0));
  LUT6 #(
    .INIT(64'h0000003050500030)) 
    mantissa_out1_carry_i_4
       (.I0(a_IBUF[30]),
        .I1(b_IBUF[30]),
        .I2(underflow_OBUF_inst_i_11_0),
        .I3(b_IBUF[29]),
        .I4(final_exp1__0__0),
        .I5(a_IBUF[29]),
        .O(\a[30] [3]));
  LUT6 #(
    .INIT(64'h00004777FFFF4777)) 
    mantissa_out1_carry_i_40
       (.I0(data1[20]),
        .I1(underflow_OBUF_inst_i_2_0),
        .I2(underflow_OBUF_inst_i_2_1),
        .I3(data2[20]),
        .I4(mantissa_out1_carry_i_18_0),
        .I5(\adder/data0 [20]),
        .O(mantissa_out1_carry_i_40_n_0));
  LUT6 #(
    .INIT(64'h00004777FFFF4777)) 
    mantissa_out1_carry_i_41
       (.I0(data1[22]),
        .I1(underflow_OBUF_inst_i_2_0),
        .I2(underflow_OBUF_inst_i_2_1),
        .I3(data2[22]),
        .I4(mantissa_out1_carry_i_18_0),
        .I5(\adder/data0 [22]),
        .O(mantissa_out1_carry_i_41_n_0));
  CARRY4 mantissa_out1_carry_i_43
       (.CI(rounded_mantissa0_carry_i_29__3_n_0),
        .CO({mantissa_out1_carry_i_43_n_0,mantissa_out1_carry_i_43_n_1,mantissa_out1_carry_i_43_n_2,mantissa_out1_carry_i_43_n_3}),
        .CYINIT(1'b0),
        .DI({\a[11] ,mantissa_out1_carry_i_81_n_0,sum_result1_carry__0_i_12_0[1:0]}),
        .O(\adder/data0 [11:8]),
        .S({mantissa_out1_carry_i_82_n_0,mantissa_out1_carry_i_83_n_0,mantissa_out1_carry_i_84_n_0,mantissa_out1_carry_i_85_n_0}));
  CARRY4 mantissa_out1_carry_i_49
       (.CI(mantissa_out1_carry_i_43_n_0),
        .CO({mantissa_out1_carry_i_49_n_0,mantissa_out1_carry_i_49_n_1,mantissa_out1_carry_i_49_n_2,mantissa_out1_carry_i_49_n_3}),
        .CYINIT(1'b0),
        .DI({mantissa_out1_carry_i_86_n_0,sum_result1_carry__0_i_10_3[2:0]}),
        .O(\adder/data0 [15:12]),
        .S({mantissa_out1_carry_i_87_n_0,mantissa_out1_carry_i_88_n_0,mantissa_out1_carry_i_89_n_0,mantissa_out1_carry_i_90_n_0}));
  LUT3 #(
    .INIT(8'h90)) 
    mantissa_out1_carry_i_5
       (.I0(mantissa_out1_carry_i_8_n_0),
        .I1(mantissa_out1_carry_i_9_n_0),
        .I2(mantissa_out1_carry_i_10_n_0),
        .O(\a[30] [2]));
  LUT6 #(
    .INIT(64'h00004777FFFF4777)) 
    mantissa_out1_carry_i_53
       (.I0(data1[18]),
        .I1(underflow_OBUF_inst_i_2_0),
        .I2(underflow_OBUF_inst_i_2_1),
        .I3(data2[18]),
        .I4(mantissa_out1_carry_i_18_0),
        .I5(\adder/data0 [18]),
        .O(mantissa_out1_carry_i_53_n_0));
  LUT6 #(
    .INIT(64'h00004777FFFF4777)) 
    mantissa_out1_carry_i_54
       (.I0(data1[19]),
        .I1(underflow_OBUF_inst_i_2_0),
        .I2(underflow_OBUF_inst_i_2_1),
        .I3(data2[19]),
        .I4(mantissa_out1_carry_i_18_0),
        .I5(\adder/data0 [19]),
        .O(mantissa_out1_carry_i_54_n_0));
  LUT6 #(
    .INIT(64'h00004777FFFF4777)) 
    mantissa_out1_carry_i_55
       (.I0(data1[17]),
        .I1(underflow_OBUF_inst_i_2_0),
        .I2(underflow_OBUF_inst_i_2_1),
        .I3(data2[17]),
        .I4(mantissa_out1_carry_i_18_0),
        .I5(\adder/data0 [17]),
        .O(mantissa_out1_carry_i_55_n_0));
  LUT6 #(
    .INIT(64'h477700004777FFFF)) 
    mantissa_out1_carry_i_56
       (.I0(data1[16]),
        .I1(underflow_OBUF_inst_i_2_0),
        .I2(underflow_OBUF_inst_i_2_1),
        .I3(data2[16]),
        .I4(mantissa_out1_carry_i_23_0),
        .I5(\adder/data0 [16]),
        .O(mantissa_out1_carry_i_56_n_0));
  LUT6 #(
    .INIT(64'h00004777FFFF4777)) 
    mantissa_out1_carry_i_57
       (.I0(data1[15]),
        .I1(underflow_OBUF_inst_i_2_0),
        .I2(underflow_OBUF_inst_i_2_1),
        .I3(data2[15]),
        .I4(mantissa_out1_carry_i_18_0),
        .I5(\adder/data0 [15]),
        .O(mantissa_out1_carry_i_57_n_0));
  LUT6 #(
    .INIT(64'h00004777FFFF4777)) 
    mantissa_out1_carry_i_58
       (.I0(data1[14]),
        .I1(underflow_OBUF_inst_i_2_0),
        .I2(underflow_OBUF_inst_i_2_1),
        .I3(data2[14]),
        .I4(mantissa_out1_carry_i_18_0),
        .I5(\adder/data0 [14]),
        .O(mantissa_out1_carry_i_58_n_0));
  LUT6 #(
    .INIT(64'h00004777FFFF4777)) 
    mantissa_out1_carry_i_59
       (.I0(data1[13]),
        .I1(underflow_OBUF_inst_i_2_0),
        .I2(underflow_OBUF_inst_i_2_1),
        .I3(data2[13]),
        .I4(mantissa_out1_carry_i_18_0),
        .I5(\adder/data0 [13]),
        .O(mantissa_out1_carry_i_59_n_0));
  LUT4 #(
    .INIT(16'h6006)) 
    mantissa_out1_carry_i_6
       (.I0(mantissa_out1_carry_i_12_n_0),
        .I1(mantissa_out1_carry_i_11_n_0),
        .I2(mantissa_out1_carry_i_14_n_0),
        .I3(mantissa_out1_carry_i_13_n_0),
        .O(\a[30] [1]));
  LUT6 #(
    .INIT(64'h00004777FFFF4777)) 
    mantissa_out1_carry_i_60
       (.I0(data1[12]),
        .I1(underflow_OBUF_inst_i_2_0),
        .I2(underflow_OBUF_inst_i_2_1),
        .I3(data2[12]),
        .I4(mantissa_out1_carry_i_18_0),
        .I5(\adder/data0 [12]),
        .O(mantissa_out1_carry_i_60_n_0));
  LUT6 #(
    .INIT(64'h00004777FFFF4777)) 
    mantissa_out1_carry_i_61
       (.I0(data1[10]),
        .I1(underflow_OBUF_inst_i_2_0),
        .I2(underflow_OBUF_inst_i_2_1),
        .I3(data2[10]),
        .I4(mantissa_out1_carry_i_18_0),
        .I5(\adder/data0 [10]),
        .O(mantissa_out1_carry_i_61_n_0));
  LUT6 #(
    .INIT(64'h477700004777FFFF)) 
    mantissa_out1_carry_i_62
       (.I0(data1[11]),
        .I1(underflow_OBUF_inst_i_2_0),
        .I2(underflow_OBUF_inst_i_2_1),
        .I3(data2[11]),
        .I4(mantissa_out1_carry_i_23_0),
        .I5(\adder/data0 [11]),
        .O(mantissa_out1_carry_i_62_n_0));
  LUT6 #(
    .INIT(64'h00004777FFFF4777)) 
    mantissa_out1_carry_i_63
       (.I0(data1[8]),
        .I1(underflow_OBUF_inst_i_2_0),
        .I2(underflow_OBUF_inst_i_2_1),
        .I3(data2[8]),
        .I4(mantissa_out1_carry_i_18_0),
        .I5(\adder/data0 [8]),
        .O(mantissa_out1_carry_i_63_n_0));
  LUT6 #(
    .INIT(64'h00004777FFFF4777)) 
    mantissa_out1_carry_i_64
       (.I0(data1[9]),
        .I1(underflow_OBUF_inst_i_2_0),
        .I2(underflow_OBUF_inst_i_2_1),
        .I3(data2[9]),
        .I4(mantissa_out1_carry_i_18_0),
        .I5(\adder/data0 [9]),
        .O(mantissa_out1_carry_i_64_n_0));
  LUT6 #(
    .INIT(64'h00004777FFFF4777)) 
    mantissa_out1_carry_i_65
       (.I0(data1[6]),
        .I1(underflow_OBUF_inst_i_2_0),
        .I2(underflow_OBUF_inst_i_2_1),
        .I3(data2[6]),
        .I4(mantissa_out1_carry_i_18_0),
        .I5(\adder/data0 [6]),
        .O(mantissa_out1_carry_i_65_n_0));
  LUT6 #(
    .INIT(64'h00004777FFFF4777)) 
    mantissa_out1_carry_i_66
       (.I0(data1[7]),
        .I1(underflow_OBUF_inst_i_2_0),
        .I2(underflow_OBUF_inst_i_2_1),
        .I3(data2[7]),
        .I4(mantissa_out1_carry_i_18_0),
        .I5(\adder/data0 [7]),
        .O(mantissa_out1_carry_i_66_n_0));
  LUT6 #(
    .INIT(64'h00004777FFFF4777)) 
    mantissa_out1_carry_i_67
       (.I0(data1[4]),
        .I1(underflow_OBUF_inst_i_2_0),
        .I2(underflow_OBUF_inst_i_2_1),
        .I3(data2[4]),
        .I4(mantissa_out1_carry_i_18_0),
        .I5(\adder/data0 [4]),
        .O(mantissa_out1_carry_i_67_n_0));
  LUT6 #(
    .INIT(64'h00004777FFFF4777)) 
    mantissa_out1_carry_i_68
       (.I0(data1[5]),
        .I1(underflow_OBUF_inst_i_2_0),
        .I2(underflow_OBUF_inst_i_2_1),
        .I3(data2[5]),
        .I4(mantissa_out1_carry_i_18_0),
        .I5(\adder/data0 [5]),
        .O(mantissa_out1_carry_i_68_n_0));
  LUT6 #(
    .INIT(64'h4744477747774777)) 
    mantissa_out1_carry_i_69
       (.I0(O[0]),
        .I1(mantissa_out1_carry_i_18_0),
        .I2(data1[2]),
        .I3(underflow_OBUF_inst_i_2_0),
        .I4(underflow_OBUF_inst_i_2_1),
        .I5(data2[2]),
        .O(mantissa_out1_carry_i_69_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    mantissa_out1_carry_i_7
       (.I0(\b[24] ),
        .I1(mantissa_out1_carry_i_15_n_0),
        .I2(\norm/p_0_in ),
        .I3(mantissa_out1_carry_i_17_n_0),
        .O(\a[30] [0]));
  LUT6 #(
    .INIT(64'h4744477747774777)) 
    mantissa_out1_carry_i_70
       (.I0(O[1]),
        .I1(mantissa_out1_carry_i_18_0),
        .I2(data1[3]),
        .I3(underflow_OBUF_inst_i_2_0),
        .I4(underflow_OBUF_inst_i_2_1),
        .I5(data2[3]),
        .O(mantissa_out1_carry_i_70_n_0));
  LUT6 #(
    .INIT(64'h477700004777FFFF)) 
    mantissa_out1_carry_i_71
       (.I0(data1[1]),
        .I1(underflow_OBUF_inst_i_2_0),
        .I2(underflow_OBUF_inst_i_2_1),
        .I3(data2[1]),
        .I4(mantissa_out1_carry_i_23_0),
        .I5(\adder/data0 [1]),
        .O(mantissa_out1_carry_i_71_n_0));
  LUT6 #(
    .INIT(64'h477700004777FFFF)) 
    mantissa_out1_carry_i_72
       (.I0(data1[0]),
        .I1(underflow_OBUF_inst_i_2_0),
        .I2(underflow_OBUF_inst_i_2_1),
        .I3(data2[0]),
        .I4(mantissa_out1_carry_i_23_0),
        .I5(\adder/data0 [0]),
        .O(mantissa_out1_carry_i_72_n_0));
  LUT6 #(
    .INIT(64'h08808008A88A8AA8)) 
    mantissa_out1_carry_i_73
       (.I0(underflow_OBUF_inst_i_4_n_0),
        .I1(\adder/data0 [8]),
        .I2(a_IBUF[31]),
        .I3(op_IBUF[0]),
        .I4(b_IBUF[31]),
        .I5(rounded_mantissa0_carry_i_26__2_0),
        .O(mantissa_out1_carry_i_73_n_0));
  LUT4 #(
    .INIT(16'h4CCC)) 
    mantissa_out1_carry_i_74
       (.I0(mantissa_out1_carry_i_72_n_0),
        .I1(underflow_OBUF_inst_i_4_n_0),
        .I2(mantissa_out1_carry_i_55_n_0),
        .I3(mantissa_out1_carry_i_56_n_0),
        .O(mantissa_out1_carry_i_74_n_0));
  LUT6 #(
    .INIT(64'h0050CC5000000000)) 
    mantissa_out1_carry_i_75
       (.I0(rounded_mantissa0_carry_i_35_0),
        .I1(\adder/data0 [4]),
        .I2(rounded_mantissa0_carry_i_7__0_1),
        .I3(mantissa_out1_carry_i_18_0),
        .I4(\adder/data0 [5]),
        .I5(underflow_OBUF_inst_i_4_n_0),
        .O(mantissa_out1_carry_i_75_n_0));
  LUT6 #(
    .INIT(64'h000000002882EBBE)) 
    mantissa_out1_carry_i_76
       (.I0(O[1]),
        .I1(a_IBUF[31]),
        .I2(op_IBUF[0]),
        .I3(b_IBUF[31]),
        .I4(mantissa_out1_carry_i_34_0),
        .I5(\result[23] ),
        .O(mantissa_out1_carry_i_76_n_0));
  LUT6 #(
    .INIT(64'h08808008A88A8AA8)) 
    mantissa_out1_carry_i_77
       (.I0(underflow_OBUF_inst_i_4_n_0),
        .I1(\adder/data0 [14]),
        .I2(a_IBUF[31]),
        .I3(op_IBUF[0]),
        .I4(b_IBUF[31]),
        .I5(rounded_mantissa0_carry_i_25_0),
        .O(mantissa_out1_carry_i_77_n_0));
  LUT6 #(
    .INIT(64'hFF5FCC5F00000000)) 
    mantissa_out1_carry_i_78
       (.I0(rounded_mantissa0_carry_i_6__0_0),
        .I1(\adder/data0 [16]),
        .I2(rounded_mantissa0_carry_i_25__0_0),
        .I3(mantissa_out1_carry_i_18_0),
        .I4(\adder/data0 [12]),
        .I5(underflow_OBUF_inst_i_4_n_0),
        .O(mantissa_out1_carry_i_78_n_0));
  LUT6 #(
    .INIT(64'hFF5FCC5F00000000)) 
    mantissa_out1_carry_i_79
       (.I0(rounded_mantissa0_carry_i_20__3_n_0),
        .I1(\adder/data0 [21]),
        .I2(\result_OBUF[30]_inst_i_62_0 ),
        .I3(mantissa_out1_carry_i_18_0),
        .I4(\adder/data0 [19]),
        .I5(underflow_OBUF_inst_i_4_n_0),
        .O(mantissa_out1_carry_i_79_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    mantissa_out1_carry_i_8
       (.I0(underflow_OBUF_inst_i_11_0),
        .I1(b_IBUF[27]),
        .I2(final_exp1__0__0),
        .I3(a_IBUF[27]),
        .O(mantissa_out1_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h08808008A88A8AA8)) 
    mantissa_out1_carry_i_80
       (.I0(underflow_OBUF_inst_i_4_n_0),
        .I1(\adder/data0 [15]),
        .I2(a_IBUF[31]),
        .I3(op_IBUF[0]),
        .I4(b_IBUF[31]),
        .I5(\result_OBUF[22]_inst_i_12_1 ),
        .O(mantissa_out1_carry_i_80_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    mantissa_out1_carry_i_81
       (.I0(sum_result1_carry__0),
        .I1(sum_result1_carry__0_i_12_n_0),
        .O(mantissa_out1_carry_i_81_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mantissa_out1_carry_i_82
       (.I0(\b[11] ),
        .I1(\a[11] ),
        .O(mantissa_out1_carry_i_82_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    mantissa_out1_carry_i_83
       (.I0(sum_result1_carry__0),
        .I1(sum_result1_carry__0_i_12_n_0),
        .I2(\b[10] ),
        .O(mantissa_out1_carry_i_83_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mantissa_out1_carry_i_84
       (.I0(\b[9] ),
        .I1(sum_result1_carry__0_i_12_0[1]),
        .O(mantissa_out1_carry_i_84_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mantissa_out1_carry_i_85
       (.I0(sum_result1_carry__0_i_13_n_0),
        .I1(sum_result1_carry__0_i_12_0[0]),
        .O(mantissa_out1_carry_i_85_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    mantissa_out1_carry_i_86
       (.I0(sum_result1_carry__0),
        .I1(sum_result1_carry__0_i_10_n_0),
        .O(mantissa_out1_carry_i_86_n_0));
  LUT3 #(
    .INIT(8'h14)) 
    mantissa_out1_carry_i_87
       (.I0(sum_result1_carry__0),
        .I1(sum_result1_carry__0_i_9_n_0),
        .I2(sum_result1_carry__0_i_10_n_0),
        .O(mantissa_out1_carry_i_87_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mantissa_out1_carry_i_88
       (.I0(sum_result1_carry__0_i_9_0[2]),
        .I1(sum_result1_carry__0_i_10_3[2]),
        .O(mantissa_out1_carry_i_88_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mantissa_out1_carry_i_89
       (.I0(sum_result1_carry__0_i_9_0[1]),
        .I1(sum_result1_carry__0_i_10_3[1]),
        .O(mantissa_out1_carry_i_89_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    mantissa_out1_carry_i_9
       (.I0(mantissa_out1_carry_i_18_n_0),
        .I1(mantissa_out1_carry_i_19_n_0),
        .I2(mantissa_out1_carry_i_20_n_0),
        .I3(mantissa_out1_carry_i_21_n_0),
        .I4(mantissa_out1_carry_i_22_n_0),
        .I5(mantissa_out1_carry_i_23_n_0),
        .O(mantissa_out1_carry_i_9_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    mantissa_out1_carry_i_90
       (.I0(sum_result1_carry__0),
        .I1(sum_result1_carry__0_i_11_n_0),
        .I2(sum_result1_carry__0_i_10_3[0]),
        .O(mantissa_out1_carry_i_90_n_0));
  LUT6 #(
    .INIT(64'h0000001400000000)) 
    overflow_OBUF_inst_i_1
       (.I0(op_IBUF[1]),
        .I1(overflow_OBUF_inst_i_2_n_0),
        .I2(overflow_OBUF_inst_i_3_n_0),
        .I3(\result_OBUF[21]_inst_i_3_n_0 ),
        .I4(\result_OBUF[30]_inst_i_2_n_0 ),
        .I5(\result_OBUF[30]_inst_i_5_n_0 ),
        .O(overflow_OBUF));
  LUT4 #(
    .INIT(16'h02A2)) 
    overflow_OBUF_inst_i_10
       (.I0(underflow_OBUF_inst_i_11_0),
        .I1(b_IBUF[29]),
        .I2(final_exp1__0__0),
        .I3(a_IBUF[29]),
        .O(overflow_OBUF_inst_i_10_n_0));
  LUT4 #(
    .INIT(16'h02A2)) 
    overflow_OBUF_inst_i_11
       (.I0(underflow_OBUF_inst_i_11_0),
        .I1(b_IBUF[28]),
        .I2(final_exp1__0__0),
        .I3(a_IBUF[28]),
        .O(overflow_OBUF_inst_i_11_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    overflow_OBUF_inst_i_12
       (.I0(mantissa_out1_carry_i_8_n_0),
        .I1(mantissa_out1_carry_i_9_n_0),
        .O(overflow_OBUF_inst_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    overflow_OBUF_inst_i_2
       (.I0(\result_OBUF[28]_inst_i_3_n_0 ),
        .I1(\result_OBUF[28]_inst_i_4_n_0 ),
        .I2(\result_OBUF[30]_inst_i_14_n_0 ),
        .I3(\result_OBUF[30]_inst_i_8_n_0 ),
        .O(overflow_OBUF_inst_i_2_n_0));
  LUT5 #(
    .INIT(32'h00045504)) 
    overflow_OBUF_inst_i_3
       (.I0(underflow_OBUF_inst_i_3_n_0),
        .I1(\norm/exponent_out0 [5]),
        .I2(CO),
        .I3(underflow_OBUF_inst_i_2_n_0),
        .I4(overflow_OBUF_inst_i_5_n_0),
        .O(overflow_OBUF_inst_i_3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 overflow_OBUF_inst_i_4
       (.CI(\result_OBUF[30]_inst_i_16_n_0 ),
        .CO({NLW_overflow_OBUF_inst_i_4_CO_UNCONNECTED[3],overflow_OBUF_inst_i_4_n_1,overflow_OBUF_inst_i_4_n_2,overflow_OBUF_inst_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,overflow_OBUF_inst_i_6_n_0,overflow_OBUF_inst_i_7_n_0,overflow_OBUF_inst_i_8_n_0}),
        .O(\norm/exponent_out0 [7:4]),
        .S({overflow_OBUF_inst_i_9_n_0,overflow_OBUF_inst_i_10_n_0,overflow_OBUF_inst_i_11_n_0,overflow_OBUF_inst_i_12_n_0}));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    overflow_OBUF_inst_i_5
       (.I0(mantissa_out1_carry_i_10_n_0),
        .I1(mantissa_out1_carry_i_14_n_0),
        .I2(\norm/p_0_in ),
        .I3(\b[24] ),
        .I4(mantissa_out1_carry_i_12_n_0),
        .I5(mantissa_out1_carry_i_8_n_0),
        .O(overflow_OBUF_inst_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    overflow_OBUF_inst_i_6
       (.I0(\result_OBUF[30]_inst_i_25_n_0 ),
        .O(overflow_OBUF_inst_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    overflow_OBUF_inst_i_7
       (.I0(mantissa_out1_carry_i_10_n_0),
        .O(overflow_OBUF_inst_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    overflow_OBUF_inst_i_8
       (.I0(mantissa_out1_carry_i_8_n_0),
        .O(overflow_OBUF_inst_i_8_n_0));
  LUT4 #(
    .INIT(16'h02A2)) 
    overflow_OBUF_inst_i_9
       (.I0(underflow_OBUF_inst_i_11_0),
        .I1(b_IBUF[30]),
        .I2(final_exp1__0__0),
        .I3(a_IBUF[30]),
        .O(overflow_OBUF_inst_i_9_n_0));
  LUT6 #(
    .INIT(64'h0000000055555551)) 
    \result_OBUF[0]_inst_i_1 
       (.I0(\result_OBUF[21]_inst_i_2_n_0 ),
        .I1(\result_OBUF[30]_inst_i_5_n_0 ),
        .I2(\result_OBUF[30]_inst_i_2_n_0 ),
        .I3(\result_OBUF[21]_inst_i_3_n_0 ),
        .I4(\result_OBUF[21]_inst_i_4_n_0 ),
        .I5(\result_OBUF[0]_inst_i_2_n_0 ),
        .O(result_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \result_OBUF[0]_inst_i_2 
       (.I0(rounded_mantissa0_carry_i_6__2_n_0),
        .I1(\result_OBUF[22]_inst_i_6_n_0 ),
        .O(\result_OBUF[0]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555551)) 
    \result_OBUF[10]_inst_i_1 
       (.I0(\result_OBUF[21]_inst_i_2_n_0 ),
        .I1(\result_OBUF[30]_inst_i_5_n_0 ),
        .I2(\result_OBUF[30]_inst_i_2_n_0 ),
        .I3(\result_OBUF[21]_inst_i_3_n_0 ),
        .I4(\result_OBUF[21]_inst_i_4_n_0 ),
        .I5(\result_OBUF[10]_inst_i_2_n_0 ),
        .O(result_OBUF[10]));
  LUT5 #(
    .INIT(32'h8B88BBBB)) 
    \result_OBUF[10]_inst_i_2 
       (.I0(rounded_mantissa0_carry_i_7__2_n_0),
        .I1(\result_OBUF[22]_inst_i_6_n_0 ),
        .I2(\result_OBUF[22]_inst_i_5_n_0 ),
        .I3(\result_OBUF[22]_inst_i_4_n_0 ),
        .I4(data0[9]),
        .O(\result_OBUF[10]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555551)) 
    \result_OBUF[11]_inst_i_1 
       (.I0(\result_OBUF[21]_inst_i_2_n_0 ),
        .I1(\result_OBUF[30]_inst_i_5_n_0 ),
        .I2(\result_OBUF[30]_inst_i_2_n_0 ),
        .I3(\result_OBUF[21]_inst_i_3_n_0 ),
        .I4(\result_OBUF[21]_inst_i_4_n_0 ),
        .I5(\result_OBUF[11]_inst_i_2_n_0 ),
        .O(result_OBUF[11]));
  LUT5 #(
    .INIT(32'h8B88BBBB)) 
    \result_OBUF[11]_inst_i_2 
       (.I0(rounded_mantissa0_carry_i_6__1_n_0),
        .I1(\result_OBUF[22]_inst_i_6_n_0 ),
        .I2(\result_OBUF[22]_inst_i_5_n_0 ),
        .I3(\result_OBUF[22]_inst_i_4_n_0 ),
        .I4(data0[10]),
        .O(\result_OBUF[11]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555551)) 
    \result_OBUF[12]_inst_i_1 
       (.I0(\result_OBUF[21]_inst_i_2_n_0 ),
        .I1(\result_OBUF[30]_inst_i_5_n_0 ),
        .I2(\result_OBUF[30]_inst_i_2_n_0 ),
        .I3(\result_OBUF[21]_inst_i_3_n_0 ),
        .I4(\result_OBUF[21]_inst_i_4_n_0 ),
        .I5(\result_OBUF[12]_inst_i_2_n_0 ),
        .O(result_OBUF[12]));
  LUT5 #(
    .INIT(32'h8B88BBBB)) 
    \result_OBUF[12]_inst_i_2 
       (.I0(rounded_mantissa0_carry_i_5__1_n_0),
        .I1(\result_OBUF[22]_inst_i_6_n_0 ),
        .I2(\result_OBUF[22]_inst_i_5_n_0 ),
        .I3(\result_OBUF[22]_inst_i_4_n_0 ),
        .I4(data0[11]),
        .O(\result_OBUF[12]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555551)) 
    \result_OBUF[13]_inst_i_1 
       (.I0(\result_OBUF[21]_inst_i_2_n_0 ),
        .I1(\result_OBUF[30]_inst_i_5_n_0 ),
        .I2(\result_OBUF[30]_inst_i_2_n_0 ),
        .I3(\result_OBUF[21]_inst_i_3_n_0 ),
        .I4(\result_OBUF[21]_inst_i_4_n_0 ),
        .I5(\result_OBUF[13]_inst_i_2_n_0 ),
        .O(result_OBUF[13]));
  LUT5 #(
    .INIT(32'h8B88BBBB)) 
    \result_OBUF[13]_inst_i_2 
       (.I0(rounded_mantissa0_carry_i_8__3_n_0),
        .I1(\result_OBUF[22]_inst_i_6_n_0 ),
        .I2(\result_OBUF[22]_inst_i_5_n_0 ),
        .I3(\result_OBUF[22]_inst_i_4_n_0 ),
        .I4(data0[12]),
        .O(\result_OBUF[13]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555551)) 
    \result_OBUF[14]_inst_i_1 
       (.I0(\result_OBUF[21]_inst_i_2_n_0 ),
        .I1(\result_OBUF[30]_inst_i_5_n_0 ),
        .I2(\result_OBUF[30]_inst_i_2_n_0 ),
        .I3(\result_OBUF[21]_inst_i_3_n_0 ),
        .I4(\result_OBUF[21]_inst_i_4_n_0 ),
        .I5(\result_OBUF[14]_inst_i_2_n_0 ),
        .O(result_OBUF[14]));
  LUT5 #(
    .INIT(32'h8B88BBBB)) 
    \result_OBUF[14]_inst_i_2 
       (.I0(rounded_mantissa0_carry_i_7__1_n_0),
        .I1(\result_OBUF[22]_inst_i_6_n_0 ),
        .I2(\result_OBUF[22]_inst_i_5_n_0 ),
        .I3(\result_OBUF[22]_inst_i_4_n_0 ),
        .I4(data0[13]),
        .O(\result_OBUF[14]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555551)) 
    \result_OBUF[15]_inst_i_1 
       (.I0(\result_OBUF[21]_inst_i_2_n_0 ),
        .I1(\result_OBUF[30]_inst_i_5_n_0 ),
        .I2(\result_OBUF[30]_inst_i_2_n_0 ),
        .I3(\result_OBUF[21]_inst_i_3_n_0 ),
        .I4(\result_OBUF[21]_inst_i_4_n_0 ),
        .I5(\result_OBUF[15]_inst_i_2_n_0 ),
        .O(result_OBUF[15]));
  LUT5 #(
    .INIT(32'h8B88BBBB)) 
    \result_OBUF[15]_inst_i_2 
       (.I0(rounded_mantissa0_carry_i_6__0_n_0),
        .I1(\result_OBUF[22]_inst_i_6_n_0 ),
        .I2(\result_OBUF[22]_inst_i_5_n_0 ),
        .I3(\result_OBUF[22]_inst_i_4_n_0 ),
        .I4(data0[14]),
        .O(\result_OBUF[15]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555551)) 
    \result_OBUF[16]_inst_i_1 
       (.I0(\result_OBUF[21]_inst_i_2_n_0 ),
        .I1(\result_OBUF[30]_inst_i_5_n_0 ),
        .I2(\result_OBUF[30]_inst_i_2_n_0 ),
        .I3(\result_OBUF[21]_inst_i_3_n_0 ),
        .I4(\result_OBUF[21]_inst_i_4_n_0 ),
        .I5(\result_OBUF[16]_inst_i_2_n_0 ),
        .O(result_OBUF[16]));
  LUT5 #(
    .INIT(32'h8B88BBBB)) 
    \result_OBUF[16]_inst_i_2 
       (.I0(rounded_mantissa0_carry_i_5__0_n_0),
        .I1(\result_OBUF[22]_inst_i_6_n_0 ),
        .I2(\result_OBUF[22]_inst_i_5_n_0 ),
        .I3(\result_OBUF[22]_inst_i_4_n_0 ),
        .I4(data0[15]),
        .O(\result_OBUF[16]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555551)) 
    \result_OBUF[17]_inst_i_1 
       (.I0(\result_OBUF[21]_inst_i_2_n_0 ),
        .I1(\result_OBUF[30]_inst_i_5_n_0 ),
        .I2(\result_OBUF[30]_inst_i_2_n_0 ),
        .I3(\result_OBUF[21]_inst_i_3_n_0 ),
        .I4(\result_OBUF[21]_inst_i_4_n_0 ),
        .I5(\result_OBUF[17]_inst_i_2_n_0 ),
        .O(result_OBUF[17]));
  LUT5 #(
    .INIT(32'h8B88BBBB)) 
    \result_OBUF[17]_inst_i_2 
       (.I0(rounded_mantissa0_carry_i_8__2_n_0),
        .I1(\result_OBUF[22]_inst_i_6_n_0 ),
        .I2(\result_OBUF[22]_inst_i_5_n_0 ),
        .I3(\result_OBUF[22]_inst_i_4_n_0 ),
        .I4(data0[16]),
        .O(\result_OBUF[17]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555551)) 
    \result_OBUF[18]_inst_i_1 
       (.I0(\result_OBUF[21]_inst_i_2_n_0 ),
        .I1(\result_OBUF[30]_inst_i_5_n_0 ),
        .I2(\result_OBUF[30]_inst_i_2_n_0 ),
        .I3(\result_OBUF[21]_inst_i_3_n_0 ),
        .I4(\result_OBUF[21]_inst_i_4_n_0 ),
        .I5(\result_OBUF[18]_inst_i_2_n_0 ),
        .O(result_OBUF[18]));
  LUT5 #(
    .INIT(32'h8B88BBBB)) 
    \result_OBUF[18]_inst_i_2 
       (.I0(rounded_mantissa0_carry_i_7__3_n_0),
        .I1(\result_OBUF[22]_inst_i_6_n_0 ),
        .I2(\result_OBUF[22]_inst_i_5_n_0 ),
        .I3(\result_OBUF[22]_inst_i_4_n_0 ),
        .I4(data0[17]),
        .O(\result_OBUF[18]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555551)) 
    \result_OBUF[19]_inst_i_1 
       (.I0(\result_OBUF[21]_inst_i_2_n_0 ),
        .I1(\result_OBUF[30]_inst_i_5_n_0 ),
        .I2(\result_OBUF[30]_inst_i_2_n_0 ),
        .I3(\result_OBUF[21]_inst_i_3_n_0 ),
        .I4(\result_OBUF[21]_inst_i_4_n_0 ),
        .I5(\result_OBUF[19]_inst_i_2_n_0 ),
        .O(result_OBUF[19]));
  LUT5 #(
    .INIT(32'h8B88BBBB)) 
    \result_OBUF[19]_inst_i_2 
       (.I0(rounded_mantissa0_carry_i_6__3_n_0),
        .I1(\result_OBUF[22]_inst_i_6_n_0 ),
        .I2(\result_OBUF[22]_inst_i_5_n_0 ),
        .I3(\result_OBUF[22]_inst_i_4_n_0 ),
        .I4(data0[18]),
        .O(\result_OBUF[19]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555551)) 
    \result_OBUF[1]_inst_i_1 
       (.I0(\result_OBUF[21]_inst_i_2_n_0 ),
        .I1(\result_OBUF[30]_inst_i_5_n_0 ),
        .I2(\result_OBUF[30]_inst_i_2_n_0 ),
        .I3(\result_OBUF[21]_inst_i_3_n_0 ),
        .I4(\result_OBUF[21]_inst_i_4_n_0 ),
        .I5(\result_OBUF[1]_inst_i_2_n_0 ),
        .O(result_OBUF[1]));
  LUT5 #(
    .INIT(32'h8B88BBBB)) 
    \result_OBUF[1]_inst_i_2 
       (.I0(rounded_mantissa0_carry_i_10__0_n_0),
        .I1(\result_OBUF[22]_inst_i_6_n_0 ),
        .I2(\result_OBUF[22]_inst_i_5_n_0 ),
        .I3(\result_OBUF[22]_inst_i_4_n_0 ),
        .I4(data0[0]),
        .O(\result_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555551)) 
    \result_OBUF[20]_inst_i_1 
       (.I0(\result_OBUF[21]_inst_i_2_n_0 ),
        .I1(\result_OBUF[30]_inst_i_5_n_0 ),
        .I2(\result_OBUF[30]_inst_i_2_n_0 ),
        .I3(\result_OBUF[21]_inst_i_3_n_0 ),
        .I4(\result_OBUF[21]_inst_i_4_n_0 ),
        .I5(\result_OBUF[20]_inst_i_2_n_0 ),
        .O(result_OBUF[20]));
  LUT5 #(
    .INIT(32'h8B88BBBB)) 
    \result_OBUF[20]_inst_i_2 
       (.I0(rounded_mantissa0_carry_i_5__3_n_0),
        .I1(\result_OBUF[22]_inst_i_6_n_0 ),
        .I2(\result_OBUF[22]_inst_i_5_n_0 ),
        .I3(\result_OBUF[22]_inst_i_4_n_0 ),
        .I4(data0[19]),
        .O(\result_OBUF[20]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555551)) 
    \result_OBUF[21]_inst_i_1 
       (.I0(\result_OBUF[21]_inst_i_2_n_0 ),
        .I1(\result_OBUF[30]_inst_i_5_n_0 ),
        .I2(\result_OBUF[30]_inst_i_2_n_0 ),
        .I3(\result_OBUF[21]_inst_i_3_n_0 ),
        .I4(\result_OBUF[21]_inst_i_4_n_0 ),
        .I5(\result_OBUF[21]_inst_i_5_n_0 ),
        .O(result_OBUF[21]));
  LUT2 #(
    .INIT(4'hE)) 
    \result_OBUF[21]_inst_i_2 
       (.I0(op_IBUF[1]),
        .I1(\result_OBUF[22]_inst_i_3_n_0 ),
        .O(\result_OBUF[21]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFDFFDF)) 
    \result_OBUF[21]_inst_i_3 
       (.I0(\result_OBUF[30]_inst_i_14_n_0 ),
        .I1(\result_OBUF[21]_inst_i_6_n_0 ),
        .I2(\result_OBUF[24]_inst_i_4_n_0 ),
        .I3(underflow_OBUF_inst_i_3_n_0),
        .I4(\result_OBUF[24]_inst_i_3_n_0 ),
        .O(\result_OBUF[21]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h55555595)) 
    \result_OBUF[21]_inst_i_4 
       (.I0(overflow_OBUF_inst_i_3_n_0),
        .I1(\result_OBUF[30]_inst_i_8_n_0 ),
        .I2(\result_OBUF[30]_inst_i_14_n_0 ),
        .I3(\result_OBUF[28]_inst_i_4_n_0 ),
        .I4(\result_OBUF[28]_inst_i_3_n_0 ),
        .O(\result_OBUF[21]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8B88BBBB)) 
    \result_OBUF[21]_inst_i_5 
       (.I0(rounded_mantissa0_carry_i_4__4_n_0),
        .I1(\result_OBUF[22]_inst_i_6_n_0 ),
        .I2(\result_OBUF[22]_inst_i_5_n_0 ),
        .I3(\result_OBUF[22]_inst_i_4_n_0 ),
        .I4(data0[20]),
        .O(\result_OBUF[21]_inst_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \result_OBUF[21]_inst_i_6 
       (.I0(\result_OBUF[30]_inst_i_9_n_0 ),
        .I1(\result_OBUF[26]_inst_i_3_n_0 ),
        .I2(\result_OBUF[30]_inst_i_8_n_0 ),
        .O(\result_OBUF[21]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5555555500005455)) 
    \result_OBUF[22]_inst_i_1 
       (.I0(op_IBUF[1]),
        .I1(\result_OBUF[30]_inst_i_4_n_0 ),
        .I2(\result_OBUF[30]_inst_i_2_n_0 ),
        .I3(\result_OBUF[30]_inst_i_5_n_0 ),
        .I4(\result_OBUF[22]_inst_i_2_n_0 ),
        .I5(\result_OBUF[31]_inst_i_6_n_0 ),
        .O(result_OBUF[22]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \result_OBUF[22]_inst_i_10 
       (.I0(rounded_mantissa0_carry_i_6__1_n_0),
        .I1(rounded_mantissa0_carry_i_7__2_n_0),
        .I2(rounded_mantissa0_carry_i_8_n_0),
        .I3(rounded_mantissa0_carry_i_5_n_0),
        .O(\result_OBUF[22]_inst_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \result_OBUF[22]_inst_i_11 
       (.I0(rounded_mantissa0_carry_i_7__3_n_0),
        .I1(rounded_mantissa0_carry_i_6__3_n_0),
        .I2(rounded_mantissa0_carry_i_8__2_n_0),
        .I3(rounded_mantissa0_carry_i_5__0_n_0),
        .O(\result_OBUF[22]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \result_OBUF[22]_inst_i_12 
       (.I0(mantissa_out1_carry_i_26_n_0),
        .I1(mantissa_out1_carry_i_80_n_0),
        .I2(underflow_OBUF_inst_i_21_n_0),
        .I3(\a[31]_1 ),
        .I4(underflow_OBUF_inst_i_15_n_0),
        .I5(underflow_OBUF_inst_i_22_n_0),
        .O(\result_OBUF[22]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \result_OBUF[22]_inst_i_13 
       (.I0(rounded_mantissa0_carry_i_17__3_n_0),
        .I1(\a[31]_0 ),
        .I2(mantissa_out1_carry_i_20_n_0),
        .I3(\result_OBUF[22]_inst_i_17_n_0 ),
        .I4(\a[31] ),
        .I5(underflow_OBUF_inst_i_16_n_0),
        .O(\result_OBUF[22]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \result_OBUF[22]_inst_i_14 
       (.I0(rounded_mantissa0_carry_i_9__3_n_0),
        .I1(underflow_OBUF_inst_i_25_n_0),
        .I2(mantissa_out1_carry_i_77_n_0),
        .I3(rounded_mantissa0_carry_i_11__3_n_0),
        .I4(rounded_mantissa0_carry_i_9__4_n_0),
        .I5(mantissa_out1_carry_i_73_n_0),
        .O(\result_OBUF[22]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0440400454454554)) 
    \result_OBUF[22]_inst_i_15 
       (.I0(\result[23] ),
        .I1(\adder/data0 [1]),
        .I2(a_IBUF[31]),
        .I3(op_IBUF[0]),
        .I4(b_IBUF[31]),
        .I5(\result_OBUF[22]_inst_i_6_0 ),
        .O(\result_OBUF[22]_inst_i_15_n_0 ));
  MUXF7 \result_OBUF[22]_inst_i_16 
       (.I0(rounded_mantissa0_carry_i_23_n_0),
        .I1(rounded_mantissa0_carry_i_22__3_n_0),
        .O(\result_OBUF[22]_inst_i_16_n_0 ),
        .S(CO));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \result_OBUF[22]_inst_i_17 
       (.I0(\b[31] ),
        .I1(underflow_OBUF_inst_i_2_n_0),
        .O(\result_OBUF[22]_inst_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBBFBAAAABBFB)) 
    \result_OBUF[22]_inst_i_2 
       (.I0(\result_OBUF[22]_inst_i_3_n_0 ),
        .I1(data0[21]),
        .I2(\result_OBUF[22]_inst_i_4_n_0 ),
        .I3(\result_OBUF[22]_inst_i_5_n_0 ),
        .I4(\result_OBUF[22]_inst_i_6_n_0 ),
        .I5(rounded_mantissa0_carry_i_3__3_n_0),
        .O(\result_OBUF[22]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \result_OBUF[22]_inst_i_3 
       (.I0(\result[23] ),
        .I1(\result_OBUF[30]_inst_i_3_n_0 ),
        .O(\result_OBUF[22]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \result_OBUF[22]_inst_i_4 
       (.I0(\result_OBUF[22]_inst_i_7_n_0 ),
        .I1(rounded_mantissa0_carry_i_8__1_n_0),
        .I2(rounded_mantissa0_carry_i_9_n_0),
        .I3(\result_OBUF[22]_inst_i_8_n_0 ),
        .I4(\result_OBUF[22]_inst_i_9_n_0 ),
        .I5(\result_OBUF[22]_inst_i_10_n_0 ),
        .O(\result_OBUF[22]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \result_OBUF[22]_inst_i_5 
       (.I0(\result_OBUF[22]_inst_i_11_n_0 ),
        .I1(rounded_mantissa0_carry_i_4__4_n_0),
        .I2(rounded_mantissa0_carry_i_5__3_n_0),
        .I3(rounded_mantissa0_carry_i_3__3_n_0),
        .O(\result_OBUF[22]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0100FFFF)) 
    \result_OBUF[22]_inst_i_6 
       (.I0(\result_OBUF[22]_inst_i_12_n_0 ),
        .I1(\result_OBUF[22]_inst_i_13_n_0 ),
        .I2(\result_OBUF[22]_inst_i_14_n_0 ),
        .I3(rounded_mantissa0_carry_i_6__2_n_0),
        .I4(\result_OBUF[22]_inst_i_15_n_0 ),
        .O(\result_OBUF[22]_inst_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \result_OBUF[22]_inst_i_7 
       (.I0(rounded_mantissa0_carry_i_7_n_0),
        .I1(rounded_mantissa0_carry_i_6_n_0),
        .I2(rounded_mantissa0_carry_i_8__0_n_0),
        .I3(rounded_mantissa0_carry_i_7__0_n_0),
        .O(\result_OBUF[22]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFEFEAEFE)) 
    \result_OBUF[22]_inst_i_8 
       (.I0(rounded_mantissa0_carry_i_6__2_n_0),
        .I1(\result_OBUF[22]_inst_i_16_n_0 ),
        .I2(underflow_OBUF_inst_i_2_n_0),
        .I3(rounded_mantissa0_carry_i_24__1_0),
        .I4(rounded_mantissa0_carry_i_13__3_n_0),
        .O(\result_OBUF[22]_inst_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \result_OBUF[22]_inst_i_9 
       (.I0(rounded_mantissa0_carry_i_8__3_n_0),
        .I1(rounded_mantissa0_carry_i_5__1_n_0),
        .I2(rounded_mantissa0_carry_i_6__0_n_0),
        .I3(rounded_mantissa0_carry_i_7__1_n_0),
        .O(\result_OBUF[22]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h5555555504040444)) 
    \result_OBUF[23]_inst_i_1 
       (.I0(op_IBUF[1]),
        .I1(\result_OBUF[30]_inst_i_5_n_0 ),
        .I2(\result_OBUF[30]_inst_i_3_n_0 ),
        .I3(\result_OBUF[30]_inst_i_4_n_0 ),
        .I4(\result_OBUF[30]_inst_i_2_n_0 ),
        .I5(\result[23] ),
        .O(result_OBUF[23]));
  LUT6 #(
    .INIT(64'h5555555544454444)) 
    \result_OBUF[24]_inst_i_1 
       (.I0(op_IBUF[1]),
        .I1(\result_OBUF[24]_inst_i_2_n_0 ),
        .I2(\result_OBUF[30]_inst_i_4_n_0 ),
        .I3(\result_OBUF[30]_inst_i_2_n_0 ),
        .I4(\result_OBUF[30]_inst_i_5_n_0 ),
        .I5(\result[23] ),
        .O(result_OBUF[24]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h001A)) 
    \result_OBUF[24]_inst_i_2 
       (.I0(\result_OBUF[24]_inst_i_3_n_0 ),
        .I1(underflow_OBUF_inst_i_3_n_0),
        .I2(\result_OBUF[24]_inst_i_4_n_0 ),
        .I3(\result_OBUF[30]_inst_i_3_n_0 ),
        .O(\result_OBUF[24]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \result_OBUF[24]_inst_i_3 
       (.I0(\result_OBUF[30]_inst_i_23_n_0 ),
        .I1(\result_OBUF[30]_inst_i_30_n_0 ),
        .I2(\result_OBUF[30]_inst_i_31_n_0 ),
        .I3(\result_OBUF[30]_inst_i_41_n_0 ),
        .I4(\result_OBUF[30]_inst_i_40_n_0 ),
        .O(\result_OBUF[24]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h666600F0)) 
    \result_OBUF[24]_inst_i_4 
       (.I0(\norm/p_0_in ),
        .I1(\b[24] ),
        .I2(\norm/exponent_out0 [1]),
        .I3(CO),
        .I4(underflow_OBUF_inst_i_2_n_0),
        .O(\result_OBUF[24]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5555555544454444)) 
    \result_OBUF[25]_inst_i_1 
       (.I0(op_IBUF[1]),
        .I1(\result_OBUF[25]_inst_i_2_n_0 ),
        .I2(\result_OBUF[30]_inst_i_4_n_0 ),
        .I3(\result_OBUF[30]_inst_i_2_n_0 ),
        .I4(\result_OBUF[30]_inst_i_5_n_0 ),
        .I5(\result[23] ),
        .O(result_OBUF[25]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \result_OBUF[25]_inst_i_2 
       (.I0(\result_OBUF[28]_inst_i_3_n_0 ),
        .I1(\result_OBUF[28]_inst_i_4_n_0 ),
        .I2(\result_OBUF[30]_inst_i_3_n_0 ),
        .O(\result_OBUF[25]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5555555544454444)) 
    \result_OBUF[26]_inst_i_1 
       (.I0(op_IBUF[1]),
        .I1(\result_OBUF[26]_inst_i_2_n_0 ),
        .I2(\result_OBUF[30]_inst_i_4_n_0 ),
        .I3(\result_OBUF[30]_inst_i_2_n_0 ),
        .I4(\result_OBUF[30]_inst_i_5_n_0 ),
        .I5(\result[23] ),
        .O(result_OBUF[26]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000E01)) 
    \result_OBUF[26]_inst_i_2 
       (.I0(\result_OBUF[26]_inst_i_3_n_0 ),
        .I1(\result_OBUF[28]_inst_i_3_n_0 ),
        .I2(underflow_OBUF_inst_i_3_n_0),
        .I3(\result_OBUF[30]_inst_i_14_n_0 ),
        .I4(\result_OBUF[30]_inst_i_3_n_0 ),
        .O(\result_OBUF[26]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA9FFA900A9FFA9FF)) 
    \result_OBUF[26]_inst_i_3 
       (.I0(mantissa_out1_carry_i_12_n_0),
        .I1(\b[24] ),
        .I2(\norm/p_0_in ),
        .I3(underflow_OBUF_inst_i_2_n_0),
        .I4(CO),
        .I5(\norm/exponent_out0 [2]),
        .O(\result_OBUF[26]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5555555544454444)) 
    \result_OBUF[27]_inst_i_1 
       (.I0(op_IBUF[1]),
        .I1(\result_OBUF[27]_inst_i_2_n_0 ),
        .I2(\result_OBUF[30]_inst_i_4_n_0 ),
        .I3(\result_OBUF[30]_inst_i_2_n_0 ),
        .I4(\result_OBUF[30]_inst_i_5_n_0 ),
        .I5(\result[23] ),
        .O(result_OBUF[27]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h54550100)) 
    \result_OBUF[27]_inst_i_2 
       (.I0(\result_OBUF[30]_inst_i_3_n_0 ),
        .I1(\result_OBUF[28]_inst_i_3_n_0 ),
        .I2(\result_OBUF[28]_inst_i_4_n_0 ),
        .I3(\result_OBUF[30]_inst_i_14_n_0 ),
        .I4(\result_OBUF[30]_inst_i_8_n_0 ),
        .O(\result_OBUF[27]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5555555544454444)) 
    \result_OBUF[28]_inst_i_1 
       (.I0(op_IBUF[1]),
        .I1(\result_OBUF[28]_inst_i_2_n_0 ),
        .I2(\result_OBUF[30]_inst_i_4_n_0 ),
        .I3(\result_OBUF[30]_inst_i_2_n_0 ),
        .I4(\result_OBUF[30]_inst_i_5_n_0 ),
        .I5(\result[23] ),
        .O(result_OBUF[28]));
  LUT6 #(
    .INIT(64'h00000000EFFF1000)) 
    \result_OBUF[28]_inst_i_2 
       (.I0(\result_OBUF[28]_inst_i_3_n_0 ),
        .I1(\result_OBUF[28]_inst_i_4_n_0 ),
        .I2(\result_OBUF[30]_inst_i_14_n_0 ),
        .I3(\result_OBUF[30]_inst_i_8_n_0 ),
        .I4(overflow_OBUF_inst_i_3_n_0),
        .I5(\result_OBUF[30]_inst_i_3_n_0 ),
        .O(\result_OBUF[28]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFFFFFF)) 
    \result_OBUF[28]_inst_i_3 
       (.I0(\result_OBUF[30]_inst_i_40_n_0 ),
        .I1(\result_OBUF[30]_inst_i_41_n_0 ),
        .I2(\result_OBUF[30]_inst_i_31_n_0 ),
        .I3(\result_OBUF[30]_inst_i_30_n_0 ),
        .I4(\result_OBUF[30]_inst_i_23_n_0 ),
        .I5(\result_OBUF[24]_inst_i_4_n_0 ),
        .O(\result_OBUF[28]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \result_OBUF[28]_inst_i_4 
       (.I0(underflow_OBUF_inst_i_3_n_0),
        .I1(\result_OBUF[26]_inst_i_3_n_0 ),
        .O(\result_OBUF[28]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5555555544454444)) 
    \result_OBUF[29]_inst_i_1 
       (.I0(op_IBUF[1]),
        .I1(\result_OBUF[29]_inst_i_2_n_0 ),
        .I2(\result_OBUF[30]_inst_i_4_n_0 ),
        .I3(\result_OBUF[30]_inst_i_2_n_0 ),
        .I4(\result_OBUF[30]_inst_i_5_n_0 ),
        .I5(\result[23] ),
        .O(result_OBUF[29]));
  LUT6 #(
    .INIT(64'h5155555504000000)) 
    \result_OBUF[29]_inst_i_2 
       (.I0(\result_OBUF[30]_inst_i_3_n_0 ),
        .I1(overflow_OBUF_inst_i_3_n_0),
        .I2(\result_OBUF[30]_inst_i_15_n_0 ),
        .I3(\result_OBUF[30]_inst_i_14_n_0 ),
        .I4(\result_OBUF[30]_inst_i_8_n_0 ),
        .I5(\result_OBUF[30]_inst_i_9_n_0 ),
        .O(\result_OBUF[29]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555551)) 
    \result_OBUF[2]_inst_i_1 
       (.I0(\result_OBUF[21]_inst_i_2_n_0 ),
        .I1(\result_OBUF[30]_inst_i_5_n_0 ),
        .I2(\result_OBUF[30]_inst_i_2_n_0 ),
        .I3(\result_OBUF[21]_inst_i_3_n_0 ),
        .I4(\result_OBUF[21]_inst_i_4_n_0 ),
        .I5(\result_OBUF[2]_inst_i_2_n_0 ),
        .O(result_OBUF[2]));
  LUT5 #(
    .INIT(32'h8B88BBBB)) 
    \result_OBUF[2]_inst_i_2 
       (.I0(rounded_mantissa0_carry_i_9_n_0),
        .I1(\result_OBUF[22]_inst_i_6_n_0 ),
        .I2(\result_OBUF[22]_inst_i_5_n_0 ),
        .I3(\result_OBUF[22]_inst_i_4_n_0 ),
        .I4(data0[1]),
        .O(\result_OBUF[2]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5555555501110101)) 
    \result_OBUF[30]_inst_i_1 
       (.I0(op_IBUF[1]),
        .I1(\result_OBUF[30]_inst_i_2_n_0 ),
        .I2(\result_OBUF[30]_inst_i_3_n_0 ),
        .I3(\result_OBUF[30]_inst_i_4_n_0 ),
        .I4(\result_OBUF[30]_inst_i_5_n_0 ),
        .I5(\result[23] ),
        .O(result_OBUF[30]));
  LUT6 #(
    .INIT(64'h9AFF9AFF9A009AFF)) 
    \result_OBUF[30]_inst_i_10 
       (.I0(\result_OBUF[30]_inst_i_27_n_0 ),
        .I1(\result_OBUF[30]_inst_i_25_n_0 ),
        .I2(\result_OBUF[30]_inst_i_26_n_0 ),
        .I3(underflow_OBUF_inst_i_2_n_0),
        .I4(\norm/exponent_out0 [7]),
        .I5(CO),
        .O(\result_OBUF[30]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF20DFDF)) 
    \result_OBUF[30]_inst_i_13 
       (.I0(\result_OBUF[30]_inst_i_21_n_0 ),
        .I1(\result_OBUF[30]_inst_i_22_n_0 ),
        .I2(\result_OBUF[30]_inst_i_23_n_0 ),
        .I3(underflow_OBUF_inst_i_3_n_0),
        .I4(\result_OBUF[24]_inst_i_4_n_0 ),
        .I5(\result_OBUF[21]_inst_i_6_n_0 ),
        .O(\result_OBUF[30]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h02F202F202F2F202)) 
    \result_OBUF[30]_inst_i_14 
       (.I0(\norm/exponent_out0 [3]),
        .I1(CO),
        .I2(underflow_OBUF_inst_i_2_n_0),
        .I3(mantissa_out1_carry_i_14_n_0),
        .I4(\result_OBUF[30]_inst_i_29_n_0 ),
        .I5(mantissa_out1_carry_i_12_n_0),
        .O(\result_OBUF[30]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF7FFFF)) 
    \result_OBUF[30]_inst_i_15 
       (.I0(\result_OBUF[24]_inst_i_4_n_0 ),
        .I1(\result_OBUF[30]_inst_i_23_n_0 ),
        .I2(\result_OBUF[30]_inst_i_30_n_0 ),
        .I3(\result_OBUF[30]_inst_i_31_n_0 ),
        .I4(\result_OBUF[30]_inst_i_21_n_0 ),
        .I5(\result_OBUF[28]_inst_i_4_n_0 ),
        .O(\result_OBUF[30]_inst_i_15_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result_OBUF[30]_inst_i_16 
       (.CI(1'b0),
        .CO({\result_OBUF[30]_inst_i_16_n_0 ,\result_OBUF[30]_inst_i_16_n_1 ,\result_OBUF[30]_inst_i_16_n_2 ,\result_OBUF[30]_inst_i_16_n_3 }),
        .CYINIT(1'b1),
        .DI({\result_OBUF[30]_inst_i_32_n_0 ,\result_OBUF[30]_inst_i_33_n_0 ,\result_OBUF[30]_inst_i_34_n_0 ,\result_OBUF[30]_inst_i_35_n_0 }),
        .O(\norm/exponent_out0 [3:0]),
        .S({\result_OBUF[30]_inst_i_36_n_0 ,\result_OBUF[30]_inst_i_37_n_0 ,\result_OBUF[30]_inst_i_38_n_0 ,\result_OBUF[30]_inst_i_39_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \result_OBUF[30]_inst_i_17 
       (.I0(\result_OBUF[30]_inst_i_40_n_0 ),
        .I1(\result_OBUF[30]_inst_i_41_n_0 ),
        .I2(\result_OBUF[30]_inst_i_31_n_0 ),
        .I3(\result_OBUF[30]_inst_i_30_n_0 ),
        .O(\result_OBUF[30]_inst_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF7FFFFFFF8000)) 
    \result_OBUF[30]_inst_i_2 
       (.I0(overflow_OBUF_inst_i_3_n_0),
        .I1(\result_OBUF[30]_inst_i_7_n_0 ),
        .I2(\result_OBUF[30]_inst_i_8_n_0 ),
        .I3(\result_OBUF[30]_inst_i_9_n_0 ),
        .I4(underflow_OBUF_inst_i_3_n_0),
        .I5(\result_OBUF[30]_inst_i_10_n_0 ),
        .O(\result_OBUF[30]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \result_OBUF[30]_inst_i_21 
       (.I0(\result_OBUF[30]_inst_i_42_n_0 ),
        .I1(\result_OBUF[30]_inst_i_43_n_0 ),
        .I2(rounded_mantissa0_carry_i_5_n_0),
        .I3(rounded_mantissa0_carry_i_6__3_n_0),
        .I4(\result_OBUF[30]_inst_i_44_n_0 ),
        .I5(\result_OBUF[30]_inst_i_45_n_0 ),
        .O(\result_OBUF[30]_inst_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \result_OBUF[30]_inst_i_22 
       (.I0(\result_OBUF[30]_inst_i_46_n_0 ),
        .I1(\result_OBUF[30]_inst_i_47_n_0 ),
        .I2(\result_OBUF[30]_inst_i_48_n_0 ),
        .I3(rounded_mantissa0_carry_i_8__3_n_0),
        .I4(rounded_mantissa0_carry_i_8__2_n_0),
        .I5(rounded_mantissa0_carry_i_6__0_n_0),
        .O(\result_OBUF[30]_inst_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h55040004)) 
    \result_OBUF[30]_inst_i_23 
       (.I0(underflow_OBUF_inst_i_3_n_0),
        .I1(\norm/exponent_out0 [0]),
        .I2(CO),
        .I3(underflow_OBUF_inst_i_2_n_0),
        .I4(\norm/p_0_in ),
        .O(\result_OBUF[30]_inst_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \result_OBUF[30]_inst_i_24 
       (.I0(mantissa_out1_carry_i_8_n_0),
        .I1(mantissa_out1_carry_i_12_n_0),
        .I2(\b[24] ),
        .I3(\norm/p_0_in ),
        .I4(mantissa_out1_carry_i_14_n_0),
        .O(\result_OBUF[30]_inst_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \result_OBUF[30]_inst_i_25 
       (.I0(underflow_OBUF_inst_i_11_0),
        .I1(b_IBUF[29]),
        .I2(final_exp1__0__0),
        .I3(a_IBUF[29]),
        .O(\result_OBUF[30]_inst_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \result_OBUF[30]_inst_i_26 
       (.I0(mantissa_out1_carry_i_10_n_0),
        .I1(mantissa_out1_carry_i_14_n_0),
        .I2(\norm/p_0_in ),
        .I3(\b[24] ),
        .I4(mantissa_out1_carry_i_12_n_0),
        .I5(mantissa_out1_carry_i_8_n_0),
        .O(\result_OBUF[30]_inst_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \result_OBUF[30]_inst_i_27 
       (.I0(underflow_OBUF_inst_i_11_0),
        .I1(b_IBUF[30]),
        .I2(final_exp1__0__0),
        .I3(a_IBUF[30]),
        .O(\result_OBUF[30]_inst_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h5F335FFF00000000)) 
    \result_OBUF[30]_inst_i_29 
       (.I0(a_IBUF[23]),
        .I1(b_IBUF[23]),
        .I2(a_IBUF[24]),
        .I3(final_exp1__0__0),
        .I4(b_IBUF[24]),
        .I5(underflow_OBUF_inst_i_11_0),
        .O(\result_OBUF[30]_inst_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h22F2)) 
    \result_OBUF[30]_inst_i_3 
       (.I0(\result_OBUF[23]_inst_i_1_1 ),
        .I1(\result_OBUF[23]_inst_i_1_2 ),
        .I2(\result_OBUF[23]_inst_i_1_3 ),
        .I3(\result_OBUF[23]_inst_i_1_0 ),
        .O(\result_OBUF[30]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \result_OBUF[30]_inst_i_30 
       (.I0(rounded_mantissa0_carry_i_3__3_n_0),
        .I1(rounded_mantissa0_carry_i_5__3_n_0),
        .I2(rounded_mantissa0_carry_i_7__0_n_0),
        .I3(rounded_mantissa0_carry_i_6__3_n_0),
        .I4(rounded_mantissa0_carry_i_4__4_n_0),
        .O(\result_OBUF[30]_inst_i_30_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \result_OBUF[30]_inst_i_31 
       (.I0(rounded_mantissa0_carry_i_6__0_n_0),
        .I1(rounded_mantissa0_carry_i_8__2_n_0),
        .I2(rounded_mantissa0_carry_i_8__3_n_0),
        .I3(\result_OBUF[30]_inst_i_48_n_0 ),
        .O(\result_OBUF[30]_inst_i_31_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_OBUF[30]_inst_i_32 
       (.I0(mantissa_out1_carry_i_14_n_0),
        .O(\result_OBUF[30]_inst_i_32_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_OBUF[30]_inst_i_33 
       (.I0(mantissa_out1_carry_i_12_n_0),
        .O(\result_OBUF[30]_inst_i_33_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_OBUF[30]_inst_i_34 
       (.I0(\b[24] ),
        .O(\result_OBUF[30]_inst_i_34_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_OBUF[30]_inst_i_35 
       (.I0(\norm/p_0_in ),
        .O(\result_OBUF[30]_inst_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result_OBUF[30]_inst_i_36 
       (.I0(mantissa_out1_carry_i_14_n_0),
        .I1(mantissa_out1_carry_i_13_n_0),
        .O(\result_OBUF[30]_inst_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[30]_inst_i_37 
       (.I0(mantissa_out1_carry_i_12_n_0),
        .I1(mantissa_out1_carry_i_11_n_0),
        .O(\result_OBUF[30]_inst_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result_OBUF[30]_inst_i_38 
       (.I0(\b[24] ),
        .I1(mantissa_out1_carry_i_15_n_0),
        .O(\result_OBUF[30]_inst_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result_OBUF[30]_inst_i_39 
       (.I0(\norm/p_0_in ),
        .I1(mantissa_out1_carry_i_17_n_0),
        .O(\result_OBUF[30]_inst_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hFFDFFDFD)) 
    \result_OBUF[30]_inst_i_4 
       (.I0(overflow_OBUF_inst_i_3_n_0),
        .I1(\result_OBUF[30]_inst_i_13_n_0 ),
        .I2(\result_OBUF[30]_inst_i_14_n_0 ),
        .I3(underflow_OBUF_inst_i_3_n_0),
        .I4(\result_OBUF[30]_inst_i_15_n_0 ),
        .O(\result_OBUF[30]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \result_OBUF[30]_inst_i_40 
       (.I0(rounded_mantissa0_carry_i_8__1_n_0),
        .I1(rounded_mantissa0_carry_i_6__1_n_0),
        .I2(rounded_mantissa0_carry_i_6_n_0),
        .I3(rounded_mantissa0_carry_i_8__0_n_0),
        .I4(\result_OBUF[30]_inst_i_44_n_0 ),
        .O(\result_OBUF[30]_inst_i_40_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \result_OBUF[30]_inst_i_41 
       (.I0(rounded_mantissa0_carry_i_6__3_n_0),
        .I1(rounded_mantissa0_carry_i_5_n_0),
        .I2(rounded_mantissa0_carry_i_7__0_n_0),
        .I3(rounded_mantissa0_carry_i_5__1_n_0),
        .I4(\result_OBUF[30]_inst_i_42_n_0 ),
        .O(\result_OBUF[30]_inst_i_41_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \result_OBUF[30]_inst_i_42 
       (.I0(rounded_mantissa0_carry_i_7__2_n_0),
        .I1(rounded_mantissa0_carry_i_9_n_0),
        .I2(\result_OBUF[22]_inst_i_8_n_0 ),
        .I3(rounded_mantissa0_carry_i_7__3_n_0),
        .O(\result_OBUF[30]_inst_i_42_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h01014501)) 
    \result_OBUF[30]_inst_i_43 
       (.I0(rounded_mantissa0_carry_i_7__0_n_0),
        .I1(underflow_OBUF_inst_i_2_n_0),
        .I2(rounded_mantissa0_carry_i_10_n_0),
        .I3(rounded_mantissa0_carry_i_9__3_n_0),
        .I4(rounded_mantissa0_carry_i_13__3_n_0),
        .O(\result_OBUF[30]_inst_i_43_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \result_OBUF[30]_inst_i_44 
       (.I0(rounded_mantissa0_carry_i_8__3_n_0),
        .I1(rounded_mantissa0_carry_i_5__0_n_0),
        .I2(rounded_mantissa0_carry_i_7_n_0),
        .I3(rounded_mantissa0_carry_i_7__1_n_0),
        .O(\result_OBUF[30]_inst_i_44_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \result_OBUF[30]_inst_i_45 
       (.I0(rounded_mantissa0_carry_i_8__0_n_0),
        .I1(rounded_mantissa0_carry_i_6_n_0),
        .I2(rounded_mantissa0_carry_i_6__1_n_0),
        .I3(rounded_mantissa0_carry_i_8__1_n_0),
        .O(\result_OBUF[30]_inst_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFCFFFCAA)) 
    \result_OBUF[30]_inst_i_46 
       (.I0(\result_OBUF[30]_inst_i_49_n_0 ),
        .I1(\result_OBUF[30]_inst_i_50_n_0 ),
        .I2(\result_OBUF[30]_inst_i_51_n_0 ),
        .I3(underflow_OBUF_inst_i_2_n_0),
        .I4(\result_OBUF[30]_inst_i_52_n_0 ),
        .I5(rounded_mantissa0_carry_i_7__0_n_0),
        .O(\result_OBUF[30]_inst_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAAFCCCCAAAF)) 
    \result_OBUF[30]_inst_i_47 
       (.I0(\result_OBUF[30]_inst_i_53_n_0 ),
        .I1(\result_OBUF[30]_inst_i_54_n_0 ),
        .I2(\result_OBUF[30]_inst_i_55_n_0 ),
        .I3(\result_OBUF[22]_inst_i_2_0 ),
        .I4(underflow_OBUF_inst_i_2_n_0),
        .I5(\result_OBUF[30]_inst_i_56_n_0 ),
        .O(\result_OBUF[30]_inst_i_47_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \result_OBUF[30]_inst_i_48 
       (.I0(\result_OBUF[22]_inst_i_6_n_0 ),
        .I1(rounded_mantissa0_carry_i_6_n_0),
        .I2(rounded_mantissa0_carry_i_8_n_0),
        .I3(rounded_mantissa0_carry_i_7__2_n_0),
        .O(\result_OBUF[30]_inst_i_48_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFB8)) 
    \result_OBUF[30]_inst_i_49 
       (.I0(\result_OBUF[30]_inst_i_57_n_0 ),
        .I1(mantissa_out1_carry_i_17_n_0),
        .I2(\result_OBUF[30]_inst_i_58_n_0 ),
        .I3(CO),
        .I4(\result_OBUF[30]_inst_i_46_0 ),
        .O(\result_OBUF[30]_inst_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF747700008B88)) 
    \result_OBUF[30]_inst_i_5 
       (.I0(\norm/p_0_in ),
        .I1(underflow_OBUF_inst_i_2_n_0),
        .I2(CO),
        .I3(\norm/exponent_out0 [0]),
        .I4(underflow_OBUF_inst_i_3_n_0),
        .I5(\result_OBUF[30]_inst_i_17_n_0 ),
        .O(\result_OBUF[30]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \result_OBUF[30]_inst_i_50 
       (.I0(rounded_mantissa0_carry_i_13__3_n_0),
        .I1(\a[31]_1 ),
        .O(\result_OBUF[30]_inst_i_50_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \result_OBUF[30]_inst_i_51 
       (.I0(rounded_mantissa0_carry_i_13__3_n_0),
        .I1(\a[31]_0 ),
        .O(\result_OBUF[30]_inst_i_51_n_0 ));
  LUT5 #(
    .INIT(32'h55554540)) 
    \result_OBUF[30]_inst_i_52 
       (.I0(\result_OBUF[30]_inst_i_46_1 ),
        .I1(\result_OBUF[30]_inst_i_59_n_0 ),
        .I2(mantissa_out1_carry_i_17_n_0),
        .I3(rounded_mantissa0_carry_i_30_n_0),
        .I4(CO),
        .O(\result_OBUF[30]_inst_i_52_n_0 ));
  LUT5 #(
    .INIT(32'h55554540)) 
    \result_OBUF[30]_inst_i_53 
       (.I0(rounded_mantissa0_carry_i_10__1_n_0),
        .I1(\result_OBUF[30]_inst_i_58_n_0 ),
        .I2(mantissa_out1_carry_i_17_n_0),
        .I3(\result_OBUF[30]_inst_i_59_n_0 ),
        .I4(CO),
        .O(\result_OBUF[30]_inst_i_53_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \result_OBUF[30]_inst_i_54 
       (.I0(rounded_mantissa0_carry_i_13__3_n_0),
        .I1(\a[31] ),
        .O(\result_OBUF[30]_inst_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h0000000D0D0D0D0D)) 
    \result_OBUF[30]_inst_i_55 
       (.I0(\result_OBUF[30]_inst_i_57_n_0 ),
        .I1(mantissa_out1_carry_i_17_n_0),
        .I2(CO),
        .I3(mantissa_out1_carry_i_15_n_0),
        .I4(rounded_mantissa0_carry_i_23__1_n_0),
        .I5(\result_OBUF[30]_inst_i_60_n_0 ),
        .O(\result_OBUF[30]_inst_i_55_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \result_OBUF[30]_inst_i_56 
       (.I0(rounded_mantissa0_carry_i_13__3_n_0),
        .I1(\b[31] ),
        .O(\result_OBUF[30]_inst_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h8F80AFAF8F80A0A0)) 
    \result_OBUF[30]_inst_i_57 
       (.I0(\result_OBUF[30]_inst_i_61_n_0 ),
        .I1(rounded_mantissa0_carry_i_43__0_n_0),
        .I2(mantissa_out1_carry_i_15_n_0),
        .I3(rounded_mantissa0_carry_i_35__0_n_0),
        .I4(mantissa_out1_carry_i_11_n_0),
        .I5(\result_OBUF[30]_inst_i_62_n_0 ),
        .O(\result_OBUF[30]_inst_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h8F80AFAF8F80A0A0)) 
    \result_OBUF[30]_inst_i_58 
       (.I0(\result_OBUF[30]_inst_i_63_n_0 ),
        .I1(rounded_mantissa0_carry_i_33_n_0),
        .I2(mantissa_out1_carry_i_15_n_0),
        .I3(rounded_mantissa0_carry_i_34_n_0),
        .I4(mantissa_out1_carry_i_11_n_0),
        .I5(rounded_mantissa0_carry_i_42_n_0),
        .O(\result_OBUF[30]_inst_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[30]_inst_i_59 
       (.I0(rounded_mantissa0_carry_i_35__0_n_0),
        .I1(\result_OBUF[30]_inst_i_62_n_0 ),
        .I2(mantissa_out1_carry_i_15_n_0),
        .I3(rounded_mantissa0_carry_i_36__1_n_0),
        .I4(mantissa_out1_carry_i_11_n_0),
        .I5(rounded_mantissa0_carry_i_43__0_n_0),
        .O(\result_OBUF[30]_inst_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hC000C040CC44CC44)) 
    \result_OBUF[30]_inst_i_60 
       (.I0(mantissa_out1_carry_i_77_n_0),
        .I1(\result_OBUF[30]_inst_i_64_n_0 ),
        .I2(rounded_mantissa0_carry_i_38__0_n_0),
        .I3(mantissa_out1_carry_i_13_n_0),
        .I4(underflow_OBUF_inst_i_24_n_0),
        .I5(mantissa_out1_carry_i_11_n_0),
        .O(\result_OBUF[30]_inst_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h0D000D0D0D0D0D0D)) 
    \result_OBUF[30]_inst_i_61 
       (.I0(rounded_mantissa0_carry_i_14__3_n_0),
        .I1(mantissa_out1_carry_i_9_n_0),
        .I2(\a[31] ),
        .I3(rounded_mantissa0_carry_i_55_n_0),
        .I4(rounded_mantissa0_carry_i_70_n_0),
        .I5(rounded_mantissa0_carry_i_9__3_n_0),
        .O(\result_OBUF[30]_inst_i_61_n_0 ));
  LUT6 #(
    .INIT(64'h0D000D0D0D0D0D0D)) 
    \result_OBUF[30]_inst_i_62 
       (.I0(mantissa_out1_carry_i_76_n_0),
        .I1(mantissa_out1_carry_i_9_n_0),
        .I2(underflow_OBUF_inst_i_16_n_0),
        .I3(rounded_mantissa0_carry_i_55_n_0),
        .I4(rounded_mantissa0_carry_i_70_n_0),
        .I5(underflow_OBUF_inst_i_23_n_0),
        .O(\result_OBUF[30]_inst_i_62_n_0 ));
  LUT6 #(
    .INIT(64'h0D000D0D0D0D0D0D)) 
    \result_OBUF[30]_inst_i_63 
       (.I0(rounded_mantissa0_carry_i_42__2_n_0),
        .I1(mantissa_out1_carry_i_9_n_0),
        .I2(\a[31]_0 ),
        .I3(rounded_mantissa0_carry_i_55_n_0),
        .I4(rounded_mantissa0_carry_i_70_n_0),
        .I5(underflow_OBUF_inst_i_25_n_0),
        .O(\result_OBUF[30]_inst_i_63_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \result_OBUF[30]_inst_i_64 
       (.I0(\a[31]_1 ),
        .I1(mantissa_out1_carry_i_9_n_0),
        .I2(underflow_OBUF_inst_i_20_n_0),
        .O(\result_OBUF[30]_inst_i_64_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \result_OBUF[30]_inst_i_7 
       (.I0(\result_OBUF[30]_inst_i_14_n_0 ),
        .I1(\result_OBUF[28]_inst_i_4_n_0 ),
        .I2(\result_OBUF[30]_inst_i_21_n_0 ),
        .I3(\result_OBUF[30]_inst_i_22_n_0 ),
        .I4(\result_OBUF[30]_inst_i_23_n_0 ),
        .I5(\result_OBUF[24]_inst_i_4_n_0 ),
        .O(\result_OBUF[30]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00045504)) 
    \result_OBUF[30]_inst_i_8 
       (.I0(underflow_OBUF_inst_i_3_n_0),
        .I1(\norm/exponent_out0 [4]),
        .I2(CO),
        .I3(underflow_OBUF_inst_i_2_n_0),
        .I4(\result_OBUF[30]_inst_i_24_n_0 ),
        .O(\result_OBUF[30]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000999900F0)) 
    \result_OBUF[30]_inst_i_9 
       (.I0(\result_OBUF[30]_inst_i_25_n_0 ),
        .I1(\result_OBUF[30]_inst_i_26_n_0 ),
        .I2(\norm/exponent_out0 [6]),
        .I3(CO),
        .I4(underflow_OBUF_inst_i_2_n_0),
        .I5(underflow_OBUF_inst_i_3_n_0),
        .O(\result_OBUF[30]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF07)) 
    \result_OBUF[31]_inst_i_1 
       (.I0(\result_OBUF[31]_inst_i_2_n_0 ),
        .I1(\result_OBUF[31]_inst_i_3_n_0 ),
        .I2(\result_OBUF[31]_inst_i_4_n_0 ),
        .I3(a_IBUF[31]),
        .I4(\result_OBUF[31]_inst_i_5_n_0 ),
        .I5(\result_OBUF[31]_inst_i_6_n_0 ),
        .O(result_OBUF[31]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \result_OBUF[31]_inst_i_2 
       (.I0(underflow_OBUF_inst_i_2_0),
        .I1(underflow_OBUF_inst_i_2_1),
        .O(\result_OBUF[31]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \result_OBUF[31]_inst_i_3 
       (.I0(\result_OBUF[23]_inst_i_1_2 ),
        .I1(\result_OBUF[31]_inst_i_1_1 ),
        .O(\result_OBUF[31]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \result_OBUF[31]_inst_i_4 
       (.I0(a_IBUF[27]),
        .I1(a_IBUF[28]),
        .I2(a_IBUF[23]),
        .I3(a_IBUF[24]),
        .I4(\result_OBUF[31]_inst_i_1_0 ),
        .I5(\result_OBUF[23]_inst_i_1_0 ),
        .O(\result_OBUF[31]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAEBAAEBAAEB)) 
    \result_OBUF[31]_inst_i_5 
       (.I0(op_IBUF[1]),
        .I1(op_IBUF[0]),
        .I2(b_IBUF[31]),
        .I3(\result_OBUF[31]_inst_i_4_n_0 ),
        .I4(underflow_OBUF_inst_i_2_0),
        .I5(\result_OBUF[31]_inst_i_3_n_0 ),
        .O(\result_OBUF[31]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h40040440FFFFFFFF)) 
    \result_OBUF[31]_inst_i_6 
       (.I0(\result_OBUF[31]_inst_i_3_n_0 ),
        .I1(\result_OBUF[31]_inst_i_4_n_0 ),
        .I2(b_IBUF[31]),
        .I3(op_IBUF[0]),
        .I4(a_IBUF[31]),
        .I5(underflow_OBUF_inst_i_11_0),
        .O(\result_OBUF[31]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555551)) 
    \result_OBUF[3]_inst_i_1 
       (.I0(\result_OBUF[21]_inst_i_2_n_0 ),
        .I1(\result_OBUF[30]_inst_i_5_n_0 ),
        .I2(\result_OBUF[30]_inst_i_2_n_0 ),
        .I3(\result_OBUF[21]_inst_i_3_n_0 ),
        .I4(\result_OBUF[21]_inst_i_4_n_0 ),
        .I5(\result_OBUF[3]_inst_i_2_n_0 ),
        .O(result_OBUF[3]));
  LUT5 #(
    .INIT(32'h8B88BBBB)) 
    \result_OBUF[3]_inst_i_2 
       (.I0(rounded_mantissa0_carry_i_8__1_n_0),
        .I1(\result_OBUF[22]_inst_i_6_n_0 ),
        .I2(\result_OBUF[22]_inst_i_5_n_0 ),
        .I3(\result_OBUF[22]_inst_i_4_n_0 ),
        .I4(data0[2]),
        .O(\result_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555551)) 
    \result_OBUF[4]_inst_i_1 
       (.I0(\result_OBUF[21]_inst_i_2_n_0 ),
        .I1(\result_OBUF[30]_inst_i_5_n_0 ),
        .I2(\result_OBUF[30]_inst_i_2_n_0 ),
        .I3(\result_OBUF[21]_inst_i_3_n_0 ),
        .I4(\result_OBUF[21]_inst_i_4_n_0 ),
        .I5(\result_OBUF[4]_inst_i_2_n_0 ),
        .O(result_OBUF[4]));
  LUT5 #(
    .INIT(32'h8B88BBBB)) 
    \result_OBUF[4]_inst_i_2 
       (.I0(rounded_mantissa0_carry_i_7__0_n_0),
        .I1(\result_OBUF[22]_inst_i_6_n_0 ),
        .I2(\result_OBUF[22]_inst_i_5_n_0 ),
        .I3(\result_OBUF[22]_inst_i_4_n_0 ),
        .I4(data0[3]),
        .O(\result_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555551)) 
    \result_OBUF[5]_inst_i_1 
       (.I0(\result_OBUF[21]_inst_i_2_n_0 ),
        .I1(\result_OBUF[30]_inst_i_5_n_0 ),
        .I2(\result_OBUF[30]_inst_i_2_n_0 ),
        .I3(\result_OBUF[21]_inst_i_3_n_0 ),
        .I4(\result_OBUF[21]_inst_i_4_n_0 ),
        .I5(\result_OBUF[5]_inst_i_2_n_0 ),
        .O(result_OBUF[5]));
  LUT5 #(
    .INIT(32'h8B88BBBB)) 
    \result_OBUF[5]_inst_i_2 
       (.I0(rounded_mantissa0_carry_i_8__0_n_0),
        .I1(\result_OBUF[22]_inst_i_6_n_0 ),
        .I2(\result_OBUF[22]_inst_i_5_n_0 ),
        .I3(\result_OBUF[22]_inst_i_4_n_0 ),
        .I4(data0[4]),
        .O(\result_OBUF[5]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555551)) 
    \result_OBUF[6]_inst_i_1 
       (.I0(\result_OBUF[21]_inst_i_2_n_0 ),
        .I1(\result_OBUF[30]_inst_i_5_n_0 ),
        .I2(\result_OBUF[30]_inst_i_2_n_0 ),
        .I3(\result_OBUF[21]_inst_i_3_n_0 ),
        .I4(\result_OBUF[21]_inst_i_4_n_0 ),
        .I5(\result_OBUF[6]_inst_i_2_n_0 ),
        .O(result_OBUF[6]));
  LUT5 #(
    .INIT(32'h8B88BBBB)) 
    \result_OBUF[6]_inst_i_2 
       (.I0(rounded_mantissa0_carry_i_7_n_0),
        .I1(\result_OBUF[22]_inst_i_6_n_0 ),
        .I2(\result_OBUF[22]_inst_i_5_n_0 ),
        .I3(\result_OBUF[22]_inst_i_4_n_0 ),
        .I4(data0[5]),
        .O(\result_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555551)) 
    \result_OBUF[7]_inst_i_1 
       (.I0(\result_OBUF[21]_inst_i_2_n_0 ),
        .I1(\result_OBUF[30]_inst_i_5_n_0 ),
        .I2(\result_OBUF[30]_inst_i_2_n_0 ),
        .I3(\result_OBUF[21]_inst_i_3_n_0 ),
        .I4(\result_OBUF[21]_inst_i_4_n_0 ),
        .I5(\result_OBUF[7]_inst_i_2_n_0 ),
        .O(result_OBUF[7]));
  LUT5 #(
    .INIT(32'h8B88BBBB)) 
    \result_OBUF[7]_inst_i_2 
       (.I0(rounded_mantissa0_carry_i_6_n_0),
        .I1(\result_OBUF[22]_inst_i_6_n_0 ),
        .I2(\result_OBUF[22]_inst_i_5_n_0 ),
        .I3(\result_OBUF[22]_inst_i_4_n_0 ),
        .I4(data0[6]),
        .O(\result_OBUF[7]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555551)) 
    \result_OBUF[8]_inst_i_1 
       (.I0(\result_OBUF[21]_inst_i_2_n_0 ),
        .I1(\result_OBUF[30]_inst_i_5_n_0 ),
        .I2(\result_OBUF[30]_inst_i_2_n_0 ),
        .I3(\result_OBUF[21]_inst_i_3_n_0 ),
        .I4(\result_OBUF[21]_inst_i_4_n_0 ),
        .I5(\result_OBUF[8]_inst_i_2_n_0 ),
        .O(result_OBUF[8]));
  LUT5 #(
    .INIT(32'h8B88BBBB)) 
    \result_OBUF[8]_inst_i_2 
       (.I0(rounded_mantissa0_carry_i_5_n_0),
        .I1(\result_OBUF[22]_inst_i_6_n_0 ),
        .I2(\result_OBUF[22]_inst_i_5_n_0 ),
        .I3(\result_OBUF[22]_inst_i_4_n_0 ),
        .I4(data0[7]),
        .O(\result_OBUF[8]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555551)) 
    \result_OBUF[9]_inst_i_1 
       (.I0(\result_OBUF[21]_inst_i_2_n_0 ),
        .I1(\result_OBUF[30]_inst_i_5_n_0 ),
        .I2(\result_OBUF[30]_inst_i_2_n_0 ),
        .I3(\result_OBUF[21]_inst_i_3_n_0 ),
        .I4(\result_OBUF[21]_inst_i_4_n_0 ),
        .I5(\result_OBUF[9]_inst_i_2_n_0 ),
        .O(result_OBUF[9]));
  LUT5 #(
    .INIT(32'h8B88BBBB)) 
    \result_OBUF[9]_inst_i_2 
       (.I0(rounded_mantissa0_carry_i_8_n_0),
        .I1(\result_OBUF[22]_inst_i_6_n_0 ),
        .I2(\result_OBUF[22]_inst_i_5_n_0 ),
        .I3(\result_OBUF[22]_inst_i_4_n_0 ),
        .I4(data0[8]),
        .O(\result_OBUF[9]_inst_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    rounded_mantissa0_carry_i_1
       (.I0(rounded_mantissa0_carry_i_5_n_0),
        .O(rounded_mantissa0_carry_i_5_0[3]));
  LUT5 #(
    .INIT(32'h0000FFB8)) 
    rounded_mantissa0_carry_i_10
       (.I0(rounded_mantissa0_carry_i_17__0_n_0),
        .I1(mantissa_out1_carry_i_17_n_0),
        .I2(rounded_mantissa0_carry_i_18__0_n_0),
        .I3(CO),
        .I4(rounded_mantissa0_carry_i_19__1_n_0),
        .O(rounded_mantissa0_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'hBFB0BFBFBFB0B0B0)) 
    rounded_mantissa0_carry_i_10__0
       (.I0(rounded_mantissa0_carry_i_13__3_n_0),
        .I1(rounded_mantissa0_carry_i_24__1_0),
        .I2(underflow_OBUF_inst_i_2_n_0),
        .I3(rounded_mantissa0_carry_i_22__3_n_0),
        .I4(CO),
        .I5(rounded_mantissa0_carry_i_23_n_0),
        .O(rounded_mantissa0_carry_i_10__0_n_0));
  LUT4 #(
    .INIT(16'h0053)) 
    rounded_mantissa0_carry_i_10__1
       (.I0(\mantissa_out1_inferred__1/i__carry ),
        .I1(\mantissa_out1_inferred__1/i__carry_0 ),
        .I2(rounded_mantissa0_carry_i_53_0[0]),
        .I3(rounded_mantissa0_carry_i_54_0),
        .O(rounded_mantissa0_carry_i_10__1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    rounded_mantissa0_carry_i_10__2
       (.I0(rounded_mantissa0_carry_i_13__3_n_0),
        .I1(underflow_OBUF_inst_i_15_n_0),
        .O(rounded_mantissa0_carry_i_10__2_n_0));
  LUT6 #(
    .INIT(64'h0000000000FF4747)) 
    rounded_mantissa0_carry_i_10__4
       (.I0(rounded_mantissa0_carry_i_18__2_n_0),
        .I1(rounded_mantissa0_carry_i_53_0[1]),
        .I2(rounded_mantissa0_carry_i_19__2_n_0),
        .I3(rounded_mantissa0_carry_i_20__2_n_0),
        .I4(rounded_mantissa0_carry_i_53_0[0]),
        .I5(rounded_mantissa0_carry_i_54_0),
        .O(rounded_mantissa0_carry_i_10__4_n_0));
  LUT5 #(
    .INIT(32'h0000FFB8)) 
    rounded_mantissa0_carry_i_11
       (.I0(rounded_mantissa0_carry_i_18__0_n_0),
        .I1(mantissa_out1_carry_i_17_n_0),
        .I2(rounded_mantissa0_carry_i_20_n_0),
        .I3(CO),
        .I4(rounded_mantissa0_carry_i_21__3_n_0),
        .O(rounded_mantissa0_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rounded_mantissa0_carry_i_11__0
       (.I0(rounded_mantissa0_carry_i_23__1_n_0),
        .I1(rounded_mantissa0_carry_i_24__1_n_0),
        .I2(mantissa_out1_carry_i_17_n_0),
        .I3(rounded_mantissa0_carry_i_25__1_n_0),
        .I4(mantissa_out1_carry_i_15_n_0),
        .I5(rounded_mantissa0_carry_i_26__3_n_0),
        .O(rounded_mantissa0_carry_i_11__0_n_0));
  LUT6 #(
    .INIT(64'hBFBFB0BFBFBFBFBF)) 
    rounded_mantissa0_carry_i_11__1
       (.I0(rounded_mantissa0_carry_i_24__2_n_0),
        .I1(\mantissa_out1_inferred__1/i__carry__0 ),
        .I2(CO),
        .I3(mantissa_out1_carry_i_15_n_0),
        .I4(rounded_mantissa0_carry_i_26__0_n_0),
        .I5(mantissa_out1_carry_i_17_n_0),
        .O(rounded_mantissa0_carry_i_11__1_n_0));
  LUT6 #(
    .INIT(64'h08808008A88A8AA8)) 
    rounded_mantissa0_carry_i_11__3
       (.I0(underflow_OBUF_inst_i_4_n_0),
        .I1(\adder/data0 [16]),
        .I2(a_IBUF[31]),
        .I3(op_IBUF[0]),
        .I4(b_IBUF[31]),
        .I5(rounded_mantissa0_carry_i_6__0_0),
        .O(rounded_mantissa0_carry_i_11__3_n_0));
  LUT4 #(
    .INIT(16'h0151)) 
    rounded_mantissa0_carry_i_11__4
       (.I0(CO),
        .I1(rounded_mantissa0_carry_i_21_n_0),
        .I2(mantissa_out1_carry_i_17_n_0),
        .I3(rounded_mantissa0_carry_i_22_n_0),
        .O(rounded_mantissa0_carry_i_11__4_n_0));
  LUT5 #(
    .INIT(32'h55554540)) 
    rounded_mantissa0_carry_i_12
       (.I0(rounded_mantissa0_carry_i_23__3_n_0),
        .I1(rounded_mantissa0_carry_i_21_n_0),
        .I2(mantissa_out1_carry_i_17_n_0),
        .I3(rounded_mantissa0_carry_i_24_n_0),
        .I4(CO),
        .O(rounded_mantissa0_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rounded_mantissa0_carry_i_12__0
       (.I0(rounded_mantissa0_carry_i_23__2_n_0),
        .I1(rounded_mantissa0_carry_i_24__0_n_0),
        .I2(mantissa_out1_carry_i_17_n_0),
        .I3(rounded_mantissa0_carry_i_25_n_0),
        .I4(mantissa_out1_carry_i_15_n_0),
        .I5(rounded_mantissa0_carry_i_26__2_n_0),
        .O(rounded_mantissa0_carry_i_12__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    rounded_mantissa0_carry_i_12__1
       (.I0(rounded_mantissa0_carry_i_13__3_n_0),
        .I1(\result_OBUF[22]_inst_i_15_n_0 ),
        .O(rounded_mantissa0_carry_i_12__1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    rounded_mantissa0_carry_i_12__3
       (.I0(rounded_mantissa0_carry_i_13__3_n_0),
        .I1(underflow_OBUF_inst_i_25_n_0),
        .O(rounded_mantissa0_carry_i_12__3_n_0));
  LUT6 #(
    .INIT(64'h08808008A88A8AA8)) 
    rounded_mantissa0_carry_i_12__4
       (.I0(underflow_OBUF_inst_i_4_n_0),
        .I1(\adder/data0 [20]),
        .I2(a_IBUF[31]),
        .I3(op_IBUF[0]),
        .I4(b_IBUF[31]),
        .I5(rounded_mantissa0_carry_i_27__3_n_0),
        .O(\a[31]_0 ));
  LUT5 #(
    .INIT(32'h55554540)) 
    rounded_mantissa0_carry_i_13
       (.I0(rounded_mantissa0_carry_i_22__0_n_0),
        .I1(rounded_mantissa0_carry_i_20_n_0),
        .I2(mantissa_out1_carry_i_17_n_0),
        .I3(rounded_mantissa0_carry_i_23__0_n_0),
        .I4(CO),
        .O(rounded_mantissa0_carry_i_13_n_0));
  LUT6 #(
    .INIT(64'hAA08AAAAAA08AA08)) 
    rounded_mantissa0_carry_i_13__0
       (.I0(mantissa_out1_carry_i_11_n_0),
        .I1(underflow_OBUF_inst_i_24_n_0),
        .I2(mantissa_out1_carry_i_13_n_0),
        .I3(rounded_mantissa0_carry_i_17__3_n_0),
        .I4(mantissa_out1_carry_i_9_n_0),
        .I5(rounded_mantissa0_carry_i_24__1_0),
        .O(rounded_mantissa0_carry_i_13__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    rounded_mantissa0_carry_i_13__2
       (.I0(rounded_mantissa0_carry_i_13__3_n_0),
        .I1(mantissa_out1_carry_i_73_n_0),
        .O(rounded_mantissa0_carry_i_13__2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000600)) 
    rounded_mantissa0_carry_i_13__3
       (.I0(mantissa_out1_carry_i_10_n_0),
        .I1(rounded_mantissa0_carry_i_27__2_n_0),
        .I2(\result_OBUF[30]_inst_i_25_n_0 ),
        .I3(\norm/p_0_in ),
        .I4(\result_OBUF[30]_inst_i_27_n_0 ),
        .I5(rounded_mantissa0_carry_i_28__3_n_0),
        .O(rounded_mantissa0_carry_i_13__3_n_0));
  LUT5 #(
    .INIT(32'h47000000)) 
    rounded_mantissa0_carry_i_13__4
       (.I0(rounded_mantissa0_carry_i_27__1_n_0),
        .I1(rounded_mantissa0_carry_i_53_0[0]),
        .I2(rounded_mantissa0_carry_i_28__1_n_0),
        .I3(\mantissa_out1_inferred__1/i__carry__0 ),
        .I4(CO),
        .O(rounded_mantissa0_carry_i_13__4_n_0));
  LUT5 #(
    .INIT(32'h55554540)) 
    rounded_mantissa0_carry_i_14
       (.I0(rounded_mantissa0_carry_i_25__2_n_0),
        .I1(rounded_mantissa0_carry_i_24_n_0),
        .I2(mantissa_out1_carry_i_17_n_0),
        .I3(rounded_mantissa0_carry_i_26__1_n_0),
        .I4(CO),
        .O(rounded_mantissa0_carry_i_14_n_0));
  LUT5 #(
    .INIT(32'h0000FFB8)) 
    rounded_mantissa0_carry_i_14__0
       (.I0(rounded_mantissa0_carry_i_29_n_0),
        .I1(mantissa_out1_carry_i_17_n_0),
        .I2(rounded_mantissa0_carry_i_30__0_n_0),
        .I3(CO),
        .I4(rounded_mantissa0_carry_i_31__3_n_0),
        .O(rounded_mantissa0_carry_i_14__0_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rounded_mantissa0_carry_i_14__1
       (.I0(rounded_mantissa0_carry_i_25__1_n_0),
        .I1(rounded_mantissa0_carry_i_26__3_n_0),
        .I2(mantissa_out1_carry_i_17_n_0),
        .I3(rounded_mantissa0_carry_i_24__1_n_0),
        .I4(mantissa_out1_carry_i_15_n_0),
        .I5(rounded_mantissa0_carry_i_29__0_n_0),
        .O(rounded_mantissa0_carry_i_14__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h0D000D0D)) 
    rounded_mantissa0_carry_i_14__2
       (.I0(underflow_OBUF_inst_i_20_n_0),
        .I1(mantissa_out1_carry_i_9_n_0),
        .I2(\a[31]_1 ),
        .I3(mantissa_out1_carry_i_13_n_0),
        .I4(mantissa_out1_carry_i_77_n_0),
        .O(rounded_mantissa0_carry_i_14__2_n_0));
  LUT6 #(
    .INIT(64'h08808008A88A8AA8)) 
    rounded_mantissa0_carry_i_14__3
       (.I0(underflow_OBUF_inst_i_4_n_0),
        .I1(\adder/data0 [5]),
        .I2(a_IBUF[31]),
        .I3(op_IBUF[0]),
        .I4(b_IBUF[31]),
        .I5(rounded_mantissa0_carry_i_7__0_1),
        .O(rounded_mantissa0_carry_i_14__3_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    rounded_mantissa0_carry_i_14__4
       (.I0(rounded_mantissa0_carry_i_13__3_n_0),
        .I1(underflow_OBUF_inst_i_23_n_0),
        .O(rounded_mantissa0_carry_i_14__4_n_0));
  LUT5 #(
    .INIT(32'h55554540)) 
    rounded_mantissa0_carry_i_15
       (.I0(rounded_mantissa0_carry_i_24__3_n_0),
        .I1(rounded_mantissa0_carry_i_23__0_n_0),
        .I2(mantissa_out1_carry_i_17_n_0),
        .I3(rounded_mantissa0_carry_i_22_n_0),
        .I4(CO),
        .O(rounded_mantissa0_carry_i_15_n_0));
  LUT5 #(
    .INIT(32'h0000FFB8)) 
    rounded_mantissa0_carry_i_15__0
       (.I0(rounded_mantissa0_carry_i_30_n_0),
        .I1(mantissa_out1_carry_i_17_n_0),
        .I2(rounded_mantissa0_carry_i_31_n_0),
        .I3(CO),
        .I4(rounded_mantissa0_carry_i_7__3_0),
        .O(rounded_mantissa0_carry_i_15__0_n_0));
  LUT6 #(
    .INIT(64'hC000C040CC44CC44)) 
    rounded_mantissa0_carry_i_15__1
       (.I0(rounded_mantissa0_carry_i_9__3_n_0),
        .I1(rounded_mantissa0_carry_i_17__2_n_0),
        .I2(rounded_mantissa0_carry_i_40__0_n_0),
        .I3(mantissa_out1_carry_i_13_n_0),
        .I4(rounded_mantissa0_carry_i_9__4_n_0),
        .I5(mantissa_out1_carry_i_11_n_0),
        .O(rounded_mantissa0_carry_i_15__1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    rounded_mantissa0_carry_i_15__2
       (.I0(rounded_mantissa0_carry_i_13__3_n_0),
        .I1(mantissa_out1_carry_i_80_n_0),
        .O(rounded_mantissa0_carry_i_15__2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    rounded_mantissa0_carry_i_15__3
       (.I0(rounded_mantissa0_carry_i_13__3_n_0),
        .I1(underflow_OBUF_inst_i_19_n_0),
        .O(rounded_mantissa0_carry_i_15__3_n_0));
  LUT6 #(
    .INIT(64'h0000000000FF4747)) 
    rounded_mantissa0_carry_i_15__4
       (.I0(rounded_mantissa0_carry_i_31__1_n_0),
        .I1(rounded_mantissa0_carry_i_53_0[1]),
        .I2(rounded_mantissa0_carry_i_32__0_n_0),
        .I3(rounded_mantissa0_carry_i_33__0_n_0),
        .I4(rounded_mantissa0_carry_i_53_0[0]),
        .I5(rounded_mantissa0_carry_i_54_0),
        .O(rounded_mantissa0_carry_i_15__4_n_0));
  LUT5 #(
    .INIT(32'h55554540)) 
    rounded_mantissa0_carry_i_16
       (.I0(rounded_mantissa0_carry_i_27__0_n_0),
        .I1(rounded_mantissa0_carry_i_26__1_n_0),
        .I2(mantissa_out1_carry_i_17_n_0),
        .I3(rounded_mantissa0_carry_i_28_n_0),
        .I4(CO),
        .O(rounded_mantissa0_carry_i_16_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rounded_mantissa0_carry_i_16__0
       (.I0(rounded_mantissa0_carry_i_35_n_0),
        .I1(rounded_mantissa0_carry_i_36_n_0),
        .I2(mantissa_out1_carry_i_17_n_0),
        .I3(rounded_mantissa0_carry_i_37_n_0),
        .I4(mantissa_out1_carry_i_15_n_0),
        .I5(rounded_mantissa0_carry_i_38_n_0),
        .O(rounded_mantissa0_carry_i_16__0_n_0));
  LUT5 #(
    .INIT(32'hAAAA8A80)) 
    rounded_mantissa0_carry_i_16__1
       (.I0(rounded_mantissa0_carry_i_32_n_0),
        .I1(rounded_mantissa0_carry_i_30__0_n_0),
        .I2(mantissa_out1_carry_i_17_n_0),
        .I3(rounded_mantissa0_carry_i_17__0_n_0),
        .I4(CO),
        .O(rounded_mantissa0_carry_i_16__1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    rounded_mantissa0_carry_i_16__2
       (.I0(rounded_mantissa0_carry_i_13__3_n_0),
        .I1(underflow_OBUF_inst_i_16_n_0),
        .O(rounded_mantissa0_carry_i_16__2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    rounded_mantissa0_carry_i_16__3
       (.I0(rounded_mantissa0_carry_i_13__3_n_0),
        .I1(underflow_OBUF_inst_i_24_n_0),
        .O(rounded_mantissa0_carry_i_16__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h4777)) 
    rounded_mantissa0_carry_i_16__4
       (.I0(data1[22]),
        .I1(underflow_OBUF_inst_i_2_0),
        .I2(underflow_OBUF_inst_i_2_1),
        .I3(data2[22]),
        .O(rounded_mantissa0_carry_i_16__4_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    rounded_mantissa0_carry_i_17
       (.I0(rounded_mantissa0_carry_i_39__2_n_0),
        .I1(CO),
        .I2(rounded_mantissa0_carry_i_40_n_0),
        .I3(mantissa_out1_carry_i_17_n_0),
        .I4(rounded_mantissa0_carry_i_41_n_0),
        .O(rounded_mantissa0_carry_i_17_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rounded_mantissa0_carry_i_17__0
       (.I0(rounded_mantissa0_carry_i_39_n_0),
        .I1(rounded_mantissa0_carry_i_25__0_n_0),
        .I2(mantissa_out1_carry_i_15_n_0),
        .I3(rounded_mantissa0_carry_i_41__2_n_0),
        .I4(mantissa_out1_carry_i_11_n_0),
        .I5(rounded_mantissa0_carry_i_26_n_0),
        .O(rounded_mantissa0_carry_i_17__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    rounded_mantissa0_carry_i_17__1
       (.I0(rounded_mantissa0_carry_i_13__3_n_0),
        .I1(underflow_OBUF_inst_i_20_n_0),
        .O(rounded_mantissa0_carry_i_17__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h45)) 
    rounded_mantissa0_carry_i_17__2
       (.I0(\a[31] ),
        .I1(mantissa_out1_carry_i_9_n_0),
        .I2(rounded_mantissa0_carry_i_14__3_n_0),
        .O(rounded_mantissa0_carry_i_17__2_n_0));
  LUT6 #(
    .INIT(64'h08808008A88A8AA8)) 
    rounded_mantissa0_carry_i_17__3
       (.I0(underflow_OBUF_inst_i_4_n_0),
        .I1(\adder/data0 [18]),
        .I2(a_IBUF[31]),
        .I3(op_IBUF[0]),
        .I4(b_IBUF[31]),
        .I5(rounded_mantissa0_carry_i_8__2_1),
        .O(rounded_mantissa0_carry_i_17__3_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    rounded_mantissa0_carry_i_17__4
       (.I0(rounded_mantissa0_carry_i_13__3_n_0),
        .I1(mantissa_out1_carry_i_77_n_0),
        .O(rounded_mantissa0_carry_i_17__4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rounded_mantissa0_carry_i_18
       (.I0(rounded_mantissa0_carry_i_26__3_n_0),
        .I1(rounded_mantissa0_carry_i_23__2_n_0),
        .I2(mantissa_out1_carry_i_17_n_0),
        .I3(rounded_mantissa0_carry_i_29__0_n_0),
        .I4(mantissa_out1_carry_i_15_n_0),
        .I5(rounded_mantissa0_carry_i_25_n_0),
        .O(rounded_mantissa0_carry_i_18_n_0));
  LUT6 #(
    .INIT(64'hF0FFF000AACCAACC)) 
    rounded_mantissa0_carry_i_18__0
       (.I0(rounded_mantissa0_carry_i_37__2_n_0),
        .I1(rounded_mantissa0_carry_i_27_n_0),
        .I2(rounded_mantissa0_carry_i_36__0_n_0),
        .I3(mantissa_out1_carry_i_11_n_0),
        .I4(rounded_mantissa0_carry_i_28__0_n_0),
        .I5(mantissa_out1_carry_i_15_n_0),
        .O(rounded_mantissa0_carry_i_18__0_n_0));
  LUT5 #(
    .INIT(32'hDFD5FFFF)) 
    rounded_mantissa0_carry_i_18__1
       (.I0(CO),
        .I1(rounded_mantissa0_carry_i_35__1_n_0),
        .I2(rounded_mantissa0_carry_i_53_0[0]),
        .I3(rounded_mantissa0_carry_i_27__1_n_0),
        .I4(\mantissa_out1_inferred__1/i__carry__0 ),
        .O(rounded_mantissa0_carry_i_18__1_n_0));
  LUT6 #(
    .INIT(64'hF4F7FFFFF4F70000)) 
    rounded_mantissa0_carry_i_18__2
       (.I0(\a[31]_1 ),
        .I1(rounded_mantissa0_carry_i_53_0[3]),
        .I2(rounded_mantissa0_carry_i_5__4[0]),
        .I3(mantissa_out1_carry_i_77_n_0),
        .I4(rounded_mantissa0_carry_i_53_0[2]),
        .I5(rounded_mantissa0_carry_i_29__2_n_0),
        .O(rounded_mantissa0_carry_i_18__2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    rounded_mantissa0_carry_i_18__3
       (.I0(rounded_mantissa0_carry_i_13__3_n_0),
        .I1(rounded_mantissa0_carry_i_42__2_n_0),
        .O(rounded_mantissa0_carry_i_18__3_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    rounded_mantissa0_carry_i_19
       (.I0(rounded_mantissa0_carry_i_43__2_n_0),
        .I1(CO),
        .I2(rounded_mantissa0_carry_i_41_n_0),
        .I3(mantissa_out1_carry_i_17_n_0),
        .I4(rounded_mantissa0_carry_i_44__0_n_0),
        .O(rounded_mantissa0_carry_i_19_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rounded_mantissa0_carry_i_19__0
       (.I0(rounded_mantissa0_carry_i_25__0_n_0),
        .I1(rounded_mantissa0_carry_i_33_n_0),
        .I2(mantissa_out1_carry_i_15_n_0),
        .I3(rounded_mantissa0_carry_i_26_n_0),
        .I4(mantissa_out1_carry_i_11_n_0),
        .I5(rounded_mantissa0_carry_i_34_n_0),
        .O(rounded_mantissa0_carry_i_19__0_n_0));
  LUT4 #(
    .INIT(16'h0053)) 
    rounded_mantissa0_carry_i_19__1
       (.I0(rounded_mantissa0_carry_i_29__1_n_0),
        .I1(rounded_mantissa0_carry_i_30__1_n_0),
        .I2(rounded_mantissa0_carry_i_53_0[0]),
        .I3(rounded_mantissa0_carry_i_54_0),
        .O(rounded_mantissa0_carry_i_19__1_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBB8B888BBB)) 
    rounded_mantissa0_carry_i_19__2
       (.I0(rounded_mantissa0_carry_i_30__2_n_0),
        .I1(rounded_mantissa0_carry_i_53_0[2]),
        .I2(rounded_mantissa0_carry_i_11__3_n_0),
        .I3(rounded_mantissa0_carry_i_53_0[3]),
        .I4(mantissa_out1_carry_i_73_n_0),
        .I5(rounded_mantissa0_carry_i_5__4[0]),
        .O(rounded_mantissa0_carry_i_19__2_n_0));
  LUT5 #(
    .INIT(32'h47000000)) 
    rounded_mantissa0_carry_i_19__3
       (.I0(rounded_mantissa0_carry_i_8__2_0),
        .I1(rounded_mantissa0_carry_i_53_0[0]),
        .I2(rounded_mantissa0_carry_i_35__1_n_0),
        .I3(\mantissa_out1_inferred__1/i__carry__0 ),
        .I4(CO),
        .O(rounded_mantissa0_carry_i_19__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rounded_mantissa0_carry_i_1__0
       (.I0(rounded_mantissa0_carry_i_5__0_n_0),
        .O(rounded_mantissa0_carry_i_5__0_0[3]));
  LUT1 #(
    .INIT(2'h1)) 
    rounded_mantissa0_carry_i_1__1
       (.I0(rounded_mantissa0_carry_i_5__1_n_0),
        .O(rounded_mantissa0_carry_i_5__1_0[3]));
  LUT1 #(
    .INIT(2'h1)) 
    rounded_mantissa0_carry_i_1__2
       (.I0(rounded_mantissa0_carry_i_5__3_n_0),
        .O(rounded_mantissa0_carry_i_5__3_0[3]));
  LUT1 #(
    .INIT(2'h1)) 
    rounded_mantissa0_carry_i_1__3
       (.I0(rounded_mantissa0_carry_i_6__2_n_0),
        .O(rounded_mantissa0_carry_i_6__2_0));
  LUT1 #(
    .INIT(2'h1)) 
    rounded_mantissa0_carry_i_1__4
       (.I0(rounded_mantissa0_carry_i_3__3_n_0),
        .O(rounded_mantissa0_carry_i_3__3_0[1]));
  LUT1 #(
    .INIT(2'h1)) 
    rounded_mantissa0_carry_i_2
       (.I0(rounded_mantissa0_carry_i_6_n_0),
        .O(rounded_mantissa0_carry_i_5_0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rounded_mantissa0_carry_i_20
       (.I0(rounded_mantissa0_carry_i_41__2_n_0),
        .I1(rounded_mantissa0_carry_i_26_n_0),
        .I2(mantissa_out1_carry_i_15_n_0),
        .I3(rounded_mantissa0_carry_i_38__2_n_0),
        .I4(mantissa_out1_carry_i_11_n_0),
        .I5(rounded_mantissa0_carry_i_39_n_0),
        .O(rounded_mantissa0_carry_i_20_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rounded_mantissa0_carry_i_20__0
       (.I0(rounded_mantissa0_carry_i_28__0_n_0),
        .I1(rounded_mantissa0_carry_i_35__0_n_0),
        .I2(mantissa_out1_carry_i_15_n_0),
        .I3(rounded_mantissa0_carry_i_27_n_0),
        .I4(mantissa_out1_carry_i_11_n_0),
        .I5(rounded_mantissa0_carry_i_36__1_n_0),
        .O(rounded_mantissa0_carry_i_20__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    rounded_mantissa0_carry_i_20__1
       (.I0(rounded_mantissa0_carry_i_13__3_n_0),
        .I1(mantissa_out1_carry_i_76_n_0),
        .O(rounded_mantissa0_carry_i_20__1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rounded_mantissa0_carry_i_20__2
       (.I0(rounded_mantissa0_carry_i_31__2_n_0),
        .I1(rounded_mantissa0_carry_i_32__2_n_0),
        .I2(rounded_mantissa0_carry_i_53_0[1]),
        .I3(rounded_mantissa0_carry_i_33__2_n_0),
        .I4(rounded_mantissa0_carry_i_53_0[2]),
        .I5(rounded_mantissa0_carry_i_34__2_n_0),
        .O(rounded_mantissa0_carry_i_20__2_n_0));
  LUT4 #(
    .INIT(16'h4777)) 
    rounded_mantissa0_carry_i_20__3
       (.I0(data1[21]),
        .I1(underflow_OBUF_inst_i_2_0),
        .I2(underflow_OBUF_inst_i_2_1),
        .I3(data2[21]),
        .O(rounded_mantissa0_carry_i_20__3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rounded_mantissa0_carry_i_21
       (.I0(rounded_mantissa0_carry_i_35__2_n_0),
        .I1(rounded_mantissa0_carry_i_36__0_n_0),
        .I2(mantissa_out1_carry_i_15_n_0),
        .I3(rounded_mantissa0_carry_i_49_n_0),
        .I4(mantissa_out1_carry_i_11_n_0),
        .I5(rounded_mantissa0_carry_i_37__2_n_0),
        .O(rounded_mantissa0_carry_i_21_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF4FFF7)) 
    rounded_mantissa0_carry_i_21__0
       (.I0(\b[31] ),
        .I1(rounded_mantissa0_carry_i_53_0[1]),
        .I2(rounded_mantissa0_carry_i_53_0[2]),
        .I3(rounded_mantissa0_carry_i_5__4[0]),
        .I4(\a[31] ),
        .I5(rounded_mantissa0_carry_i_53_0[3]),
        .O(\mantissa_out1_inferred__1/i__carry ));
  CARRY4 rounded_mantissa0_carry_i_21__1
       (.CI(mantissa_out1_carry_i_49_n_0),
        .CO({rounded_mantissa0_carry_i_21__1_n_0,rounded_mantissa0_carry_i_21__1_n_1,rounded_mantissa0_carry_i_21__1_n_2,rounded_mantissa0_carry_i_21__1_n_3}),
        .CYINIT(1'b0),
        .DI({\a[19] ,\a[18] ,\a[17] ,\a[16] }),
        .O(\adder/data0 [19:16]),
        .S({rounded_mantissa0_carry_i_37__1_n_0,rounded_mantissa0_carry_i_38__1_n_0,rounded_mantissa0_carry_i_39__1_n_0,rounded_mantissa0_carry_i_40__1_n_0}));
  LUT5 #(
    .INIT(32'h47000000)) 
    rounded_mantissa0_carry_i_21__3
       (.I0(rounded_mantissa0_carry_i_30__1_n_0),
        .I1(rounded_mantissa0_carry_i_53_0[0]),
        .I2(rounded_mantissa0_carry_i_31__0_n_0),
        .I3(\mantissa_out1_inferred__1/i__carry__0 ),
        .I4(CO),
        .O(rounded_mantissa0_carry_i_21__3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rounded_mantissa0_carry_i_22
       (.I0(rounded_mantissa0_carry_i_38__2_n_0),
        .I1(rounded_mantissa0_carry_i_39_n_0),
        .I2(mantissa_out1_carry_i_15_n_0),
        .I3(rounded_mantissa0_carry_i_40__2_n_0),
        .I4(mantissa_out1_carry_i_11_n_0),
        .I5(rounded_mantissa0_carry_i_41__2_n_0),
        .O(rounded_mantissa0_carry_i_22_n_0));
  LUT6 #(
    .INIT(64'h0000000000FF4747)) 
    rounded_mantissa0_carry_i_22__0
       (.I0(rounded_mantissa0_carry_i_32__1_n_0),
        .I1(rounded_mantissa0_carry_i_53_0[1]),
        .I2(rounded_mantissa0_carry_i_18__2_n_0),
        .I3(rounded_mantissa0_carry_i_31__0_n_0),
        .I4(rounded_mantissa0_carry_i_53_0[0]),
        .I5(rounded_mantissa0_carry_i_54_0),
        .O(rounded_mantissa0_carry_i_22__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF4FFF7)) 
    rounded_mantissa0_carry_i_22__1
       (.I0(\a[31]_1 ),
        .I1(rounded_mantissa0_carry_i_53_0[1]),
        .I2(rounded_mantissa0_carry_i_53_0[2]),
        .I3(rounded_mantissa0_carry_i_5__4[0]),
        .I4(\a[31]_0 ),
        .I5(rounded_mantissa0_carry_i_53_0[3]),
        .O(\mantissa_out1_inferred__1/i__carry_0 ));
  LUT6 #(
    .INIT(64'hB8B8FF00FFFFFFFF)) 
    rounded_mantissa0_carry_i_22__3
       (.I0(rounded_mantissa0_carry_i_32__0_n_0),
        .I1(rounded_mantissa0_carry_i_53_0[1]),
        .I2(rounded_mantissa0_carry_i_47_n_0),
        .I3(rounded_mantissa0_carry_i_48_n_0),
        .I4(rounded_mantissa0_carry_i_53_0[0]),
        .I5(\mantissa_out1_inferred__1/i__carry__0 ),
        .O(rounded_mantissa0_carry_i_22__3_n_0));
  LUT5 #(
    .INIT(32'hFFB8FFFF)) 
    rounded_mantissa0_carry_i_23
       (.I0(rounded_mantissa0_carry_i_49_n_0),
        .I1(mantissa_out1_carry_i_17_n_0),
        .I2(rounded_mantissa0_carry_i_50_n_0),
        .I3(mantissa_out1_carry_i_11_n_0),
        .I4(mantissa_out1_carry_i_15_n_0),
        .O(rounded_mantissa0_carry_i_23_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rounded_mantissa0_carry_i_23__0
       (.I0(rounded_mantissa0_carry_i_37__2_n_0),
        .I1(rounded_mantissa0_carry_i_27_n_0),
        .I2(mantissa_out1_carry_i_15_n_0),
        .I3(rounded_mantissa0_carry_i_35__2_n_0),
        .I4(mantissa_out1_carry_i_11_n_0),
        .I5(rounded_mantissa0_carry_i_36__0_n_0),
        .O(rounded_mantissa0_carry_i_23__0_n_0));
  LUT6 #(
    .INIT(64'hC000C040CC44CC44)) 
    rounded_mantissa0_carry_i_23__1
       (.I0(underflow_OBUF_inst_i_25_n_0),
        .I1(rounded_mantissa0_carry_i_36__2_n_0),
        .I2(rounded_mantissa0_carry_i_37__0_n_0),
        .I3(mantissa_out1_carry_i_13_n_0),
        .I4(mantissa_out1_carry_i_73_n_0),
        .I5(mantissa_out1_carry_i_11_n_0),
        .O(rounded_mantissa0_carry_i_23__1_n_0));
  LUT6 #(
    .INIT(64'h8BBB8B888BBB8BBB)) 
    rounded_mantissa0_carry_i_23__2
       (.I0(rounded_mantissa0_carry_i_28__0_n_0),
        .I1(mantissa_out1_carry_i_11_n_0),
        .I2(mantissa_out1_carry_i_80_n_0),
        .I3(mantissa_out1_carry_i_13_n_0),
        .I4(underflow_OBUF_inst_i_19_n_0),
        .I5(mantissa_out1_carry_i_9_n_0),
        .O(rounded_mantissa0_carry_i_23__2_n_0));
  LUT6 #(
    .INIT(64'h0000000003F35555)) 
    rounded_mantissa0_carry_i_23__3
       (.I0(rounded_mantissa0_carry_i_42__0_n_0),
        .I1(rounded_mantissa0_carry_i_19__2_n_0),
        .I2(rounded_mantissa0_carry_i_53_0[1]),
        .I3(rounded_mantissa0_carry_i_18__2_n_0),
        .I4(rounded_mantissa0_carry_i_53_0[0]),
        .I5(rounded_mantissa0_carry_i_54_0),
        .O(rounded_mantissa0_carry_i_23__3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rounded_mantissa0_carry_i_24
       (.I0(rounded_mantissa0_carry_i_40__2_n_0),
        .I1(rounded_mantissa0_carry_i_41__2_n_0),
        .I2(mantissa_out1_carry_i_15_n_0),
        .I3(rounded_mantissa0_carry_i_50_n_0),
        .I4(mantissa_out1_carry_i_11_n_0),
        .I5(rounded_mantissa0_carry_i_38__2_n_0),
        .O(rounded_mantissa0_carry_i_24_n_0));
  LUT6 #(
    .INIT(64'h8B888BBB8BBB8BBB)) 
    rounded_mantissa0_carry_i_24__0
       (.I0(rounded_mantissa0_carry_i_27_n_0),
        .I1(mantissa_out1_carry_i_11_n_0),
        .I2(rounded_mantissa0_carry_i_9__3_n_0),
        .I3(mantissa_out1_carry_i_13_n_0),
        .I4(rounded_mantissa0_carry_i_14__3_n_0),
        .I5(mantissa_out1_carry_i_9_n_0),
        .O(rounded_mantissa0_carry_i_24__0_n_0));
  LUT5 #(
    .INIT(32'hB888B8B8)) 
    rounded_mantissa0_carry_i_24__1
       (.I0(rounded_mantissa0_carry_i_34_n_0),
        .I1(mantissa_out1_carry_i_11_n_0),
        .I2(rounded_mantissa0_carry_i_38__0_n_0),
        .I3(mantissa_out1_carry_i_13_n_0),
        .I4(underflow_OBUF_inst_i_24_n_0),
        .O(rounded_mantissa0_carry_i_24__1_n_0));
  LUT6 #(
    .INIT(64'hA0A0C0C0AFA0CFCF)) 
    rounded_mantissa0_carry_i_24__2
       (.I0(rounded_mantissa0_carry_i_51_n_0),
        .I1(rounded_mantissa0_carry_i_52_n_0),
        .I2(rounded_mantissa0_carry_i_53_0[0]),
        .I3(rounded_mantissa0_carry_i_47_n_0),
        .I4(rounded_mantissa0_carry_i_53_0[1]),
        .I5(rounded_mantissa0_carry_i_53_n_0),
        .O(rounded_mantissa0_carry_i_24__2_n_0));
  LUT6 #(
    .INIT(64'h0000000003F35555)) 
    rounded_mantissa0_carry_i_24__3
       (.I0(rounded_mantissa0_carry_i_20__2_n_0),
        .I1(rounded_mantissa0_carry_i_18__2_n_0),
        .I2(rounded_mantissa0_carry_i_53_0[1]),
        .I3(rounded_mantissa0_carry_i_32__1_n_0),
        .I4(rounded_mantissa0_carry_i_53_0[0]),
        .I5(rounded_mantissa0_carry_i_54_0),
        .O(rounded_mantissa0_carry_i_24__3_n_0));
  LUT6 #(
    .INIT(64'h8B888BBB8BBB8BBB)) 
    rounded_mantissa0_carry_i_25
       (.I0(rounded_mantissa0_carry_i_26_n_0),
        .I1(mantissa_out1_carry_i_11_n_0),
        .I2(mantissa_out1_carry_i_77_n_0),
        .I3(mantissa_out1_carry_i_13_n_0),
        .I4(underflow_OBUF_inst_i_20_n_0),
        .I5(mantissa_out1_carry_i_9_n_0),
        .O(rounded_mantissa0_carry_i_25_n_0));
  LUT6 #(
    .INIT(64'h07070700F7F7F7FF)) 
    rounded_mantissa0_carry_i_25__0
       (.I0(rounded_mantissa0_carry_i_42__2_n_0),
        .I1(mantissa_out1_carry_i_9_n_0),
        .I2(rounded_mantissa0_carry_i_55_n_0),
        .I3(underflow_OBUF_inst_i_9_n_0),
        .I4(underflow_OBUF_inst_i_10_n_0),
        .I5(underflow_OBUF_inst_i_25_n_0),
        .O(rounded_mantissa0_carry_i_25__0_n_0));
  LUT5 #(
    .INIT(32'hB888B8B8)) 
    rounded_mantissa0_carry_i_25__1
       (.I0(rounded_mantissa0_carry_i_35__0_n_0),
        .I1(mantissa_out1_carry_i_11_n_0),
        .I2(rounded_mantissa0_carry_i_39__0_n_0),
        .I3(mantissa_out1_carry_i_13_n_0),
        .I4(underflow_OBUF_inst_i_23_n_0),
        .O(rounded_mantissa0_carry_i_25__1_n_0));
  LUT6 #(
    .INIT(64'h00000000555503F3)) 
    rounded_mantissa0_carry_i_25__2
       (.I0(rounded_mantissa0_carry_i_42__0_n_0),
        .I1(rounded_mantissa0_carry_i_31__1_n_0),
        .I2(rounded_mantissa0_carry_i_53_0[1]),
        .I3(rounded_mantissa0_carry_i_19__2_n_0),
        .I4(rounded_mantissa0_carry_i_53_0[0]),
        .I5(rounded_mantissa0_carry_i_54_0),
        .O(rounded_mantissa0_carry_i_25__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    rounded_mantissa0_carry_i_25__3
       (.I0(rounded_mantissa0_carry_i_5__4[2]),
        .I1(rounded_mantissa0_carry_i_5__4[1]),
        .I2(rounded_mantissa0_carry_i_54_n_3),
        .I3(rounded_mantissa0_carry_i_5__4[3]),
        .O(\mantissa_out1_inferred__1/i__carry__0 ));
  LUT6 #(
    .INIT(64'h07070700F7F7F7FF)) 
    rounded_mantissa0_carry_i_26
       (.I0(rounded_mantissa0_carry_i_24__1_0),
        .I1(mantissa_out1_carry_i_9_n_0),
        .I2(rounded_mantissa0_carry_i_55_n_0),
        .I3(underflow_OBUF_inst_i_9_n_0),
        .I4(underflow_OBUF_inst_i_10_n_0),
        .I5(underflow_OBUF_inst_i_24_n_0),
        .O(rounded_mantissa0_carry_i_26_n_0));
  LUT6 #(
    .INIT(64'hBBBAFFFFFFFFFFFF)) 
    rounded_mantissa0_carry_i_26__0
       (.I0(mantissa_out1_carry_i_11_n_0),
        .I1(rounded_mantissa0_carry_i_55_n_0),
        .I2(underflow_OBUF_inst_i_9_n_0),
        .I3(underflow_OBUF_inst_i_10_n_0),
        .I4(underflow_OBUF_inst_i_21_n_0),
        .I5(mantissa_out1_carry_i_9_n_0),
        .O(rounded_mantissa0_carry_i_26__0_n_0));
  LUT6 #(
    .INIT(64'hBBBBB8BBBBBBBBBB)) 
    rounded_mantissa0_carry_i_26__1
       (.I0(rounded_mantissa0_carry_i_43_n_0),
        .I1(mantissa_out1_carry_i_15_n_0),
        .I2(mantissa_out1_carry_i_11_n_0),
        .I3(mantissa_out1_carry_i_13_n_0),
        .I4(rounded_mantissa0_carry_i_18__0_0),
        .I5(mantissa_out1_carry_i_9_n_0),
        .O(rounded_mantissa0_carry_i_26__1_n_0));
  LUT6 #(
    .INIT(64'h4777FFFF47770000)) 
    rounded_mantissa0_carry_i_26__2
       (.I0(mantissa_out1_carry_i_73_n_0),
        .I1(mantissa_out1_carry_i_13_n_0),
        .I2(underflow_OBUF_inst_i_21_n_0),
        .I3(mantissa_out1_carry_i_9_n_0),
        .I4(mantissa_out1_carry_i_11_n_0),
        .I5(rounded_mantissa0_carry_i_25__0_n_0),
        .O(rounded_mantissa0_carry_i_26__2_n_0));
  LUT5 #(
    .INIT(32'hB888B8B8)) 
    rounded_mantissa0_carry_i_26__3
       (.I0(rounded_mantissa0_carry_i_36__1_n_0),
        .I1(mantissa_out1_carry_i_11_n_0),
        .I2(rounded_mantissa0_carry_i_40__0_n_0),
        .I3(mantissa_out1_carry_i_13_n_0),
        .I4(rounded_mantissa0_carry_i_9__4_n_0),
        .O(rounded_mantissa0_carry_i_26__3_n_0));
  LUT6 #(
    .INIT(64'h4445777577757775)) 
    rounded_mantissa0_carry_i_27
       (.I0(rounded_mantissa0_carry_i_9__4_n_0),
        .I1(rounded_mantissa0_carry_i_55_n_0),
        .I2(underflow_OBUF_inst_i_9_n_0),
        .I3(underflow_OBUF_inst_i_10_n_0),
        .I4(\result_OBUF[22]_inst_i_15_n_0 ),
        .I5(mantissa_out1_carry_i_9_n_0),
        .O(rounded_mantissa0_carry_i_27_n_0));
  LUT6 #(
    .INIT(64'h0000000003F35555)) 
    rounded_mantissa0_carry_i_27__0
       (.I0(rounded_mantissa0_carry_i_33__0_n_0),
        .I1(rounded_mantissa0_carry_i_31__1_n_0),
        .I2(rounded_mantissa0_carry_i_53_0[1]),
        .I3(rounded_mantissa0_carry_i_19__2_n_0),
        .I4(rounded_mantissa0_carry_i_53_0[0]),
        .I5(rounded_mantissa0_carry_i_54_0),
        .O(rounded_mantissa0_carry_i_27__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rounded_mantissa0_carry_i_27__1
       (.I0(\mantissa_out1_inferred__1/i__carry__0_1 ),
        .I1(rounded_mantissa0_carry_i_53_0[1]),
        .I2(rounded_mantissa0_carry_i_42__1_n_0),
        .O(rounded_mantissa0_carry_i_27__1_n_0));
  LUT6 #(
    .INIT(64'h70F0F0F0F0F0F0F0)) 
    rounded_mantissa0_carry_i_27__2
       (.I0(rounded_mantissa0_carry_i_56_n_0),
        .I1(rounded_mantissa0_carry_i_57_n_0),
        .I2(underflow_OBUF_inst_i_11_0),
        .I3(rounded_mantissa0_carry_i_58_n_0),
        .I4(rounded_mantissa0_carry_i_59_n_0),
        .I5(rounded_mantissa0_carry_i_60_n_0),
        .O(rounded_mantissa0_carry_i_27__2_n_0));
  LUT4 #(
    .INIT(16'h4777)) 
    rounded_mantissa0_carry_i_27__3
       (.I0(data1[20]),
        .I1(underflow_OBUF_inst_i_2_0),
        .I2(underflow_OBUF_inst_i_2_1),
        .I3(data2[20]),
        .O(rounded_mantissa0_carry_i_27__3_n_0));
  LUT6 #(
    .INIT(64'hB8BBBBBBBBBBBBBB)) 
    rounded_mantissa0_carry_i_28
       (.I0(rounded_mantissa0_carry_i_35_n_0),
        .I1(mantissa_out1_carry_i_15_n_0),
        .I2(mantissa_out1_carry_i_11_n_0),
        .I3(mantissa_out1_carry_i_13_n_0),
        .I4(rounded_mantissa0_carry_i_24__1_0),
        .I5(mantissa_out1_carry_i_9_n_0),
        .O(rounded_mantissa0_carry_i_28_n_0));
  LUT6 #(
    .INIT(64'h7775444577757775)) 
    rounded_mantissa0_carry_i_28__0
       (.I0(underflow_OBUF_inst_i_23_n_0),
        .I1(rounded_mantissa0_carry_i_55_n_0),
        .I2(underflow_OBUF_inst_i_9_n_0),
        .I3(underflow_OBUF_inst_i_10_n_0),
        .I4(rounded_mantissa0_carry_i_18__0_0),
        .I5(mantissa_out1_carry_i_9_n_0),
        .O(rounded_mantissa0_carry_i_28__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rounded_mantissa0_carry_i_28__1
       (.I0(rounded_mantissa0_carry_i_43__1_n_0),
        .I1(rounded_mantissa0_carry_i_53_0[1]),
        .I2(rounded_mantissa0_carry_i_44_n_0),
        .O(rounded_mantissa0_carry_i_28__1_n_0));
  LUT6 #(
    .INIT(64'hF77FFFFFFFFFFFFF)) 
    rounded_mantissa0_carry_i_28__3
       (.I0(rounded_mantissa0_carry_i_60_n_0),
        .I1(rounded_mantissa0_carry_i_56_n_0),
        .I2(rounded_mantissa0_carry_i_59_n_0),
        .I3(rounded_mantissa0_carry_i_58_n_0),
        .I4(underflow_OBUF_inst_i_11_0),
        .I5(rounded_mantissa0_carry_i_57_n_0),
        .O(rounded_mantissa0_carry_i_28__3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rounded_mantissa0_carry_i_29
       (.I0(rounded_mantissa0_carry_i_26_n_0),
        .I1(rounded_mantissa0_carry_i_34_n_0),
        .I2(mantissa_out1_carry_i_15_n_0),
        .I3(rounded_mantissa0_carry_i_39_n_0),
        .I4(mantissa_out1_carry_i_11_n_0),
        .I5(rounded_mantissa0_carry_i_25__0_n_0),
        .O(rounded_mantissa0_carry_i_29_n_0));
  LUT5 #(
    .INIT(32'hB888B8B8)) 
    rounded_mantissa0_carry_i_29__0
       (.I0(rounded_mantissa0_carry_i_25__0_n_0),
        .I1(mantissa_out1_carry_i_11_n_0),
        .I2(rounded_mantissa0_carry_i_37__0_n_0),
        .I3(mantissa_out1_carry_i_13_n_0),
        .I4(mantissa_out1_carry_i_73_n_0),
        .O(rounded_mantissa0_carry_i_29__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rounded_mantissa0_carry_i_29__1
       (.I0(rounded_mantissa0_carry_i_44_n_0),
        .I1(rounded_mantissa0_carry_i_53_0[1]),
        .I2(rounded_mantissa0_carry_i_33__1_n_0),
        .O(rounded_mantissa0_carry_i_29__1_n_0));
  LUT4 #(
    .INIT(16'hF4F7)) 
    rounded_mantissa0_carry_i_29__2
       (.I0(rounded_mantissa0_carry_i_17__3_n_0),
        .I1(rounded_mantissa0_carry_i_53_0[3]),
        .I2(rounded_mantissa0_carry_i_5__4[0]),
        .I3(underflow_OBUF_inst_i_24_n_0),
        .O(rounded_mantissa0_carry_i_29__2_n_0));
  CARRY4 rounded_mantissa0_carry_i_29__3
       (.CI(rounded_mantissa0_carry_i_46_n_0),
        .CO({rounded_mantissa0_carry_i_29__3_n_0,rounded_mantissa0_carry_i_29__3_n_1,rounded_mantissa0_carry_i_29__3_n_2,rounded_mantissa0_carry_i_29__3_n_3}),
        .CYINIT(1'b0),
        .DI({\a[7] ,\a[6] ,\a[5] ,rounded_mantissa0_carry_i_61_n_0}),
        .O(\adder/data0 [7:4]),
        .S({rounded_mantissa0_carry_i_62_n_0,rounded_mantissa0_carry_i_63_n_0,rounded_mantissa0_carry_i_64_n_0,rounded_mantissa0_carry_i_65_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    rounded_mantissa0_carry_i_2__0
       (.I0(rounded_mantissa0_carry_i_7__0_n_0),
        .O(rounded_mantissa0_carry_i_7__0_0[3]));
  LUT1 #(
    .INIT(2'h1)) 
    rounded_mantissa0_carry_i_2__1
       (.I0(rounded_mantissa0_carry_i_6__0_n_0),
        .O(rounded_mantissa0_carry_i_5__0_0[2]));
  LUT1 #(
    .INIT(2'h1)) 
    rounded_mantissa0_carry_i_2__2
       (.I0(rounded_mantissa0_carry_i_6__1_n_0),
        .O(rounded_mantissa0_carry_i_5__1_0[2]));
  LUT1 #(
    .INIT(2'h1)) 
    rounded_mantissa0_carry_i_2__3
       (.I0(rounded_mantissa0_carry_i_4__4_n_0),
        .O(rounded_mantissa0_carry_i_3__3_0[0]));
  LUT1 #(
    .INIT(2'h1)) 
    rounded_mantissa0_carry_i_2__4
       (.I0(rounded_mantissa0_carry_i_6__3_n_0),
        .O(rounded_mantissa0_carry_i_5__3_0[2]));
  LUT1 #(
    .INIT(2'h1)) 
    rounded_mantissa0_carry_i_3
       (.I0(rounded_mantissa0_carry_i_7_n_0),
        .O(rounded_mantissa0_carry_i_5_0[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rounded_mantissa0_carry_i_30
       (.I0(rounded_mantissa0_carry_i_34_n_0),
        .I1(rounded_mantissa0_carry_i_42_n_0),
        .I2(mantissa_out1_carry_i_15_n_0),
        .I3(rounded_mantissa0_carry_i_25__0_n_0),
        .I4(mantissa_out1_carry_i_11_n_0),
        .I5(rounded_mantissa0_carry_i_33_n_0),
        .O(rounded_mantissa0_carry_i_30_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rounded_mantissa0_carry_i_30__0
       (.I0(rounded_mantissa0_carry_i_27_n_0),
        .I1(rounded_mantissa0_carry_i_36__1_n_0),
        .I2(mantissa_out1_carry_i_15_n_0),
        .I3(rounded_mantissa0_carry_i_36__0_n_0),
        .I4(mantissa_out1_carry_i_11_n_0),
        .I5(rounded_mantissa0_carry_i_28__0_n_0),
        .O(rounded_mantissa0_carry_i_30__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rounded_mantissa0_carry_i_30__1
       (.I0(rounded_mantissa0_carry_i_34__1_n_0),
        .I1(rounded_mantissa0_carry_i_53_0[1]),
        .I2(rounded_mantissa0_carry_i_32__1_n_0),
        .O(rounded_mantissa0_carry_i_30__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hF4F7)) 
    rounded_mantissa0_carry_i_30__2
       (.I0(\a[31]_0 ),
        .I1(rounded_mantissa0_carry_i_53_0[3]),
        .I2(rounded_mantissa0_carry_i_5__4[0]),
        .I3(underflow_OBUF_inst_i_25_n_0),
        .O(rounded_mantissa0_carry_i_30__2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rounded_mantissa0_carry_i_31
       (.I0(rounded_mantissa0_carry_i_36__1_n_0),
        .I1(rounded_mantissa0_carry_i_43__0_n_0),
        .I2(mantissa_out1_carry_i_15_n_0),
        .I3(rounded_mantissa0_carry_i_28__0_n_0),
        .I4(mantissa_out1_carry_i_11_n_0),
        .I5(rounded_mantissa0_carry_i_35__0_n_0),
        .O(rounded_mantissa0_carry_i_31_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    rounded_mantissa0_carry_i_31__0
       (.I0(rounded_mantissa0_carry_i_33__1_n_0),
        .I1(rounded_mantissa0_carry_i_53_0[1]),
        .I2(rounded_mantissa0_carry_i_31__2_n_0),
        .I3(rounded_mantissa0_carry_i_53_0[2]),
        .I4(rounded_mantissa0_carry_i_32__2_n_0),
        .O(rounded_mantissa0_carry_i_31__0_n_0));
  LUT6 #(
    .INIT(64'hF4F7FFFFF4F70000)) 
    rounded_mantissa0_carry_i_31__1
       (.I0(rounded_mantissa0_carry_i_17__3_n_0),
        .I1(rounded_mantissa0_carry_i_53_0[3]),
        .I2(rounded_mantissa0_carry_i_5__4[0]),
        .I3(underflow_OBUF_inst_i_24_n_0),
        .I4(rounded_mantissa0_carry_i_53_0[2]),
        .I5(rounded_mantissa0_carry_i_66_n_0),
        .O(rounded_mantissa0_carry_i_31__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hF4F7)) 
    rounded_mantissa0_carry_i_31__2
       (.I0(\b[31] ),
        .I1(rounded_mantissa0_carry_i_53_0[3]),
        .I2(rounded_mantissa0_carry_i_5__4[0]),
        .I3(mantissa_out1_carry_i_80_n_0),
        .O(rounded_mantissa0_carry_i_31__2_n_0));
  LUT5 #(
    .INIT(32'h47000000)) 
    rounded_mantissa0_carry_i_31__3
       (.I0(rounded_mantissa0_carry_i_28__1_n_0),
        .I1(rounded_mantissa0_carry_i_53_0[0]),
        .I2(rounded_mantissa0_carry_i_45_n_0),
        .I3(\mantissa_out1_inferred__1/i__carry__0 ),
        .I4(CO),
        .O(rounded_mantissa0_carry_i_31__3_n_0));
  LUT5 #(
    .INIT(32'hDFD5FFFF)) 
    rounded_mantissa0_carry_i_32
       (.I0(CO),
        .I1(rounded_mantissa0_carry_i_45_n_0),
        .I2(rounded_mantissa0_carry_i_53_0[0]),
        .I3(rounded_mantissa0_carry_i_29__1_n_0),
        .I4(\mantissa_out1_inferred__1/i__carry__0 ),
        .O(rounded_mantissa0_carry_i_32_n_0));
  LUT6 #(
    .INIT(64'hFF47FFFFFF470000)) 
    rounded_mantissa0_carry_i_32__0
       (.I0(rounded_mantissa0_carry_i_11__3_n_0),
        .I1(rounded_mantissa0_carry_i_53_0[3]),
        .I2(mantissa_out1_carry_i_73_n_0),
        .I3(rounded_mantissa0_carry_i_5__4[0]),
        .I4(rounded_mantissa0_carry_i_53_0[2]),
        .I5(rounded_mantissa0_carry_i_67_n_0),
        .O(rounded_mantissa0_carry_i_32__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFCF44FFFFCF77)) 
    rounded_mantissa0_carry_i_32__1
       (.I0(rounded_mantissa0_carry_i_11__3_n_0),
        .I1(rounded_mantissa0_carry_i_53_0[2]),
        .I2(\a[31]_0 ),
        .I3(rounded_mantissa0_carry_i_53_0[3]),
        .I4(rounded_mantissa0_carry_i_5__4[0]),
        .I5(underflow_OBUF_inst_i_25_n_0),
        .O(rounded_mantissa0_carry_i_32__1_n_0));
  LUT4 #(
    .INIT(16'hFF47)) 
    rounded_mantissa0_carry_i_32__2
       (.I0(underflow_OBUF_inst_i_16_n_0),
        .I1(rounded_mantissa0_carry_i_53_0[3]),
        .I2(underflow_OBUF_inst_i_23_n_0),
        .I3(rounded_mantissa0_carry_i_5__4[0]),
        .O(rounded_mantissa0_carry_i_32__2_n_0));
  LUT6 #(
    .INIT(64'h0D000D0D0D0D0D0D)) 
    rounded_mantissa0_carry_i_33
       (.I0(underflow_OBUF_inst_i_21_n_0),
        .I1(mantissa_out1_carry_i_9_n_0),
        .I2(rounded_mantissa0_carry_i_11__3_n_0),
        .I3(rounded_mantissa0_carry_i_55_n_0),
        .I4(rounded_mantissa0_carry_i_70_n_0),
        .I5(mantissa_out1_carry_i_73_n_0),
        .O(rounded_mantissa0_carry_i_33_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rounded_mantissa0_carry_i_33__0
       (.I0(rounded_mantissa0_carry_i_68_n_0),
        .I1(rounded_mantissa0_carry_i_53_0[1]),
        .I2(rounded_mantissa0_carry_i_69_n_0),
        .O(rounded_mantissa0_carry_i_33__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFCF44FFFFCF77)) 
    rounded_mantissa0_carry_i_33__1
       (.I0(underflow_OBUF_inst_i_15_n_0),
        .I1(rounded_mantissa0_carry_i_53_0[2]),
        .I2(\a[31] ),
        .I3(rounded_mantissa0_carry_i_53_0[3]),
        .I4(rounded_mantissa0_carry_i_5__4[0]),
        .I5(rounded_mantissa0_carry_i_9__3_n_0),
        .O(rounded_mantissa0_carry_i_33__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hF4F7)) 
    rounded_mantissa0_carry_i_33__2
       (.I0(\a[31] ),
        .I1(rounded_mantissa0_carry_i_53_0[3]),
        .I2(rounded_mantissa0_carry_i_5__4[0]),
        .I3(rounded_mantissa0_carry_i_9__3_n_0),
        .O(rounded_mantissa0_carry_i_33__2_n_0));
  LUT6 #(
    .INIT(64'h4445777577757775)) 
    rounded_mantissa0_carry_i_34
       (.I0(mantissa_out1_carry_i_77_n_0),
        .I1(rounded_mantissa0_carry_i_55_n_0),
        .I2(underflow_OBUF_inst_i_9_n_0),
        .I3(underflow_OBUF_inst_i_10_n_0),
        .I4(underflow_OBUF_inst_i_20_n_0),
        .I5(mantissa_out1_carry_i_9_n_0),
        .O(rounded_mantissa0_carry_i_34_n_0));
  LUT6 #(
    .INIT(64'hFFFFCF44FFFFCF77)) 
    rounded_mantissa0_carry_i_34__1
       (.I0(rounded_mantissa0_carry_i_17__3_n_0),
        .I1(rounded_mantissa0_carry_i_53_0[2]),
        .I2(\a[31]_1 ),
        .I3(rounded_mantissa0_carry_i_53_0[3]),
        .I4(rounded_mantissa0_carry_i_5__4[0]),
        .I5(mantissa_out1_carry_i_77_n_0),
        .O(rounded_mantissa0_carry_i_34__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hF4F7)) 
    rounded_mantissa0_carry_i_34__2
       (.I0(underflow_OBUF_inst_i_15_n_0),
        .I1(rounded_mantissa0_carry_i_53_0[3]),
        .I2(rounded_mantissa0_carry_i_5__4[0]),
        .I3(rounded_mantissa0_carry_i_9__4_n_0),
        .O(rounded_mantissa0_carry_i_34__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hFFFDFFFF)) 
    rounded_mantissa0_carry_i_34__3
       (.I0(CO),
        .I1(rounded_mantissa0_carry_i_5__4[2]),
        .I2(rounded_mantissa0_carry_i_5__4[1]),
        .I3(rounded_mantissa0_carry_i_5__4[3]),
        .I4(rounded_mantissa0_carry_i_54_n_3),
        .O(rounded_mantissa0_carry_i_54_0));
  LUT6 #(
    .INIT(64'h4F7F4F7FFFFF4F7F)) 
    rounded_mantissa0_carry_i_35
       (.I0(underflow_OBUF_inst_i_21_n_0),
        .I1(mantissa_out1_carry_i_11_n_0),
        .I2(mantissa_out1_carry_i_9_n_0),
        .I3(rounded_mantissa0_carry_i_42__2_n_0),
        .I4(rounded_mantissa0_carry_i_70_n_0),
        .I5(rounded_mantissa0_carry_i_55_n_0),
        .O(rounded_mantissa0_carry_i_35_n_0));
  LUT6 #(
    .INIT(64'h7775444577757775)) 
    rounded_mantissa0_carry_i_35__0
       (.I0(mantissa_out1_carry_i_80_n_0),
        .I1(rounded_mantissa0_carry_i_55_n_0),
        .I2(underflow_OBUF_inst_i_9_n_0),
        .I3(underflow_OBUF_inst_i_10_n_0),
        .I4(underflow_OBUF_inst_i_19_n_0),
        .I5(mantissa_out1_carry_i_9_n_0),
        .O(rounded_mantissa0_carry_i_35__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rounded_mantissa0_carry_i_35__1
       (.I0(\mantissa_out1_inferred__1/i__carry__0_0 ),
        .I1(rounded_mantissa0_carry_i_53_0[1]),
        .I2(rounded_mantissa0_carry_i_43__1_n_0),
        .O(rounded_mantissa0_carry_i_35__1_n_0));
  LUT6 #(
    .INIT(64'hDDDDDDDDDDDDFFFD)) 
    rounded_mantissa0_carry_i_35__2
       (.I0(mantissa_out1_carry_i_9_n_0),
        .I1(rounded_mantissa0_carry_i_18__0_0),
        .I2(underflow_OBUF_inst_i_10_n_0),
        .I3(underflow_OBUF_inst_i_9_n_0),
        .I4(\b[31] ),
        .I5(underflow_OBUF_inst_i_8_n_0),
        .O(rounded_mantissa0_carry_i_35__2_n_0));
  LUT6 #(
    .INIT(64'hBBBAFFFFFFFFFFFF)) 
    rounded_mantissa0_carry_i_36
       (.I0(mantissa_out1_carry_i_11_n_0),
        .I1(rounded_mantissa0_carry_i_55_n_0),
        .I2(underflow_OBUF_inst_i_9_n_0),
        .I3(underflow_OBUF_inst_i_10_n_0),
        .I4(rounded_mantissa0_carry_i_24__1_0),
        .I5(mantissa_out1_carry_i_9_n_0),
        .O(rounded_mantissa0_carry_i_36_n_0));
  LUT6 #(
    .INIT(64'hDDDDDDDDDDDDFFFD)) 
    rounded_mantissa0_carry_i_36__0
       (.I0(mantissa_out1_carry_i_9_n_0),
        .I1(underflow_OBUF_inst_i_19_n_0),
        .I2(underflow_OBUF_inst_i_10_n_0),
        .I3(underflow_OBUF_inst_i_9_n_0),
        .I4(\b[31] ),
        .I5(underflow_OBUF_inst_i_8_n_0),
        .O(rounded_mantissa0_carry_i_36__0_n_0));
  LUT6 #(
    .INIT(64'h4445777577757775)) 
    rounded_mantissa0_carry_i_36__1
       (.I0(rounded_mantissa0_carry_i_9__3_n_0),
        .I1(rounded_mantissa0_carry_i_55_n_0),
        .I2(underflow_OBUF_inst_i_9_n_0),
        .I3(underflow_OBUF_inst_i_10_n_0),
        .I4(rounded_mantissa0_carry_i_14__3_n_0),
        .I5(mantissa_out1_carry_i_9_n_0),
        .O(rounded_mantissa0_carry_i_36__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h45)) 
    rounded_mantissa0_carry_i_36__2
       (.I0(\a[31]_0 ),
        .I1(mantissa_out1_carry_i_9_n_0),
        .I2(rounded_mantissa0_carry_i_42__2_n_0),
        .O(rounded_mantissa0_carry_i_36__2_n_0));
  LUT6 #(
    .INIT(64'hFFFFBBBAFFFFFFFF)) 
    rounded_mantissa0_carry_i_37
       (.I0(mantissa_out1_carry_i_11_n_0),
        .I1(rounded_mantissa0_carry_i_55_n_0),
        .I2(underflow_OBUF_inst_i_9_n_0),
        .I3(underflow_OBUF_inst_i_10_n_0),
        .I4(rounded_mantissa0_carry_i_18__0_0),
        .I5(mantissa_out1_carry_i_9_n_0),
        .O(rounded_mantissa0_carry_i_37_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h45)) 
    rounded_mantissa0_carry_i_37__0
       (.I0(rounded_mantissa0_carry_i_11__3_n_0),
        .I1(mantissa_out1_carry_i_9_n_0),
        .I2(underflow_OBUF_inst_i_21_n_0),
        .O(rounded_mantissa0_carry_i_37__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rounded_mantissa0_carry_i_37__1
       (.I0(\b[19] ),
        .I1(\a[19] ),
        .O(rounded_mantissa0_carry_i_37__1_n_0));
  LUT6 #(
    .INIT(64'h777777777777FFF7)) 
    rounded_mantissa0_carry_i_37__2
       (.I0(mantissa_out1_carry_i_9_n_0),
        .I1(rounded_mantissa0_carry_i_14__3_n_0),
        .I2(underflow_OBUF_inst_i_10_n_0),
        .I3(underflow_OBUF_inst_i_9_n_0),
        .I4(\b[31] ),
        .I5(underflow_OBUF_inst_i_8_n_0),
        .O(rounded_mantissa0_carry_i_37__2_n_0));
  LUT6 #(
    .INIT(64'hBBBAFFFFFFFFFFFF)) 
    rounded_mantissa0_carry_i_38
       (.I0(mantissa_out1_carry_i_11_n_0),
        .I1(rounded_mantissa0_carry_i_55_n_0),
        .I2(underflow_OBUF_inst_i_9_n_0),
        .I3(underflow_OBUF_inst_i_10_n_0),
        .I4(\result_OBUF[22]_inst_i_15_n_0 ),
        .I5(mantissa_out1_carry_i_9_n_0),
        .O(rounded_mantissa0_carry_i_38_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h45)) 
    rounded_mantissa0_carry_i_38__0
       (.I0(rounded_mantissa0_carry_i_17__3_n_0),
        .I1(mantissa_out1_carry_i_9_n_0),
        .I2(rounded_mantissa0_carry_i_24__1_0),
        .O(rounded_mantissa0_carry_i_38__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rounded_mantissa0_carry_i_38__1
       (.I0(\b[18] ),
        .I1(\a[18] ),
        .O(rounded_mantissa0_carry_i_38__1_n_0));
  LUT6 #(
    .INIT(64'h777777777777FFF7)) 
    rounded_mantissa0_carry_i_38__2
       (.I0(mantissa_out1_carry_i_9_n_0),
        .I1(rounded_mantissa0_carry_i_42__2_n_0),
        .I2(underflow_OBUF_inst_i_10_n_0),
        .I3(underflow_OBUF_inst_i_9_n_0),
        .I4(\b[31] ),
        .I5(underflow_OBUF_inst_i_8_n_0),
        .O(rounded_mantissa0_carry_i_38__2_n_0));
  LUT6 #(
    .INIT(64'h4445777577757775)) 
    rounded_mantissa0_carry_i_39
       (.I0(mantissa_out1_carry_i_73_n_0),
        .I1(rounded_mantissa0_carry_i_55_n_0),
        .I2(underflow_OBUF_inst_i_9_n_0),
        .I3(underflow_OBUF_inst_i_10_n_0),
        .I4(underflow_OBUF_inst_i_21_n_0),
        .I5(mantissa_out1_carry_i_9_n_0),
        .O(rounded_mantissa0_carry_i_39_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h45)) 
    rounded_mantissa0_carry_i_39__0
       (.I0(underflow_OBUF_inst_i_16_n_0),
        .I1(mantissa_out1_carry_i_9_n_0),
        .I2(mantissa_out1_carry_i_76_n_0),
        .O(rounded_mantissa0_carry_i_39__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rounded_mantissa0_carry_i_39__1
       (.I0(\b[17] ),
        .I1(\a[17] ),
        .O(rounded_mantissa0_carry_i_39__1_n_0));
  LUT6 #(
    .INIT(64'hB8B8FF00FFFFFFFF)) 
    rounded_mantissa0_carry_i_39__2
       (.I0(rounded_mantissa0_carry_i_31__1_n_0),
        .I1(rounded_mantissa0_carry_i_53_0[1]),
        .I2(rounded_mantissa0_carry_i_32__0_n_0),
        .I3(rounded_mantissa0_carry_i_72_n_0),
        .I4(rounded_mantissa0_carry_i_53_0[0]),
        .I5(\mantissa_out1_inferred__1/i__carry__0 ),
        .O(rounded_mantissa0_carry_i_39__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rounded_mantissa0_carry_i_3__0
       (.I0(rounded_mantissa0_carry_i_8__1_n_0),
        .O(rounded_mantissa0_carry_i_7__0_0[2]));
  LUT1 #(
    .INIT(2'h1)) 
    rounded_mantissa0_carry_i_3__1
       (.I0(rounded_mantissa0_carry_i_7__1_n_0),
        .O(rounded_mantissa0_carry_i_5__0_0[1]));
  LUT1 #(
    .INIT(2'h1)) 
    rounded_mantissa0_carry_i_3__2
       (.I0(rounded_mantissa0_carry_i_7__2_n_0),
        .O(rounded_mantissa0_carry_i_5__1_0[1]));
  LUT6 #(
    .INIT(64'hB0BFB0B0B0BFB0BF)) 
    rounded_mantissa0_carry_i_3__3
       (.I0(rounded_mantissa0_carry_i_13__3_n_0),
        .I1(\b[31] ),
        .I2(underflow_OBUF_inst_i_2_n_0),
        .I3(\result_OBUF[22]_inst_i_2_0 ),
        .I4(rounded_mantissa0_carry_i_6__4_n_0),
        .I5(rounded_mantissa0_carry_i_7__4_n_0),
        .O(rounded_mantissa0_carry_i_3__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rounded_mantissa0_carry_i_3__4
       (.I0(rounded_mantissa0_carry_i_7__3_n_0),
        .O(rounded_mantissa0_carry_i_5__3_0[1]));
  LUT1 #(
    .INIT(2'h1)) 
    rounded_mantissa0_carry_i_4
       (.I0(rounded_mantissa0_carry_i_8_n_0),
        .O(rounded_mantissa0_carry_i_5__1_0[0]));
  LUT6 #(
    .INIT(64'hF8FFFBFFFFFFFFFF)) 
    rounded_mantissa0_carry_i_40
       (.I0(rounded_mantissa0_carry_i_18__0_0),
        .I1(mantissa_out1_carry_i_15_n_0),
        .I2(mantissa_out1_carry_i_11_n_0),
        .I3(mantissa_out1_carry_i_13_n_0),
        .I4(\result_OBUF[22]_inst_i_15_n_0 ),
        .I5(mantissa_out1_carry_i_9_n_0),
        .O(rounded_mantissa0_carry_i_40_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h47)) 
    rounded_mantissa0_carry_i_40__0
       (.I0(underflow_OBUF_inst_i_15_n_0),
        .I1(mantissa_out1_carry_i_9_n_0),
        .I2(\result_OBUF[22]_inst_i_15_n_0 ),
        .O(rounded_mantissa0_carry_i_40__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rounded_mantissa0_carry_i_40__1
       (.I0(\b[16] ),
        .I1(\a[16] ),
        .O(rounded_mantissa0_carry_i_40__1_n_0));
  LUT6 #(
    .INIT(64'h777777777777FFF7)) 
    rounded_mantissa0_carry_i_40__2
       (.I0(mantissa_out1_carry_i_9_n_0),
        .I1(rounded_mantissa0_carry_i_24__1_0),
        .I2(underflow_OBUF_inst_i_10_n_0),
        .I3(underflow_OBUF_inst_i_9_n_0),
        .I4(\b[31] ),
        .I5(underflow_OBUF_inst_i_8_n_0),
        .O(rounded_mantissa0_carry_i_40__2_n_0));
  LUT6 #(
    .INIT(64'hF4FFF7FFFFFFFFFF)) 
    rounded_mantissa0_carry_i_41
       (.I0(rounded_mantissa0_carry_i_24__1_0),
        .I1(mantissa_out1_carry_i_15_n_0),
        .I2(mantissa_out1_carry_i_11_n_0),
        .I3(mantissa_out1_carry_i_13_n_0),
        .I4(underflow_OBUF_inst_i_21_n_0),
        .I5(mantissa_out1_carry_i_9_n_0),
        .O(rounded_mantissa0_carry_i_41_n_0));
  LUT5 #(
    .INIT(32'hFFFFF4F7)) 
    rounded_mantissa0_carry_i_41__0
       (.I0(\a[31]_1 ),
        .I1(rounded_mantissa0_carry_i_53_0[2]),
        .I2(rounded_mantissa0_carry_i_53_0[3]),
        .I3(rounded_mantissa0_carry_i_17__3_n_0),
        .I4(rounded_mantissa0_carry_i_5__4[0]),
        .O(\mantissa_out1_inferred__1/i__carry__0_1 ));
  LUT5 #(
    .INIT(32'hFFFFF4F7)) 
    rounded_mantissa0_carry_i_41__1
       (.I0(\b[31] ),
        .I1(rounded_mantissa0_carry_i_53_0[2]),
        .I2(rounded_mantissa0_carry_i_53_0[3]),
        .I3(underflow_OBUF_inst_i_16_n_0),
        .I4(rounded_mantissa0_carry_i_5__4[0]),
        .O(\mantissa_out1_inferred__1/i__carry__0_0 ));
  LUT6 #(
    .INIT(64'h777777777777FFF7)) 
    rounded_mantissa0_carry_i_41__2
       (.I0(mantissa_out1_carry_i_9_n_0),
        .I1(underflow_OBUF_inst_i_20_n_0),
        .I2(underflow_OBUF_inst_i_10_n_0),
        .I3(underflow_OBUF_inst_i_9_n_0),
        .I4(\b[31] ),
        .I5(underflow_OBUF_inst_i_8_n_0),
        .O(rounded_mantissa0_carry_i_41__2_n_0));
  LUT6 #(
    .INIT(64'h0D000D0D0D0D0D0D)) 
    rounded_mantissa0_carry_i_42
       (.I0(rounded_mantissa0_carry_i_24__1_0),
        .I1(mantissa_out1_carry_i_9_n_0),
        .I2(rounded_mantissa0_carry_i_17__3_n_0),
        .I3(rounded_mantissa0_carry_i_55_n_0),
        .I4(rounded_mantissa0_carry_i_70_n_0),
        .I5(underflow_OBUF_inst_i_24_n_0),
        .O(rounded_mantissa0_carry_i_42_n_0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    rounded_mantissa0_carry_i_42__0
       (.I0(rounded_mantissa0_carry_i_33__2_n_0),
        .I1(rounded_mantissa0_carry_i_53_0[2]),
        .I2(rounded_mantissa0_carry_i_34__2_n_0),
        .I3(rounded_mantissa0_carry_i_53_0[1]),
        .I4(rounded_mantissa0_carry_i_68_n_0),
        .O(rounded_mantissa0_carry_i_42__0_n_0));
  LUT5 #(
    .INIT(32'hFFFFF4F7)) 
    rounded_mantissa0_carry_i_42__1
       (.I0(\a[31]_0 ),
        .I1(rounded_mantissa0_carry_i_53_0[2]),
        .I2(rounded_mantissa0_carry_i_53_0[3]),
        .I3(rounded_mantissa0_carry_i_11__3_n_0),
        .I4(rounded_mantissa0_carry_i_5__4[0]),
        .O(rounded_mantissa0_carry_i_42__1_n_0));
  LUT6 #(
    .INIT(64'h08808008A88A8AA8)) 
    rounded_mantissa0_carry_i_42__2
       (.I0(underflow_OBUF_inst_i_4_n_0),
        .I1(\adder/data0 [4]),
        .I2(a_IBUF[31]),
        .I3(op_IBUF[0]),
        .I4(b_IBUF[31]),
        .I5(rounded_mantissa0_carry_i_35_0),
        .O(rounded_mantissa0_carry_i_42__2_n_0));
  LUT6 #(
    .INIT(64'h4F7F4F7FFFFF4F7F)) 
    rounded_mantissa0_carry_i_43
       (.I0(\result_OBUF[22]_inst_i_15_n_0 ),
        .I1(mantissa_out1_carry_i_11_n_0),
        .I2(mantissa_out1_carry_i_9_n_0),
        .I3(rounded_mantissa0_carry_i_14__3_n_0),
        .I4(rounded_mantissa0_carry_i_70_n_0),
        .I5(rounded_mantissa0_carry_i_55_n_0),
        .O(rounded_mantissa0_carry_i_43_n_0));
  LUT6 #(
    .INIT(64'h1D001D1D1D1D1D1D)) 
    rounded_mantissa0_carry_i_43__0
       (.I0(\result_OBUF[22]_inst_i_15_n_0 ),
        .I1(mantissa_out1_carry_i_9_n_0),
        .I2(underflow_OBUF_inst_i_15_n_0),
        .I3(rounded_mantissa0_carry_i_55_n_0),
        .I4(rounded_mantissa0_carry_i_70_n_0),
        .I5(rounded_mantissa0_carry_i_9__4_n_0),
        .O(rounded_mantissa0_carry_i_43__0_n_0));
  LUT5 #(
    .INIT(32'hFFFFF4F7)) 
    rounded_mantissa0_carry_i_43__1
       (.I0(\a[31] ),
        .I1(rounded_mantissa0_carry_i_53_0[2]),
        .I2(rounded_mantissa0_carry_i_53_0[3]),
        .I3(underflow_OBUF_inst_i_15_n_0),
        .I4(rounded_mantissa0_carry_i_5__4[0]),
        .O(rounded_mantissa0_carry_i_43__1_n_0));
  LUT6 #(
    .INIT(64'hFFB800B8FFFFFFFF)) 
    rounded_mantissa0_carry_i_43__2
       (.I0(rounded_mantissa0_carry_i_32__0_n_0),
        .I1(rounded_mantissa0_carry_i_53_0[1]),
        .I2(rounded_mantissa0_carry_i_47_n_0),
        .I3(rounded_mantissa0_carry_i_53_0[0]),
        .I4(rounded_mantissa0_carry_i_72_n_0),
        .I5(\mantissa_out1_inferred__1/i__carry__0 ),
        .O(rounded_mantissa0_carry_i_43__2_n_0));
  LUT6 #(
    .INIT(64'hFFFFCF44FFFFCF77)) 
    rounded_mantissa0_carry_i_44
       (.I0(underflow_OBUF_inst_i_16_n_0),
        .I1(rounded_mantissa0_carry_i_53_0[2]),
        .I2(\b[31] ),
        .I3(rounded_mantissa0_carry_i_53_0[3]),
        .I4(rounded_mantissa0_carry_i_5__4[0]),
        .I5(mantissa_out1_carry_i_80_n_0),
        .O(rounded_mantissa0_carry_i_44_n_0));
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    rounded_mantissa0_carry_i_44__0
       (.I0(mantissa_out1_carry_i_9_n_0),
        .I1(\result_OBUF[22]_inst_i_15_n_0 ),
        .I2(mantissa_out1_carry_i_13_n_0),
        .I3(mantissa_out1_carry_i_11_n_0),
        .I4(mantissa_out1_carry_i_15_n_0),
        .O(rounded_mantissa0_carry_i_44__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rounded_mantissa0_carry_i_45
       (.I0(rounded_mantissa0_carry_i_42__1_n_0),
        .I1(rounded_mantissa0_carry_i_53_0[1]),
        .I2(rounded_mantissa0_carry_i_34__1_n_0),
        .O(rounded_mantissa0_carry_i_45_n_0));
  CARRY4 rounded_mantissa0_carry_i_46
       (.CI(1'b0),
        .CO({rounded_mantissa0_carry_i_46_n_0,rounded_mantissa0_carry_i_46_n_1,rounded_mantissa0_carry_i_46_n_2,rounded_mantissa0_carry_i_46_n_3}),
        .CYINIT(1'b0),
        .DI({sum_result1_carry_i_16_n_0,sum_result1_carry_i_15_n_0,sum_result1_carry_i_18_n_0,rounded_mantissa0_carry_i_73_n_0}),
        .O({O,\adder/data0 [1:0]}),
        .S({rounded_mantissa0_carry_i_74_n_0,rounded_mantissa0_carry_i_75_n_0,rounded_mantissa0_carry_i_76_n_0,rounded_mantissa0_carry_i_77_n_0}));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8BB8888)) 
    rounded_mantissa0_carry_i_47
       (.I0(rounded_mantissa0_carry_i_66_n_0),
        .I1(rounded_mantissa0_carry_i_53_0[2]),
        .I2(rounded_mantissa0_carry_i_5__4[0]),
        .I3(underflow_OBUF_inst_i_24_n_0),
        .I4(rounded_mantissa0_carry_i_53_0[3]),
        .I5(rounded_mantissa0_carry_i_78_n_0),
        .O(rounded_mantissa0_carry_i_47_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    rounded_mantissa0_carry_i_48
       (.I0(rounded_mantissa0_carry_i_51_n_0),
        .I1(rounded_mantissa0_carry_i_53_0[1]),
        .I2(rounded_mantissa0_carry_i_79_n_0),
        .I3(rounded_mantissa0_carry_i_53_0[2]),
        .I4(rounded_mantissa0_carry_i_80_n_0),
        .O(rounded_mantissa0_carry_i_48_n_0));
  LUT6 #(
    .INIT(64'h777777777777FFF7)) 
    rounded_mantissa0_carry_i_49
       (.I0(mantissa_out1_carry_i_9_n_0),
        .I1(\result_OBUF[22]_inst_i_15_n_0 ),
        .I2(underflow_OBUF_inst_i_10_n_0),
        .I3(underflow_OBUF_inst_i_9_n_0),
        .I4(\b[31] ),
        .I5(underflow_OBUF_inst_i_8_n_0),
        .O(rounded_mantissa0_carry_i_49_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rounded_mantissa0_carry_i_4__0
       (.I0(rounded_mantissa0_carry_i_8__0_n_0),
        .O(rounded_mantissa0_carry_i_5_0[0]));
  LUT1 #(
    .INIT(2'h1)) 
    rounded_mantissa0_carry_i_4__1
       (.I0(rounded_mantissa0_carry_i_9_n_0),
        .O(rounded_mantissa0_carry_i_7__0_0[1]));
  LUT1 #(
    .INIT(2'h1)) 
    rounded_mantissa0_carry_i_4__2
       (.I0(rounded_mantissa0_carry_i_8__2_n_0),
        .O(rounded_mantissa0_carry_i_5__3_0[0]));
  LUT1 #(
    .INIT(2'h1)) 
    rounded_mantissa0_carry_i_4__3
       (.I0(rounded_mantissa0_carry_i_8__3_n_0),
        .O(rounded_mantissa0_carry_i_5__0_0[0]));
  LUT6 #(
    .INIT(64'hB0B0B0B0BFBFBFB0)) 
    rounded_mantissa0_carry_i_4__4
       (.I0(rounded_mantissa0_carry_i_13__3_n_0),
        .I1(\a[31]_1 ),
        .I2(underflow_OBUF_inst_i_2_n_0),
        .I3(rounded_mantissa0_carry_i_9__1_n_0),
        .I4(CO),
        .I5(\result_OBUF[30]_inst_i_46_0 ),
        .O(rounded_mantissa0_carry_i_4__4_n_0));
  LUT5 #(
    .INIT(32'hBBBB000F)) 
    rounded_mantissa0_carry_i_5
       (.I0(rounded_mantissa0_carry_i_13__3_n_0),
        .I1(rounded_mantissa0_carry_i_9__4_n_0),
        .I2(rounded_mantissa0_carry_i_10__4_n_0),
        .I3(rounded_mantissa0_carry_i_11__4_n_0),
        .I4(underflow_OBUF_inst_i_2_n_0),
        .O(rounded_mantissa0_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h777777777777FFF7)) 
    rounded_mantissa0_carry_i_50
       (.I0(mantissa_out1_carry_i_9_n_0),
        .I1(underflow_OBUF_inst_i_21_n_0),
        .I2(underflow_OBUF_inst_i_10_n_0),
        .I3(underflow_OBUF_inst_i_9_n_0),
        .I4(\b[31] ),
        .I5(underflow_OBUF_inst_i_8_n_0),
        .O(rounded_mantissa0_carry_i_50_n_0));
  LUT6 #(
    .INIT(64'hBB8B8888BBBBBBBB)) 
    rounded_mantissa0_carry_i_51
       (.I0(rounded_mantissa0_carry_i_81_n_0),
        .I1(rounded_mantissa0_carry_i_53_0[2]),
        .I2(underflow_OBUF_inst_i_23_n_0),
        .I3(rounded_mantissa0_carry_i_5__4[0]),
        .I4(rounded_mantissa0_carry_i_53_0[3]),
        .I5(rounded_mantissa0_carry_i_82_n_0),
        .O(rounded_mantissa0_carry_i_51_n_0));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8BB8888)) 
    rounded_mantissa0_carry_i_52
       (.I0(rounded_mantissa0_carry_i_79_n_0),
        .I1(rounded_mantissa0_carry_i_53_0[2]),
        .I2(rounded_mantissa0_carry_i_5__4[0]),
        .I3(rounded_mantissa0_carry_i_9__4_n_0),
        .I4(rounded_mantissa0_carry_i_53_0[3]),
        .I5(rounded_mantissa0_carry_i_83_n_0),
        .O(rounded_mantissa0_carry_i_52_n_0));
  LUT4 #(
    .INIT(16'h0074)) 
    rounded_mantissa0_carry_i_53
       (.I0(rounded_mantissa0_carry_i_67_n_0),
        .I1(rounded_mantissa0_carry_i_53_0[2]),
        .I2(rounded_mantissa0_carry_i_84_n_0),
        .I3(rounded_mantissa0_carry_i_53_0[1]),
        .O(rounded_mantissa0_carry_i_53_n_0));
  CARRY4 rounded_mantissa0_carry_i_54
       (.CI(rounded_mantissa0_carry_i_25__3_0),
        .CO({NLW_rounded_mantissa0_carry_i_54_CO_UNCONNECTED[3:1],rounded_mantissa0_carry_i_54_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rounded_mantissa0_carry_i_54_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    rounded_mantissa0_carry_i_55
       (.I0(\b[31] ),
        .I1(\a[31]_1 ),
        .I2(\a[31]_0 ),
        .I3(\a[31] ),
        .I4(mantissa_out1_carry_i_23_n_0),
        .O(rounded_mantissa0_carry_i_55_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rounded_mantissa0_carry_i_56
       (.I0(a_IBUF[27]),
        .I1(final_exp1__0__0),
        .I2(b_IBUF[27]),
        .O(rounded_mantissa0_carry_i_56_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rounded_mantissa0_carry_i_57
       (.I0(a_IBUF[25]),
        .I1(final_exp1__0__0),
        .I2(b_IBUF[25]),
        .O(rounded_mantissa0_carry_i_57_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    rounded_mantissa0_carry_i_58
       (.I0(a_IBUF[24]),
        .I1(final_exp1__0__0),
        .I2(b_IBUF[24]),
        .O(rounded_mantissa0_carry_i_58_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rounded_mantissa0_carry_i_59
       (.I0(a_IBUF[23]),
        .I1(final_exp1__0__0),
        .I2(b_IBUF[23]),
        .O(rounded_mantissa0_carry_i_59_n_0));
  MUXF7 rounded_mantissa0_carry_i_5__0
       (.I0(rounded_mantissa0_carry_i_9__0_n_0),
        .I1(rounded_mantissa0_carry_i_10__2_n_0),
        .O(rounded_mantissa0_carry_i_5__0_n_0),
        .S(underflow_OBUF_inst_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hBBF0)) 
    rounded_mantissa0_carry_i_5__1
       (.I0(rounded_mantissa0_carry_i_13__3_n_0),
        .I1(rounded_mantissa0_carry_i_9__3_n_0),
        .I2(rounded_mantissa0_carry_i_10_n_0),
        .I3(underflow_OBUF_inst_i_2_n_0),
        .O(rounded_mantissa0_carry_i_5__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rounded_mantissa0_carry_i_5__2
       (.I0(rounded_mantissa0_carry_i_10__0_n_0),
        .O(rounded_mantissa0_carry_i_7__0_0[0]));
  LUT6 #(
    .INIT(64'hB0BFB0BFB0BFB0B0)) 
    rounded_mantissa0_carry_i_5__3
       (.I0(rounded_mantissa0_carry_i_13__3_n_0),
        .I1(\a[31] ),
        .I2(underflow_OBUF_inst_i_2_n_0),
        .I3(rounded_mantissa0_carry_i_10__1_n_0),
        .I4(rounded_mantissa0_carry_i_11__0_n_0),
        .I5(CO),
        .O(rounded_mantissa0_carry_i_5__3_n_0));
  MUXF7 rounded_mantissa0_carry_i_6
       (.I0(rounded_mantissa0_carry_i_12_n_0),
        .I1(rounded_mantissa0_carry_i_13__2_n_0),
        .O(rounded_mantissa0_carry_i_6_n_0),
        .S(underflow_OBUF_inst_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rounded_mantissa0_carry_i_60
       (.I0(a_IBUF[26]),
        .I1(final_exp1__0__0),
        .I2(b_IBUF[26]),
        .O(rounded_mantissa0_carry_i_60_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    rounded_mantissa0_carry_i_61
       (.I0(sum_result1_carry__0),
        .I1(sum_result1_carry_i_12_n_0),
        .O(rounded_mantissa0_carry_i_61_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rounded_mantissa0_carry_i_62
       (.I0(sum_result1_carry_i_10_n_0),
        .I1(\a[7] ),
        .O(rounded_mantissa0_carry_i_62_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rounded_mantissa0_carry_i_63
       (.I0(sum_result1_carry_i_9_n_0),
        .I1(\a[6] ),
        .O(rounded_mantissa0_carry_i_63_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rounded_mantissa0_carry_i_64
       (.I0(sum_result1_carry_i_13_n_0),
        .I1(\a[5] ),
        .O(rounded_mantissa0_carry_i_64_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    rounded_mantissa0_carry_i_65
       (.I0(sum_result1_carry__0),
        .I1(sum_result1_carry_i_12_n_0),
        .I2(sum_result1_carry_i_11_n_0),
        .O(rounded_mantissa0_carry_i_65_n_0));
  LUT6 #(
    .INIT(64'hFCBBFC88FFFFFFFF)) 
    rounded_mantissa0_carry_i_66
       (.I0(mantissa_out1_carry_i_58_n_0),
        .I1(rounded_mantissa0_carry_i_53_0[3]),
        .I2(mantissa_out1_carry_i_41_n_0),
        .I3(rounded_mantissa0_carry_i_5__4[0]),
        .I4(mantissa_out1_carry_i_65_n_0),
        .I5(underflow_OBUF_inst_i_4_n_0),
        .O(rounded_mantissa0_carry_i_66_n_0));
  LUT6 #(
    .INIT(64'hFCBBFC88FFFFFFFF)) 
    rounded_mantissa0_carry_i_67
       (.I0(mantissa_out1_carry_i_60_n_0),
        .I1(rounded_mantissa0_carry_i_53_0[3]),
        .I2(mantissa_out1_carry_i_40_n_0),
        .I3(rounded_mantissa0_carry_i_5__4[0]),
        .I4(mantissa_out1_carry_i_67_n_0),
        .I5(underflow_OBUF_inst_i_4_n_0),
        .O(rounded_mantissa0_carry_i_67_n_0));
  LUT6 #(
    .INIT(64'hFF47FFFFFF470000)) 
    rounded_mantissa0_carry_i_68
       (.I0(underflow_OBUF_inst_i_16_n_0),
        .I1(rounded_mantissa0_carry_i_53_0[3]),
        .I2(underflow_OBUF_inst_i_23_n_0),
        .I3(rounded_mantissa0_carry_i_5__4[0]),
        .I4(rounded_mantissa0_carry_i_53_0[2]),
        .I5(rounded_mantissa0_carry_i_81_n_0),
        .O(rounded_mantissa0_carry_i_68_n_0));
  LUT6 #(
    .INIT(64'hF4F7FFFFF4F70000)) 
    rounded_mantissa0_carry_i_69
       (.I0(underflow_OBUF_inst_i_15_n_0),
        .I1(rounded_mantissa0_carry_i_53_0[3]),
        .I2(rounded_mantissa0_carry_i_5__4[0]),
        .I3(rounded_mantissa0_carry_i_9__4_n_0),
        .I4(rounded_mantissa0_carry_i_53_0[2]),
        .I5(rounded_mantissa0_carry_i_79_n_0),
        .O(rounded_mantissa0_carry_i_69_n_0));
  LUT6 #(
    .INIT(64'hB0B0B0B0BFBFBFB0)) 
    rounded_mantissa0_carry_i_6__0
       (.I0(rounded_mantissa0_carry_i_13__3_n_0),
        .I1(rounded_mantissa0_carry_i_11__3_n_0),
        .I2(underflow_OBUF_inst_i_2_n_0),
        .I3(rounded_mantissa0_carry_i_12__0_n_0),
        .I4(CO),
        .I5(rounded_mantissa0_carry_i_13__4_n_0),
        .O(rounded_mantissa0_carry_i_6__0_n_0));
  MUXF7 rounded_mantissa0_carry_i_6__1
       (.I0(rounded_mantissa0_carry_i_11_n_0),
        .I1(rounded_mantissa0_carry_i_12__3_n_0),
        .O(rounded_mantissa0_carry_i_6__1_n_0),
        .S(underflow_OBUF_inst_i_2_n_0));
  MUXF7 rounded_mantissa0_carry_i_6__2
       (.I0(rounded_mantissa0_carry_i_11__1_n_0),
        .I1(rounded_mantissa0_carry_i_12__1_n_0),
        .O(rounded_mantissa0_carry_i_6__2_n_0),
        .S(underflow_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'hB0BFB0BFB0BFB0B0)) 
    rounded_mantissa0_carry_i_6__3
       (.I0(rounded_mantissa0_carry_i_13__3_n_0),
        .I1(\a[31]_0 ),
        .I2(underflow_OBUF_inst_i_2_n_0),
        .I3(\result_OBUF[30]_inst_i_46_1 ),
        .I4(rounded_mantissa0_carry_i_14__1_n_0),
        .I5(CO),
        .O(rounded_mantissa0_carry_i_6__3_n_0));
  LUT4 #(
    .INIT(16'h4440)) 
    rounded_mantissa0_carry_i_6__4
       (.I0(rounded_mantissa0_carry_i_13__0_n_0),
        .I1(rounded_mantissa0_carry_i_14__2_n_0),
        .I2(rounded_mantissa0_carry_i_23__1_n_0),
        .I3(mantissa_out1_carry_i_15_n_0),
        .O(rounded_mantissa0_carry_i_6__4_n_0));
  MUXF7 rounded_mantissa0_carry_i_7
       (.I0(rounded_mantissa0_carry_i_14_n_0),
        .I1(rounded_mantissa0_carry_i_15__3_n_0),
        .O(rounded_mantissa0_carry_i_7_n_0),
        .S(underflow_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFEFFFE)) 
    rounded_mantissa0_carry_i_70
       (.I0(mantissa_out1_carry_i_22_n_0),
        .I1(mantissa_out1_carry_i_21_n_0),
        .I2(mantissa_out1_carry_i_20_n_0),
        .I3(mantissa_out1_carry_i_19_n_0),
        .I4(mantissa_out1_carry_i_27_n_0),
        .I5(mantissa_out1_carry_i_26_n_0),
        .O(rounded_mantissa0_carry_i_70_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rounded_mantissa0_carry_i_72
       (.I0(rounded_mantissa0_carry_i_69_n_0),
        .I1(rounded_mantissa0_carry_i_53_0[1]),
        .I2(rounded_mantissa0_carry_i_51_n_0),
        .O(rounded_mantissa0_carry_i_72_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rounded_mantissa0_carry_i_73
       (.I0(\b[3] [0]),
        .O(rounded_mantissa0_carry_i_73_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rounded_mantissa0_carry_i_74
       (.I0(sum_result1_carry_i_17_n_0),
        .I1(sum_result1_carry_i_16_n_0),
        .O(rounded_mantissa0_carry_i_74_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rounded_mantissa0_carry_i_75
       (.I0(sum_result1_carry_i_14_n_0),
        .I1(sum_result1_carry_i_15_n_0),
        .O(rounded_mantissa0_carry_i_75_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rounded_mantissa0_carry_i_76
       (.I0(sum_result1_carry_i_19_n_0),
        .I1(sum_result1_carry_i_18_n_0),
        .O(rounded_mantissa0_carry_i_76_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rounded_mantissa0_carry_i_77
       (.I0(\a[3] [0]),
        .I1(\b[3] [0]),
        .O(rounded_mantissa0_carry_i_77_n_0));
  LUT5 #(
    .INIT(32'hBFBFBFB0)) 
    rounded_mantissa0_carry_i_78
       (.I0(mantissa_out1_carry_i_53_n_0),
        .I1(underflow_OBUF_inst_i_4_n_0),
        .I2(rounded_mantissa0_carry_i_5__4[0]),
        .I3(mantissa_out1_carry_i_69_n_0),
        .I4(\result[23] ),
        .O(rounded_mantissa0_carry_i_78_n_0));
  LUT6 #(
    .INIT(64'hFCBBFC88FFFFFFFF)) 
    rounded_mantissa0_carry_i_79
       (.I0(mantissa_out1_carry_i_59_n_0),
        .I1(rounded_mantissa0_carry_i_53_0[3]),
        .I2(mantissa_out1_carry_i_39_n_0),
        .I3(rounded_mantissa0_carry_i_5__4[0]),
        .I4(mantissa_out1_carry_i_68_n_0),
        .I5(underflow_OBUF_inst_i_4_n_0),
        .O(rounded_mantissa0_carry_i_79_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBB0F0F0F00)) 
    rounded_mantissa0_carry_i_7__0
       (.I0(rounded_mantissa0_carry_i_13__3_n_0),
        .I1(rounded_mantissa0_carry_i_14__3_n_0),
        .I2(rounded_mantissa0_carry_i_15__4_n_0),
        .I3(rounded_mantissa0_carry_i_16__0_n_0),
        .I4(CO),
        .I5(underflow_OBUF_inst_i_2_n_0),
        .O(rounded_mantissa0_carry_i_7__0_n_0));
  MUXF7 rounded_mantissa0_carry_i_7__1
       (.I0(rounded_mantissa0_carry_i_14__0_n_0),
        .I1(rounded_mantissa0_carry_i_15__2_n_0),
        .O(rounded_mantissa0_carry_i_7__1_n_0),
        .S(underflow_OBUF_inst_i_2_n_0));
  MUXF7 rounded_mantissa0_carry_i_7__2
       (.I0(rounded_mantissa0_carry_i_13_n_0),
        .I1(rounded_mantissa0_carry_i_14__4_n_0),
        .O(rounded_mantissa0_carry_i_7__2_n_0),
        .S(underflow_OBUF_inst_i_2_n_0));
  MUXF7 rounded_mantissa0_carry_i_7__3
       (.I0(rounded_mantissa0_carry_i_15__0_n_0),
        .I1(rounded_mantissa0_carry_i_16__2_n_0),
        .O(rounded_mantissa0_carry_i_7__3_n_0),
        .S(underflow_OBUF_inst_i_2_n_0));
  LUT5 #(
    .INIT(32'h45444555)) 
    rounded_mantissa0_carry_i_7__4
       (.I0(CO),
        .I1(mantissa_out1_carry_i_17_n_0),
        .I2(rounded_mantissa0_carry_i_15__1_n_0),
        .I3(mantissa_out1_carry_i_15_n_0),
        .I4(rounded_mantissa0_carry_i_25__1_n_0),
        .O(rounded_mantissa0_carry_i_7__4_n_0));
  MUXF7 rounded_mantissa0_carry_i_8
       (.I0(rounded_mantissa0_carry_i_15_n_0),
        .I1(rounded_mantissa0_carry_i_16__3_n_0),
        .O(rounded_mantissa0_carry_i_8_n_0),
        .S(underflow_OBUF_inst_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    rounded_mantissa0_carry_i_80
       (.I0(rounded_mantissa0_carry_i_9__4_n_0),
        .I1(rounded_mantissa0_carry_i_53_0[3]),
        .I2(underflow_OBUF_inst_i_15_n_0),
        .I3(rounded_mantissa0_carry_i_5__4[0]),
        .I4(\result_OBUF[22]_inst_i_15_n_0 ),
        .O(rounded_mantissa0_carry_i_80_n_0));
  LUT6 #(
    .INIT(64'hCFBBCF88FFFFFFFF)) 
    rounded_mantissa0_carry_i_81
       (.I0(mantissa_out1_carry_i_57_n_0),
        .I1(rounded_mantissa0_carry_i_53_0[3]),
        .I2(mantissa_out1_carry_i_38_n_0),
        .I3(rounded_mantissa0_carry_i_5__4[0]),
        .I4(mantissa_out1_carry_i_66_n_0),
        .I5(underflow_OBUF_inst_i_4_n_0),
        .O(rounded_mantissa0_carry_i_81_n_0));
  LUT6 #(
    .INIT(64'hAAABFFABAAABAAAB)) 
    rounded_mantissa0_carry_i_82
       (.I0(rounded_mantissa0_carry_i_53_0[3]),
        .I1(\result[23] ),
        .I2(mantissa_out1_carry_i_70_n_0),
        .I3(rounded_mantissa0_carry_i_5__4[0]),
        .I4(mantissa_out1_carry_i_54_n_0),
        .I5(underflow_OBUF_inst_i_4_n_0),
        .O(rounded_mantissa0_carry_i_82_n_0));
  LUT5 #(
    .INIT(32'hBFBFBFB0)) 
    rounded_mantissa0_carry_i_83
       (.I0(mantissa_out1_carry_i_55_n_0),
        .I1(underflow_OBUF_inst_i_4_n_0),
        .I2(rounded_mantissa0_carry_i_5__4[0]),
        .I3(mantissa_out1_carry_i_71_n_0),
        .I4(\result[23] ),
        .O(rounded_mantissa0_carry_i_83_n_0));
  LUT6 #(
    .INIT(64'h0344000003770000)) 
    rounded_mantissa0_carry_i_84
       (.I0(mantissa_out1_carry_i_63_n_0),
        .I1(rounded_mantissa0_carry_i_53_0[3]),
        .I2(mantissa_out1_carry_i_56_n_0),
        .I3(rounded_mantissa0_carry_i_5__4[0]),
        .I4(underflow_OBUF_inst_i_4_n_0),
        .I5(mantissa_out1_carry_i_72_n_0),
        .O(rounded_mantissa0_carry_i_84_n_0));
  MUXF7 rounded_mantissa0_carry_i_8__0
       (.I0(rounded_mantissa0_carry_i_16_n_0),
        .I1(rounded_mantissa0_carry_i_17__1_n_0),
        .O(rounded_mantissa0_carry_i_8__0_n_0),
        .S(underflow_OBUF_inst_i_2_n_0));
  MUXF7 rounded_mantissa0_carry_i_8__1
       (.I0(rounded_mantissa0_carry_i_17_n_0),
        .I1(rounded_mantissa0_carry_i_18__3_n_0),
        .O(rounded_mantissa0_carry_i_8__1_n_0),
        .S(underflow_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'hB0B0B0B0BFBFBFB0)) 
    rounded_mantissa0_carry_i_8__2
       (.I0(rounded_mantissa0_carry_i_13__3_n_0),
        .I1(rounded_mantissa0_carry_i_17__3_n_0),
        .I2(underflow_OBUF_inst_i_2_n_0),
        .I3(rounded_mantissa0_carry_i_18_n_0),
        .I4(CO),
        .I5(rounded_mantissa0_carry_i_19__3_n_0),
        .O(rounded_mantissa0_carry_i_8__2_n_0));
  MUXF7 rounded_mantissa0_carry_i_8__3
       (.I0(rounded_mantissa0_carry_i_16__1_n_0),
        .I1(rounded_mantissa0_carry_i_17__4_n_0),
        .O(rounded_mantissa0_carry_i_8__3_n_0),
        .S(underflow_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'h08808008A88A8AA8)) 
    rounded_mantissa0_carry_i_8__4
       (.I0(underflow_OBUF_inst_i_4_n_0),
        .I1(\adder/data0 [22]),
        .I2(a_IBUF[31]),
        .I3(op_IBUF[0]),
        .I4(b_IBUF[31]),
        .I5(rounded_mantissa0_carry_i_16__4_n_0),
        .O(\a[31]_1 ));
  MUXF7 rounded_mantissa0_carry_i_9
       (.I0(rounded_mantissa0_carry_i_19_n_0),
        .I1(rounded_mantissa0_carry_i_20__1_n_0),
        .O(rounded_mantissa0_carry_i_9_n_0),
        .S(underflow_OBUF_inst_i_2_n_0));
  LUT5 #(
    .INIT(32'hAAAA8A80)) 
    rounded_mantissa0_carry_i_9__0
       (.I0(rounded_mantissa0_carry_i_18__1_n_0),
        .I1(rounded_mantissa0_carry_i_19__0_n_0),
        .I2(mantissa_out1_carry_i_17_n_0),
        .I3(rounded_mantissa0_carry_i_20__0_n_0),
        .I4(CO),
        .O(rounded_mantissa0_carry_i_9__0_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rounded_mantissa0_carry_i_9__1
       (.I0(rounded_mantissa0_carry_i_15__1_n_0),
        .I1(rounded_mantissa0_carry_i_25__1_n_0),
        .I2(mantissa_out1_carry_i_17_n_0),
        .I3(rounded_mantissa0_carry_i_23__1_n_0),
        .I4(mantissa_out1_carry_i_15_n_0),
        .I5(rounded_mantissa0_carry_i_24__1_n_0),
        .O(rounded_mantissa0_carry_i_9__1_n_0));
  LUT6 #(
    .INIT(64'h08808008A88A8AA8)) 
    rounded_mantissa0_carry_i_9__2
       (.I0(underflow_OBUF_inst_i_4_n_0),
        .I1(\adder/data0 [21]),
        .I2(a_IBUF[31]),
        .I3(op_IBUF[0]),
        .I4(b_IBUF[31]),
        .I5(rounded_mantissa0_carry_i_20__3_n_0),
        .O(\a[31] ));
  LUT6 #(
    .INIT(64'h08808008A88A8AA8)) 
    rounded_mantissa0_carry_i_9__3
       (.I0(underflow_OBUF_inst_i_4_n_0),
        .I1(\adder/data0 [13]),
        .I2(a_IBUF[31]),
        .I3(op_IBUF[0]),
        .I4(b_IBUF[31]),
        .I5(\result_OBUF[30]_inst_i_43_0 ),
        .O(rounded_mantissa0_carry_i_9__3_n_0));
  LUT6 #(
    .INIT(64'h08808008A88A8AA8)) 
    rounded_mantissa0_carry_i_9__4
       (.I0(underflow_OBUF_inst_i_4_n_0),
        .I1(\adder/data0 [9]),
        .I2(a_IBUF[31]),
        .I3(op_IBUF[0]),
        .I4(b_IBUF[31]),
        .I5(rounded_mantissa0_carry_i_5_1),
        .O(rounded_mantissa0_carry_i_9__4_n_0));
  LUT6 #(
    .INIT(64'h00000000EAEA00EA)) 
    sum_result0_carry__0_i_1
       (.I0(sum_result0_carry__0_i_9_n_0),
        .I1(sum_result0_carry__0_i_10_n_0),
        .I2(sum_result0_carry__0_i_11_n_0),
        .I3(final_exp1__0__0),
        .I4(a_IBUF[7]),
        .I5(sum_result1_carry__0),
        .O(\a[7] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    sum_result0_carry__0_i_10
       (.I0(aligned_mantissa_a11_out[5]),
        .I1(aligned_mantissa_a11_out[6]),
        .I2(aligned_mantissa_a11_out[7]),
        .I3(aligned_mantissa_a11_out[0]),
        .O(sum_result0_carry__0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sum_result0_carry__0_i_11
       (.I0(sum_result0_carry__0_i_16_n_0),
        .I1(aligned_mantissa_a11_out[1]),
        .I2(sum_result0_carry__0_i_17_n_0),
        .O(sum_result0_carry__0_i_11_n_0));
  LUT5 #(
    .INIT(32'hFFFDFFFF)) 
    sum_result0_carry__0_i_12
       (.I0(aligned_mantissa_a11_out[0]),
        .I1(aligned_mantissa_a11_out[7]),
        .I2(aligned_mantissa_a11_out[6]),
        .I3(aligned_mantissa_a11_out[5]),
        .I4(sum_result0_carry__0_i_11_n_0),
        .O(sum_result0_carry__0_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sum_result0_carry__0_i_13
       (.I0(sum_result0_carry__0_i_18_n_0),
        .I1(aligned_mantissa_a11_out[1]),
        .I2(sum_result0_carry__0_i_19_n_0),
        .O(sum_result0_carry__0_i_13_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAAA)) 
    sum_result0_carry__0_i_14
       (.I0(final_exp1__0__0),
        .I1(sum_result0_carry__0_i_13_n_0),
        .I2(aligned_mantissa_a11_out[5]),
        .I3(aligned_mantissa_a11_out[6]),
        .I4(aligned_mantissa_a11_out[7]),
        .I5(aligned_mantissa_a11_out[0]),
        .O(sum_result0_carry__0_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sum_result0_carry__0_i_15
       (.I0(sum_result0_carry__0_i_17_n_0),
        .I1(aligned_mantissa_a11_out[1]),
        .I2(sum_result0_carry__0_i_20_n_0),
        .O(sum_result0_carry__0_i_15_n_0));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    sum_result0_carry__0_i_16
       (.I0(a_IBUF[21]),
        .I1(aligned_mantissa_a11_out[3]),
        .I2(a_IBUF[13]),
        .I3(aligned_mantissa_a11_out[4]),
        .I4(aligned_mantissa_a11_out[2]),
        .I5(sum_result0_carry__0_i_21_n_0),
        .O(sum_result0_carry__0_i_16_n_0));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    sum_result0_carry__0_i_17
       (.I0(a_IBUF[19]),
        .I1(aligned_mantissa_a11_out[3]),
        .I2(a_IBUF[11]),
        .I3(aligned_mantissa_a11_out[4]),
        .I4(aligned_mantissa_a11_out[2]),
        .I5(sum_result0_carry_i_22_n_0),
        .O(sum_result0_carry__0_i_17_n_0));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    sum_result0_carry__0_i_18
       (.I0(a_IBUF[20]),
        .I1(aligned_mantissa_a11_out[3]),
        .I2(a_IBUF[12]),
        .I3(aligned_mantissa_a11_out[4]),
        .I4(aligned_mantissa_a11_out[2]),
        .I5(sum_result0_carry__0_i_22_n_0),
        .O(sum_result0_carry__0_i_18_n_0));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    sum_result0_carry__0_i_19
       (.I0(a_IBUF[18]),
        .I1(aligned_mantissa_a11_out[3]),
        .I2(a_IBUF[10]),
        .I3(aligned_mantissa_a11_out[4]),
        .I4(aligned_mantissa_a11_out[2]),
        .I5(sum_result0_carry_i_25_n_0),
        .O(sum_result0_carry__0_i_19_n_0));
  LUT6 #(
    .INIT(64'h5555511100005111)) 
    sum_result0_carry__0_i_2
       (.I0(sum_result1_carry__0),
        .I1(sum_result0_carry__0_i_12_n_0),
        .I2(sum_result0_carry__0_i_10_n_0),
        .I3(sum_result0_carry__0_i_13_n_0),
        .I4(final_exp1__0__0),
        .I5(a_IBUF[6]),
        .O(\a[6] ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    sum_result0_carry__0_i_20
       (.I0(a_IBUF[17]),
        .I1(aligned_mantissa_a11_out[3]),
        .I2(a_IBUF[9]),
        .I3(aligned_mantissa_a11_out[4]),
        .I4(aligned_mantissa_a11_out[2]),
        .I5(sum_result0_carry_i_26_n_0),
        .O(sum_result0_carry__0_i_20_n_0));
  LUT4 #(
    .INIT(16'h00B8)) 
    sum_result0_carry__0_i_21
       (.I0(a_IBUF[17]),
        .I1(aligned_mantissa_a11_out[3]),
        .I2(a_IBUF[9]),
        .I3(aligned_mantissa_a11_out[4]),
        .O(sum_result0_carry__0_i_21_n_0));
  LUT4 #(
    .INIT(16'h00B8)) 
    sum_result0_carry__0_i_22
       (.I0(a_IBUF[16]),
        .I1(aligned_mantissa_a11_out[3]),
        .I2(a_IBUF[8]),
        .I3(aligned_mantissa_a11_out[4]),
        .O(sum_result0_carry__0_i_22_n_0));
  LUT6 #(
    .INIT(64'h00000000EAEA00EA)) 
    sum_result0_carry__0_i_3
       (.I0(sum_result0_carry__0_i_14_n_0),
        .I1(sum_result0_carry__0_i_10_n_0),
        .I2(sum_result0_carry__0_i_15_n_0),
        .I3(final_exp1__0__0),
        .I4(a_IBUF[5]),
        .I5(sum_result1_carry__0),
        .O(\a[5] ));
  LUT2 #(
    .INIT(4'h1)) 
    sum_result0_carry__0_i_4
       (.I0(sum_result1_carry__0),
        .I1(sum_result1_carry_i_12_n_0),
        .O(sum_result1_carry_i_12_0));
  LUT2 #(
    .INIT(4'h9)) 
    sum_result0_carry__0_i_5
       (.I0(sum_result1_carry_i_10_n_0),
        .I1(\a[7] ),
        .O(sum_result0_carry__0_i_1_0[3]));
  LUT2 #(
    .INIT(4'h9)) 
    sum_result0_carry__0_i_6
       (.I0(sum_result1_carry_i_9_n_0),
        .I1(\a[6] ),
        .O(sum_result0_carry__0_i_1_0[2]));
  LUT2 #(
    .INIT(4'h9)) 
    sum_result0_carry__0_i_7
       (.I0(sum_result1_carry_i_13_n_0),
        .I1(\a[5] ),
        .O(sum_result0_carry__0_i_1_0[1]));
  LUT3 #(
    .INIT(8'h1E)) 
    sum_result0_carry__0_i_8
       (.I0(sum_result1_carry__0),
        .I1(sum_result1_carry_i_12_n_0),
        .I2(sum_result1_carry_i_11_n_0),
        .O(sum_result0_carry__0_i_1_0[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAAA)) 
    sum_result0_carry__0_i_9
       (.I0(final_exp1__0__0),
        .I1(sum_result0_carry__1_i_13_n_0),
        .I2(aligned_mantissa_a11_out[5]),
        .I3(aligned_mantissa_a11_out[6]),
        .I4(aligned_mantissa_a11_out[7]),
        .I5(aligned_mantissa_a11_out[0]),
        .O(sum_result0_carry__0_i_9_n_0));
  LUT6 #(
    .INIT(64'h00000000BABA00BA)) 
    sum_result0_carry__1_i_1
       (.I0(sum_result0_carry__1_i_9_n_0),
        .I1(sum_result0_carry__1_i_10_n_0),
        .I2(sum_result0_carry__0_i_10_n_0),
        .I3(final_exp1__0__0),
        .I4(a_IBUF[11]),
        .I5(sum_result1_carry__0),
        .O(\a[11] ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h47)) 
    sum_result0_carry__1_i_10
       (.I0(sum_result0_carry__1_i_15_n_0),
        .I1(aligned_mantissa_a11_out[1]),
        .I2(sum_result0_carry__1_i_16_n_0),
        .O(sum_result0_carry__1_i_10_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAAA)) 
    sum_result0_carry__1_i_11
       (.I0(final_exp1__0__0),
        .I1(sum_result1_carry__0_i_18_n_0),
        .I2(aligned_mantissa_a11_out[5]),
        .I3(aligned_mantissa_a11_out[6]),
        .I4(aligned_mantissa_a11_out[7]),
        .I5(aligned_mantissa_a11_out[0]),
        .O(sum_result0_carry__1_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sum_result0_carry__1_i_12
       (.I0(sum_result0_carry__1_i_16_n_0),
        .I1(aligned_mantissa_a11_out[1]),
        .I2(sum_result0_carry__0_i_16_n_0),
        .O(sum_result0_carry__1_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sum_result0_carry__1_i_13
       (.I0(sum_result0_carry__1_i_17_n_0),
        .I1(aligned_mantissa_a11_out[1]),
        .I2(sum_result0_carry__0_i_18_n_0),
        .O(sum_result0_carry__1_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFFDFFFF)) 
    sum_result0_carry__1_i_14
       (.I0(aligned_mantissa_a11_out[0]),
        .I1(aligned_mantissa_a11_out[7]),
        .I2(aligned_mantissa_a11_out[6]),
        .I3(aligned_mantissa_a11_out[5]),
        .I4(sum_result0_carry__1_i_12_n_0),
        .O(sum_result0_carry__1_i_14_n_0));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    sum_result0_carry__1_i_15
       (.I0(a_IBUF[17]),
        .I1(aligned_mantissa_a11_out[2]),
        .I2(a_IBUF[21]),
        .I3(aligned_mantissa_a11_out[3]),
        .I4(a_IBUF[13]),
        .I5(aligned_mantissa_a11_out[4]),
        .O(sum_result0_carry__1_i_15_n_0));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    sum_result0_carry__1_i_16
       (.I0(sum_result0_carry__1_i_18_n_0),
        .I1(aligned_mantissa_a11_out[2]),
        .I2(a_IBUF[19]),
        .I3(aligned_mantissa_a11_out[3]),
        .I4(a_IBUF[11]),
        .I5(aligned_mantissa_a11_out[4]),
        .O(sum_result0_carry__1_i_16_n_0));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    sum_result0_carry__1_i_17
       (.I0(a_IBUF[22]),
        .I1(aligned_mantissa_a11_out[3]),
        .I2(a_IBUF[14]),
        .I3(aligned_mantissa_a11_out[4]),
        .I4(aligned_mantissa_a11_out[2]),
        .I5(sum_result0_carry__1_i_19_n_0),
        .O(sum_result0_carry__1_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    sum_result0_carry__1_i_18
       (.I0(sum_result0_carry__0_i_17_0),
        .I1(aligned_mantissa_a11_out[3]),
        .I2(a_IBUF[15]),
        .I3(aligned_mantissa_a11_out[4]),
        .O(sum_result0_carry__1_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    sum_result0_carry__1_i_19
       (.I0(a_IBUF[18]),
        .I1(aligned_mantissa_a11_out[3]),
        .I2(a_IBUF[10]),
        .I3(aligned_mantissa_a11_out[4]),
        .O(sum_result0_carry__1_i_19_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    sum_result0_carry__1_i_2
       (.I0(sum_result1_carry__0),
        .I1(sum_result1_carry__0_i_12_n_0),
        .O(sum_result1_carry__0_i_12_0[2]));
  LUT6 #(
    .INIT(64'h00000000EAEA00EA)) 
    sum_result0_carry__1_i_3
       (.I0(sum_result0_carry__1_i_11_n_0),
        .I1(sum_result0_carry__0_i_10_n_0),
        .I2(sum_result0_carry__1_i_12_n_0),
        .I3(final_exp1__0__0),
        .I4(a_IBUF[9]),
        .I5(sum_result1_carry__0),
        .O(sum_result1_carry__0_i_12_0[1]));
  LUT6 #(
    .INIT(64'h00000000FF8F008F)) 
    sum_result0_carry__1_i_4
       (.I0(sum_result0_carry__1_i_13_n_0),
        .I1(sum_result0_carry__0_i_10_n_0),
        .I2(sum_result0_carry__1_i_14_n_0),
        .I3(final_exp1__0__0),
        .I4(a_IBUF[8]),
        .I5(sum_result1_carry__0),
        .O(sum_result1_carry__0_i_12_0[0]));
  LUT2 #(
    .INIT(4'h9)) 
    sum_result0_carry__1_i_5
       (.I0(\b[11] ),
        .I1(\a[11] ),
        .O(sum_result0_carry__1_i_1_0[3]));
  LUT3 #(
    .INIT(8'h1E)) 
    sum_result0_carry__1_i_6
       (.I0(sum_result1_carry__0),
        .I1(sum_result1_carry__0_i_12_n_0),
        .I2(\b[10] ),
        .O(sum_result0_carry__1_i_1_0[2]));
  LUT2 #(
    .INIT(4'h9)) 
    sum_result0_carry__1_i_7
       (.I0(\b[9] ),
        .I1(sum_result1_carry__0_i_12_0[1]),
        .O(sum_result0_carry__1_i_1_0[1]));
  LUT2 #(
    .INIT(4'h9)) 
    sum_result0_carry__1_i_8
       (.I0(sum_result1_carry__0_i_13_n_0),
        .I1(sum_result1_carry__0_i_12_0[0]),
        .O(sum_result0_carry__1_i_1_0[0]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAAA)) 
    sum_result0_carry__1_i_9
       (.I0(final_exp1__0__0),
        .I1(sum_result0_carry__2_i_14_n_0),
        .I2(aligned_mantissa_a11_out[5]),
        .I3(aligned_mantissa_a11_out[6]),
        .I4(aligned_mantissa_a11_out[7]),
        .I5(aligned_mantissa_a11_out[0]),
        .O(sum_result0_carry__1_i_9_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    sum_result0_carry__2_i_1
       (.I0(sum_result1_carry__0),
        .I1(sum_result1_carry__0_i_10_n_0),
        .O(sum_result1_carry__0_i_10_3[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFFDFFFF)) 
    sum_result0_carry__2_i_10
       (.I0(aligned_mantissa_a11_out[0]),
        .I1(aligned_mantissa_a11_out[7]),
        .I2(aligned_mantissa_a11_out[6]),
        .I3(aligned_mantissa_a11_out[5]),
        .I4(sum_result1_carry__0_i_16_n_0),
        .O(sum_result0_carry__2_i_10_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAAA)) 
    sum_result0_carry__2_i_11
       (.I0(final_exp1__0__0),
        .I1(sum_result0_carry__2_i_9_n_0),
        .I2(aligned_mantissa_a11_out[5]),
        .I3(aligned_mantissa_a11_out[6]),
        .I4(aligned_mantissa_a11_out[7]),
        .I5(aligned_mantissa_a11_out[0]),
        .O(sum_result0_carry__2_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sum_result0_carry__2_i_12
       (.I0(sum_result0_carry__2_i_17_n_0),
        .I1(aligned_mantissa_a11_out[1]),
        .I2(sum_result0_carry__1_i_15_n_0),
        .O(sum_result0_carry__2_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFDFFFF)) 
    sum_result0_carry__2_i_13
       (.I0(aligned_mantissa_a11_out[0]),
        .I1(aligned_mantissa_a11_out[7]),
        .I2(aligned_mantissa_a11_out[6]),
        .I3(aligned_mantissa_a11_out[5]),
        .I4(sum_result0_carry__2_i_12_n_0),
        .O(sum_result0_carry__2_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h47)) 
    sum_result0_carry__2_i_14
       (.I0(sum_result0_carry__2_i_16_n_0),
        .I1(aligned_mantissa_a11_out[1]),
        .I2(sum_result0_carry__2_i_18_n_0),
        .O(sum_result0_carry__2_i_14_n_0));
  LUT5 #(
    .INIT(32'h00000B08)) 
    sum_result0_carry__2_i_15
       (.I0(a_IBUF[20]),
        .I1(aligned_mantissa_a11_out[2]),
        .I2(aligned_mantissa_a11_out[4]),
        .I3(a_IBUF[16]),
        .I4(aligned_mantissa_a11_out[3]),
        .O(sum_result0_carry__2_i_15_n_0));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    sum_result0_carry__2_i_16
       (.I0(a_IBUF[18]),
        .I1(aligned_mantissa_a11_out[2]),
        .I2(a_IBUF[22]),
        .I3(aligned_mantissa_a11_out[3]),
        .I4(a_IBUF[14]),
        .I5(aligned_mantissa_a11_out[4]),
        .O(sum_result0_carry__2_i_16_n_0));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    sum_result0_carry__2_i_17
       (.I0(a_IBUF[19]),
        .I1(aligned_mantissa_a11_out[2]),
        .I2(sum_result0_carry__0_i_17_0),
        .I3(aligned_mantissa_a11_out[3]),
        .I4(a_IBUF[15]),
        .I5(aligned_mantissa_a11_out[4]),
        .O(sum_result0_carry__2_i_17_n_0));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    sum_result0_carry__2_i_18
       (.I0(a_IBUF[16]),
        .I1(aligned_mantissa_a11_out[2]),
        .I2(a_IBUF[20]),
        .I3(aligned_mantissa_a11_out[3]),
        .I4(a_IBUF[12]),
        .I5(aligned_mantissa_a11_out[4]),
        .O(sum_result0_carry__2_i_18_n_0));
  LUT6 #(
    .INIT(64'h00000000FF8F008F)) 
    sum_result0_carry__2_i_2
       (.I0(sum_result0_carry__2_i_9_n_0),
        .I1(sum_result0_carry__0_i_10_n_0),
        .I2(sum_result0_carry__2_i_10_n_0),
        .I3(final_exp1__0__0),
        .I4(a_IBUF[14]),
        .I5(sum_result1_carry__0),
        .O(sum_result1_carry__0_i_10_3[2]));
  LUT6 #(
    .INIT(64'h00000000EAEA00EA)) 
    sum_result0_carry__2_i_3
       (.I0(sum_result0_carry__2_i_11_n_0),
        .I1(sum_result0_carry__0_i_10_n_0),
        .I2(sum_result0_carry__2_i_12_n_0),
        .I3(final_exp1__0__0),
        .I4(a_IBUF[13]),
        .I5(sum_result1_carry__0),
        .O(sum_result1_carry__0_i_10_3[1]));
  LUT6 #(
    .INIT(64'h5555115100001151)) 
    sum_result0_carry__2_i_4
       (.I0(sum_result1_carry__0),
        .I1(sum_result0_carry__2_i_13_n_0),
        .I2(sum_result0_carry__0_i_10_n_0),
        .I3(sum_result0_carry__2_i_14_n_0),
        .I4(final_exp1__0__0),
        .I5(a_IBUF[12]),
        .O(sum_result1_carry__0_i_10_3[0]));
  LUT3 #(
    .INIT(8'hEB)) 
    sum_result0_carry__2_i_5
       (.I0(sum_result1_carry__0),
        .I1(sum_result1_carry__0_i_9_n_0),
        .I2(sum_result1_carry__0_i_10_n_0),
        .O(sum_result1_carry__0_i_10_2[3]));
  LUT2 #(
    .INIT(4'h9)) 
    sum_result0_carry__2_i_6
       (.I0(sum_result1_carry__0_i_9_0[2]),
        .I1(sum_result1_carry__0_i_10_3[2]),
        .O(sum_result1_carry__0_i_10_2[2]));
  LUT2 #(
    .INIT(4'h9)) 
    sum_result0_carry__2_i_7
       (.I0(sum_result1_carry__0_i_9_0[1]),
        .I1(sum_result1_carry__0_i_10_3[1]),
        .O(sum_result1_carry__0_i_10_2[1]));
  LUT3 #(
    .INIT(8'h1E)) 
    sum_result0_carry__2_i_8
       (.I0(sum_result1_carry__0),
        .I1(sum_result1_carry__0_i_11_n_0),
        .I2(sum_result1_carry__0_i_10_3[0]),
        .O(sum_result1_carry__0_i_10_2[0]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sum_result0_carry__2_i_9
       (.I0(sum_result0_carry__2_i_15_n_0),
        .I1(aligned_mantissa_a11_out[1]),
        .I2(sum_result0_carry__2_i_16_n_0),
        .O(sum_result0_carry__2_i_9_n_0));
  LUT6 #(
    .INIT(64'h00000000EAEA00EA)) 
    sum_result0_carry__3_i_1
       (.I0(sum_result0_carry__3_i_9_n_0),
        .I1(sum_result0_carry__0_i_10_n_0),
        .I2(sum_result0_carry__3_i_10_n_0),
        .I3(final_exp1__0__0),
        .I4(a_IBUF[19]),
        .I5(sum_result1_carry__0),
        .O(\a[19] ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    sum_result0_carry__3_i_10
       (.I0(aligned_mantissa_a11_out[3]),
        .I1(a_IBUF[21]),
        .I2(aligned_mantissa_a11_out[4]),
        .I3(aligned_mantissa_a11_out[2]),
        .I4(aligned_mantissa_a11_out[1]),
        .I5(sum_result0_carry__3_i_17_n_0),
        .O(sum_result0_carry__3_i_10_n_0));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    sum_result0_carry__3_i_11
       (.I0(aligned_mantissa_a11_out[3]),
        .I1(a_IBUF[20]),
        .I2(aligned_mantissa_a11_out[4]),
        .I3(aligned_mantissa_a11_out[2]),
        .I4(aligned_mantissa_a11_out[1]),
        .I5(sum_result0_carry__3_i_18_n_0),
        .O(sum_result0_carry__3_i_11_n_0));
  LUT5 #(
    .INIT(32'hFFFDFFFF)) 
    sum_result0_carry__3_i_12
       (.I0(aligned_mantissa_a11_out[0]),
        .I1(aligned_mantissa_a11_out[7]),
        .I2(aligned_mantissa_a11_out[6]),
        .I3(aligned_mantissa_a11_out[5]),
        .I4(sum_result0_carry__3_i_10_n_0),
        .O(sum_result0_carry__3_i_12_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAAA)) 
    sum_result0_carry__3_i_13
       (.I0(final_exp1__0__0),
        .I1(sum_result0_carry__3_i_11_n_0),
        .I2(aligned_mantissa_a11_out[5]),
        .I3(aligned_mantissa_a11_out[6]),
        .I4(aligned_mantissa_a11_out[7]),
        .I5(aligned_mantissa_a11_out[0]),
        .O(sum_result0_carry__3_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sum_result0_carry__3_i_14
       (.I0(sum_result0_carry__3_i_17_n_0),
        .I1(aligned_mantissa_a11_out[1]),
        .I2(sum_result0_carry__3_i_19_n_0),
        .O(sum_result0_carry__3_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sum_result0_carry__3_i_15
       (.I0(sum_result0_carry__3_i_18_n_0),
        .I1(aligned_mantissa_a11_out[1]),
        .I2(sum_result0_carry__2_i_15_n_0),
        .O(sum_result0_carry__3_i_15_n_0));
  LUT5 #(
    .INIT(32'hFFFDFFFF)) 
    sum_result0_carry__3_i_16
       (.I0(aligned_mantissa_a11_out[0]),
        .I1(aligned_mantissa_a11_out[7]),
        .I2(aligned_mantissa_a11_out[6]),
        .I3(aligned_mantissa_a11_out[5]),
        .I4(sum_result0_carry__3_i_14_n_0),
        .O(sum_result0_carry__3_i_16_n_0));
  LUT5 #(
    .INIT(32'h00000B08)) 
    sum_result0_carry__3_i_17
       (.I0(sum_result0_carry__0_i_17_0),
        .I1(aligned_mantissa_a11_out[2]),
        .I2(aligned_mantissa_a11_out[4]),
        .I3(a_IBUF[19]),
        .I4(aligned_mantissa_a11_out[3]),
        .O(sum_result0_carry__3_i_17_n_0));
  LUT5 #(
    .INIT(32'h00000B08)) 
    sum_result0_carry__3_i_18
       (.I0(a_IBUF[22]),
        .I1(aligned_mantissa_a11_out[2]),
        .I2(aligned_mantissa_a11_out[4]),
        .I3(a_IBUF[18]),
        .I4(aligned_mantissa_a11_out[3]),
        .O(sum_result0_carry__3_i_18_n_0));
  LUT5 #(
    .INIT(32'h00000B08)) 
    sum_result0_carry__3_i_19
       (.I0(a_IBUF[21]),
        .I1(aligned_mantissa_a11_out[2]),
        .I2(aligned_mantissa_a11_out[4]),
        .I3(a_IBUF[17]),
        .I4(aligned_mantissa_a11_out[3]),
        .O(sum_result0_carry__3_i_19_n_0));
  LUT6 #(
    .INIT(64'h00000000FF8F008F)) 
    sum_result0_carry__3_i_2
       (.I0(sum_result0_carry__3_i_11_n_0),
        .I1(sum_result0_carry__0_i_10_n_0),
        .I2(sum_result0_carry__3_i_12_n_0),
        .I3(final_exp1__0__0),
        .I4(a_IBUF[18]),
        .I5(sum_result1_carry__0),
        .O(\a[18] ));
  LUT6 #(
    .INIT(64'h00000000EAEA00EA)) 
    sum_result0_carry__3_i_3
       (.I0(sum_result0_carry__3_i_13_n_0),
        .I1(sum_result0_carry__0_i_10_n_0),
        .I2(sum_result0_carry__3_i_14_n_0),
        .I3(final_exp1__0__0),
        .I4(a_IBUF[17]),
        .I5(sum_result1_carry__0),
        .O(\a[17] ));
  LUT6 #(
    .INIT(64'h00000000FF8F008F)) 
    sum_result0_carry__3_i_4
       (.I0(sum_result0_carry__3_i_15_n_0),
        .I1(sum_result0_carry__0_i_10_n_0),
        .I2(sum_result0_carry__3_i_16_n_0),
        .I3(final_exp1__0__0),
        .I4(a_IBUF[16]),
        .I5(sum_result1_carry__0),
        .O(\a[16] ));
  LUT2 #(
    .INIT(4'h9)) 
    sum_result0_carry__3_i_5
       (.I0(\b[19] ),
        .I1(\a[19] ),
        .O(sum_result0_carry__3_i_1_0[3]));
  LUT2 #(
    .INIT(4'h9)) 
    sum_result0_carry__3_i_6
       (.I0(\b[18] ),
        .I1(\a[18] ),
        .O(sum_result0_carry__3_i_1_0[2]));
  LUT2 #(
    .INIT(4'h9)) 
    sum_result0_carry__3_i_7
       (.I0(\b[17] ),
        .I1(\a[17] ),
        .O(sum_result0_carry__3_i_1_0[1]));
  LUT2 #(
    .INIT(4'h9)) 
    sum_result0_carry__3_i_8
       (.I0(\b[16] ),
        .I1(\a[16] ),
        .O(sum_result0_carry__3_i_1_0[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAAA)) 
    sum_result0_carry__3_i_9
       (.I0(final_exp1__0__0),
        .I1(sum_result0_carry__4_i_14_n_0),
        .I2(aligned_mantissa_a11_out[5]),
        .I3(aligned_mantissa_a11_out[6]),
        .I4(aligned_mantissa_a11_out[7]),
        .I5(aligned_mantissa_a11_out[0]),
        .O(sum_result0_carry__3_i_9_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    sum_result0_carry__4_i_1
       (.I0(underflow_OBUF_inst_i_11_0),
        .I1(sum_result1_carry__1_i_9_n_0),
        .O(sum_result1_carry__1_i_9_0[3]));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    sum_result0_carry__4_i_10
       (.I0(aligned_mantissa_a11_out[1]),
        .I1(aligned_mantissa_a11_out[4]),
        .I2(sum_result0_carry__0_i_17_0),
        .I3(aligned_mantissa_a11_out[3]),
        .I4(aligned_mantissa_a11_out[2]),
        .O(sum_result0_carry__4_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    sum_result0_carry__4_i_11
       (.I0(aligned_mantissa_a11_out[5]),
        .I1(aligned_mantissa_a11_out[6]),
        .I2(aligned_mantissa_a11_out[7]),
        .I3(aligned_mantissa_a11_out[0]),
        .O(sum_result0_carry__4_i_11_n_0));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    sum_result0_carry__4_i_12
       (.I0(sum_result0_carry__4_i_11_n_0),
        .I1(aligned_mantissa_a11_out[3]),
        .I2(a_IBUF[22]),
        .I3(aligned_mantissa_a11_out[4]),
        .I4(aligned_mantissa_a11_out[2]),
        .I5(aligned_mantissa_a11_out[1]),
        .O(sum_result0_carry__4_i_12_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF4F7)) 
    sum_result0_carry__4_i_13
       (.I0(sum_result0_carry__0_i_17_0),
        .I1(aligned_mantissa_a11_out[1]),
        .I2(aligned_mantissa_a11_out[3]),
        .I3(a_IBUF[21]),
        .I4(aligned_mantissa_a11_out[4]),
        .I5(aligned_mantissa_a11_out[2]),
        .O(sum_result0_carry__4_i_13_n_0));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    sum_result0_carry__4_i_14
       (.I0(a_IBUF[22]),
        .I1(aligned_mantissa_a11_out[1]),
        .I2(aligned_mantissa_a11_out[3]),
        .I3(a_IBUF[20]),
        .I4(aligned_mantissa_a11_out[4]),
        .I5(aligned_mantissa_a11_out[2]),
        .O(sum_result0_carry__4_i_14_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    sum_result0_carry__4_i_15
       (.I0(sum_result0_carry__4_i_13_n_0),
        .I1(aligned_mantissa_a11_out[0]),
        .I2(aligned_mantissa_a11_out[7]),
        .I3(aligned_mantissa_a11_out[6]),
        .I4(aligned_mantissa_a11_out[5]),
        .O(sum_result0_carry__4_i_15_n_0));
  LUT6 #(
    .INIT(64'h00000000FFBA00BA)) 
    sum_result0_carry__4_i_2
       (.I0(sum_result0_carry__4_i_9_n_0),
        .I1(sum_result0_carry__4_i_10_n_0),
        .I2(sum_result0_carry__4_i_11_n_0),
        .I3(final_exp1__0__0),
        .I4(a_IBUF[22]),
        .I5(sum_result1_carry__0),
        .O(sum_result1_carry__1_i_9_0[2]));
  LUT6 #(
    .INIT(64'h00000000FFBA00BA)) 
    sum_result0_carry__4_i_3
       (.I0(sum_result0_carry__4_i_12_n_0),
        .I1(sum_result0_carry__4_i_13_n_0),
        .I2(sum_result0_carry__0_i_10_n_0),
        .I3(final_exp1__0__0),
        .I4(a_IBUF[21]),
        .I5(sum_result1_carry__0),
        .O(sum_result1_carry__1_i_9_0[1]));
  LUT6 #(
    .INIT(64'h00000000FF8F008F)) 
    sum_result0_carry__4_i_4
       (.I0(sum_result0_carry__4_i_14_n_0),
        .I1(sum_result0_carry__0_i_10_n_0),
        .I2(sum_result0_carry__4_i_15_n_0),
        .I3(final_exp1__0__0),
        .I4(a_IBUF[20]),
        .I5(sum_result1_carry__0),
        .O(sum_result1_carry__1_i_9_0[0]));
  LUT3 #(
    .INIT(8'h2D)) 
    sum_result0_carry__4_i_5
       (.I0(underflow_OBUF_inst_i_11_0),
        .I1(sum_result1_carry__1_i_9_n_0),
        .I2(i__carry__4_i_9),
        .O(i__carry__4_i_1_2[3]));
  LUT2 #(
    .INIT(4'h9)) 
    sum_result0_carry__4_i_6
       (.I0(\b[22] ),
        .I1(sum_result1_carry__1_i_9_0[2]),
        .O(i__carry__4_i_1_2[2]));
  LUT2 #(
    .INIT(4'h9)) 
    sum_result0_carry__4_i_7
       (.I0(\b[21] ),
        .I1(sum_result1_carry__1_i_9_0[1]),
        .O(i__carry__4_i_1_2[1]));
  LUT2 #(
    .INIT(4'h9)) 
    sum_result0_carry__4_i_8
       (.I0(\b[20] ),
        .I1(sum_result1_carry__1_i_9_0[0]),
        .O(i__carry__4_i_1_2[0]));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    sum_result0_carry__4_i_9
       (.I0(sum_result0_carry__0_i_10_n_0),
        .I1(aligned_mantissa_a11_out[3]),
        .I2(a_IBUF[22]),
        .I3(aligned_mantissa_a11_out[4]),
        .I4(aligned_mantissa_a11_out[2]),
        .I5(aligned_mantissa_a11_out[1]),
        .O(sum_result0_carry__4_i_9_n_0));
  LUT4 #(
    .INIT(16'h00E2)) 
    sum_result0_carry_i_1
       (.I0(sum_result0_carry_i_9_n_0),
        .I1(final_exp1__0__0),
        .I2(a_IBUF[3]),
        .I3(sum_result1_carry__0),
        .O(\a[3] [3]));
  LUT6 #(
    .INIT(64'h0000000101010001)) 
    sum_result0_carry_i_10
       (.I0(aligned_mantissa_a11_out[5]),
        .I1(aligned_mantissa_a11_out[6]),
        .I2(aligned_mantissa_a11_out[7]),
        .I3(sum_result0_carry_i_16_n_0),
        .I4(aligned_mantissa_a11_out[0]),
        .I5(sum_result0_carry_i_15_n_0),
        .O(sum_result0_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'h0000000101010001)) 
    sum_result0_carry_i_11
       (.I0(aligned_mantissa_a11_out[5]),
        .I1(aligned_mantissa_a11_out[6]),
        .I2(aligned_mantissa_a11_out[7]),
        .I3(sum_result0_carry_i_17_n_0),
        .I4(aligned_mantissa_a11_out[0]),
        .I5(sum_result0_carry_i_16_n_0),
        .O(sum_result0_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'h0000000101010001)) 
    sum_result0_carry_i_14
       (.I0(aligned_mantissa_b10_out[5]),
        .I1(aligned_mantissa_b10_out[6]),
        .I2(aligned_mantissa_b10_out[7]),
        .I3(sum_result0_carry_i_20_n_0),
        .I4(aligned_mantissa_b10_out[0]),
        .I5(sum_result0_carry_i_21_n_0),
        .O(sum_result0_carry_i_14_n_0));
  LUT5 #(
    .INIT(32'h00FF0707)) 
    sum_result0_carry_i_15
       (.I0(sum_result0_carry_i_22_n_0),
        .I1(aligned_mantissa_a11_out[2]),
        .I2(sum_result0_carry_i_23_n_0),
        .I3(sum_result0_carry__0_i_20_n_0),
        .I4(aligned_mantissa_a11_out[1]),
        .O(sum_result0_carry_i_15_n_0));
  LUT5 #(
    .INIT(32'h00FF1D1D)) 
    sum_result0_carry_i_16
       (.I0(sum_result0_carry_i_24_n_0),
        .I1(aligned_mantissa_a11_out[2]),
        .I2(sum_result0_carry_i_25_n_0),
        .I3(sum_result1_carry_i_22_n_0),
        .I4(aligned_mantissa_a11_out[1]),
        .O(sum_result0_carry_i_16_n_0));
  LUT6 #(
    .INIT(64'h07000700073307FF)) 
    sum_result0_carry_i_17
       (.I0(sum_result0_carry_i_22_n_0),
        .I1(aligned_mantissa_a11_out[2]),
        .I2(sum_result0_carry_i_23_n_0),
        .I3(aligned_mantissa_a11_out[1]),
        .I4(sum_result0_carry_i_26_n_0),
        .I5(sum_result0_carry_i_27_n_0),
        .O(sum_result0_carry_i_17_n_0));
  LUT4 #(
    .INIT(16'h00E2)) 
    sum_result0_carry_i_2
       (.I0(sum_result0_carry_i_10_n_0),
        .I1(final_exp1__0__0),
        .I2(a_IBUF[2]),
        .I3(sum_result1_carry__0),
        .O(\a[3] [2]));
  LUT6 #(
    .INIT(64'h1D001D001D331DFF)) 
    sum_result0_carry_i_20
       (.I0(sum_result0_carry_i_29_n_0),
        .I1(aligned_mantissa_b10_out[2]),
        .I2(sum_result0_carry_i_30_n_0),
        .I3(aligned_mantissa_b10_out[1]),
        .I4(sum_result0_carry_i_31_n_0),
        .I5(sum_result0_carry_i_32_n_0),
        .O(sum_result0_carry_i_20_n_0));
  LUT6 #(
    .INIT(64'hB8FFB833B8CCB800)) 
    sum_result0_carry_i_21
       (.I0(sum_result0_carry_i_33_n_0),
        .I1(aligned_mantissa_b10_out[2]),
        .I2(sum_result0_carry_i_34_n_0),
        .I3(aligned_mantissa_b10_out[1]),
        .I4(sum_result0_carry_i_35_n_0),
        .I5(sum_result0_carry_i_36_n_0),
        .O(sum_result0_carry_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h3030BB88)) 
    sum_result0_carry_i_22
       (.I0(a_IBUF[15]),
        .I1(aligned_mantissa_a11_out[3]),
        .I2(sum_result0_carry__0_i_17_0),
        .I3(a_IBUF[7]),
        .I4(aligned_mantissa_a11_out[4]),
        .O(sum_result0_carry_i_22_n_0));
  LUT6 #(
    .INIT(64'h1511141005010400)) 
    sum_result0_carry_i_23
       (.I0(aligned_mantissa_a11_out[2]),
        .I1(aligned_mantissa_a11_out[3]),
        .I2(aligned_mantissa_a11_out[4]),
        .I3(a_IBUF[11]),
        .I4(a_IBUF[3]),
        .I5(a_IBUF[19]),
        .O(sum_result0_carry_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    sum_result0_carry_i_24
       (.I0(a_IBUF[10]),
        .I1(aligned_mantissa_a11_out[3]),
        .I2(a_IBUF[18]),
        .I3(aligned_mantissa_a11_out[4]),
        .I4(a_IBUF[2]),
        .O(sum_result0_carry_i_24_n_0));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    sum_result0_carry_i_25
       (.I0(a_IBUF[14]),
        .I1(aligned_mantissa_a11_out[3]),
        .I2(a_IBUF[22]),
        .I3(aligned_mantissa_a11_out[4]),
        .I4(a_IBUF[6]),
        .O(sum_result0_carry_i_25_n_0));
  LUT5 #(
    .INIT(32'h00F0AACC)) 
    sum_result0_carry_i_26
       (.I0(a_IBUF[21]),
        .I1(a_IBUF[5]),
        .I2(a_IBUF[13]),
        .I3(aligned_mantissa_a11_out[4]),
        .I4(aligned_mantissa_a11_out[3]),
        .O(sum_result0_carry_i_26_n_0));
  LUT6 #(
    .INIT(64'h1511141005010400)) 
    sum_result0_carry_i_27
       (.I0(aligned_mantissa_a11_out[2]),
        .I1(aligned_mantissa_a11_out[3]),
        .I2(aligned_mantissa_a11_out[4]),
        .I3(a_IBUF[9]),
        .I4(a_IBUF[1]),
        .I5(a_IBUF[17]),
        .O(sum_result0_carry_i_27_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    sum_result0_carry_i_29
       (.I0(b_IBUF[10]),
        .I1(aligned_mantissa_b10_out[3]),
        .I2(b_IBUF[18]),
        .I3(aligned_mantissa_b10_out[4]),
        .I4(b_IBUF[2]),
        .O(sum_result0_carry_i_29_n_0));
  LUT4 #(
    .INIT(16'h00E2)) 
    sum_result0_carry_i_3
       (.I0(sum_result0_carry_i_11_n_0),
        .I1(final_exp1__0__0),
        .I2(a_IBUF[1]),
        .I3(sum_result1_carry__0),
        .O(\a[3] [1]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    sum_result0_carry_i_30
       (.I0(b_IBUF[14]),
        .I1(aligned_mantissa_b10_out[3]),
        .I2(b_IBUF[22]),
        .I3(aligned_mantissa_b10_out[4]),
        .I4(b_IBUF[6]),
        .O(sum_result0_carry_i_30_n_0));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    sum_result0_carry_i_31
       (.I0(b_IBUF[12]),
        .I1(aligned_mantissa_b10_out[3]),
        .I2(b_IBUF[20]),
        .I3(aligned_mantissa_b10_out[4]),
        .I4(b_IBUF[4]),
        .O(sum_result0_carry_i_31_n_0));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    sum_result0_carry_i_32
       (.I0(b_IBUF[0]),
        .I1(aligned_mantissa_b10_out[4]),
        .I2(b_IBUF[16]),
        .I3(aligned_mantissa_b10_out[3]),
        .I4(b_IBUF[8]),
        .I5(aligned_mantissa_b10_out[2]),
        .O(sum_result0_carry_i_32_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hAA27FF27)) 
    sum_result0_carry_i_33
       (.I0(aligned_mantissa_b10_out[4]),
        .I1(i__carry__0_i_17_0),
        .I2(b_IBUF[7]),
        .I3(aligned_mantissa_b10_out[3]),
        .I4(b_IBUF[15]),
        .O(sum_result0_carry_i_33_n_0));
  LUT5 #(
    .INIT(32'hFF0F5533)) 
    sum_result0_carry_i_34
       (.I0(b_IBUF[19]),
        .I1(b_IBUF[3]),
        .I2(b_IBUF[11]),
        .I3(aligned_mantissa_b10_out[4]),
        .I4(aligned_mantissa_b10_out[3]),
        .O(sum_result0_carry_i_34_n_0));
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    sum_result0_carry_i_35
       (.I0(b_IBUF[13]),
        .I1(aligned_mantissa_b10_out[3]),
        .I2(b_IBUF[21]),
        .I3(aligned_mantissa_b10_out[4]),
        .I4(b_IBUF[5]),
        .O(sum_result0_carry_i_35_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hCCFF4747)) 
    sum_result0_carry_i_36
       (.I0(b_IBUF[9]),
        .I1(aligned_mantissa_b10_out[3]),
        .I2(b_IBUF[1]),
        .I3(b_IBUF[17]),
        .I4(aligned_mantissa_b10_out[4]),
        .O(sum_result0_carry_i_36_n_0));
  LUT6 #(
    .INIT(64'h04F4040404F4F4F4)) 
    sum_result0_carry_i_4
       (.I0(sum_result0_carry),
        .I1(sum_result0_carry_0),
        .I2(underflow_OBUF_inst_i_11_0),
        .I3(sum_result0_carry_i_14_n_0),
        .I4(final_exp1__0__0),
        .I5(b_IBUF[0]),
        .O(\a[3] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    sum_result0_carry_i_5
       (.I0(sum_result1_carry_i_17_n_0),
        .I1(sum_result1_carry_i_16_n_0),
        .O(sum_result1_carry_i_16_0[3]));
  LUT2 #(
    .INIT(4'h9)) 
    sum_result0_carry_i_6
       (.I0(sum_result1_carry_i_14_n_0),
        .I1(sum_result1_carry_i_15_n_0),
        .O(sum_result1_carry_i_16_0[2]));
  LUT2 #(
    .INIT(4'h9)) 
    sum_result0_carry_i_7
       (.I0(sum_result1_carry_i_19_n_0),
        .I1(sum_result1_carry_i_18_n_0),
        .O(sum_result1_carry_i_16_0[1]));
  LUT2 #(
    .INIT(4'h9)) 
    sum_result0_carry_i_8
       (.I0(\a[3] [0]),
        .I1(\b[3] [0]),
        .O(sum_result1_carry_i_16_0[0]));
  LUT6 #(
    .INIT(64'h0000000101010001)) 
    sum_result0_carry_i_9
       (.I0(aligned_mantissa_a11_out[5]),
        .I1(aligned_mantissa_a11_out[6]),
        .I2(aligned_mantissa_a11_out[7]),
        .I3(sum_result0_carry_i_15_n_0),
        .I4(aligned_mantissa_a11_out[0]),
        .I5(sum_result1_carry_i_21_n_0),
        .O(sum_result0_carry_i_9_n_0));
  LUT5 #(
    .INIT(32'h0404FD04)) 
    sum_result1_carry__0_i_1
       (.I0(sum_result1_carry__0_i_9_n_0),
        .I1(sum_result1_carry__0_i_10_n_0),
        .I2(sum_result1_carry__0),
        .I3(sum_result1_carry__0_i_9_0[2]),
        .I4(sum_result1_carry__0_i_10_3[2]),
        .O(sum_result0_carry__2_i_2_0[3]));
  LUT6 #(
    .INIT(64'h4444477747774777)) 
    sum_result1_carry__0_i_10
       (.I0(a_IBUF[15]),
        .I1(final_exp1__0__0),
        .I2(sum_result0_carry__3_i_15_n_0),
        .I3(sum_result0_carry__4_i_11_n_0),
        .I4(sum_result0_carry__0_i_10_n_0),
        .I5(sum_result1_carry__0_i_16_n_0),
        .O(sum_result1_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'hFF3F55550F3F5555)) 
    sum_result1_carry__0_i_11
       (.I0(b_IBUF[12]),
        .I1(sum_result1_carry__0_i_17_n_0),
        .I2(sum_result1_carry__0_i_14_n_0),
        .I3(aligned_mantissa_b10_out[0]),
        .I4(final_exp1__0__0),
        .I5(i__carry__2_i_12_n_0),
        .O(sum_result1_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'h4777444447774777)) 
    sum_result1_carry__0_i_12
       (.I0(a_IBUF[10]),
        .I1(final_exp1__0__0),
        .I2(sum_result1_carry__0_i_18_n_0),
        .I3(sum_result0_carry__0_i_10_n_0),
        .I4(sum_result0_carry__1_i_10_n_0),
        .I5(sum_result0_carry__4_i_11_n_0),
        .O(sum_result1_carry__0_i_12_n_0));
  LUT4 #(
    .INIT(16'h00AC)) 
    sum_result1_carry__0_i_13
       (.I0(i__carry__1_i_16_n_0),
        .I1(b_IBUF[8]),
        .I2(final_exp1__0__0),
        .I3(sum_result1_carry__0),
        .O(sum_result1_carry__0_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h01)) 
    sum_result1_carry__0_i_14
       (.I0(aligned_mantissa_b10_out[7]),
        .I1(aligned_mantissa_b10_out[6]),
        .I2(aligned_mantissa_b10_out[5]),
        .O(sum_result1_carry__0_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h5C)) 
    sum_result1_carry__0_i_15
       (.I0(i__carry__3_i_19_n_0),
        .I1(i__carry__2_i_15_n_0),
        .I2(aligned_mantissa_b10_out[1]),
        .O(sum_result1_carry__0_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sum_result1_carry__0_i_16
       (.I0(sum_result0_carry__3_i_19_n_0),
        .I1(aligned_mantissa_a11_out[1]),
        .I2(sum_result0_carry__2_i_17_n_0),
        .O(sum_result1_carry__0_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sum_result1_carry__0_i_17
       (.I0(i__carry__2_i_14_n_0),
        .I1(aligned_mantissa_b10_out[1]),
        .I2(i__carry__1_i_19_n_0),
        .O(sum_result1_carry__0_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sum_result1_carry__0_i_18
       (.I0(sum_result0_carry__2_i_18_n_0),
        .I1(aligned_mantissa_a11_out[1]),
        .I2(sum_result0_carry__1_i_17_n_0),
        .O(sum_result1_carry__0_i_18_n_0));
  LUT5 #(
    .INIT(32'h01FF0001)) 
    sum_result1_carry__0_i_2
       (.I0(sum_result1_carry__0),
        .I1(sum_result1_carry__0_i_11_n_0),
        .I2(sum_result1_carry__0_i_10_3[0]),
        .I3(sum_result1_carry__0_i_10_3[1]),
        .I4(sum_result1_carry__0_i_9_0[1]),
        .O(sum_result0_carry__2_i_2_0[2]));
  LUT4 #(
    .INIT(16'h8F08)) 
    sum_result1_carry__0_i_3
       (.I0(\b[10] ),
        .I1(sum_result1_carry__0_i_12_n_0),
        .I2(\a[11] ),
        .I3(\b[11] ),
        .O(sum_result0_carry__2_i_2_0[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    sum_result1_carry__0_i_4
       (.I0(sum_result1_carry__0_i_13_n_0),
        .I1(sum_result1_carry__0_i_12_0[0]),
        .I2(sum_result1_carry__0_i_12_0[1]),
        .I3(\b[9] ),
        .O(sum_result0_carry__2_i_2_0[0]));
  LUT5 #(
    .INIT(32'hE00EB00B)) 
    sum_result1_carry__0_i_5
       (.I0(sum_result1_carry__0),
        .I1(sum_result1_carry__0_i_9_n_0),
        .I2(sum_result1_carry__0_i_9_0[2]),
        .I3(sum_result1_carry__0_i_10_3[2]),
        .I4(sum_result1_carry__0_i_10_n_0),
        .O(sum_result1_carry__0_i_10_1[3]));
  LUT5 #(
    .INIT(32'h1E00001E)) 
    sum_result1_carry__0_i_6
       (.I0(sum_result1_carry__0),
        .I1(sum_result1_carry__0_i_11_n_0),
        .I2(sum_result1_carry__0_i_10_3[0]),
        .I3(sum_result1_carry__0_i_9_0[1]),
        .I4(sum_result1_carry__0_i_10_3[1]),
        .O(sum_result1_carry__0_i_10_1[2]));
  LUT5 #(
    .INIT(32'h1E00001E)) 
    sum_result1_carry__0_i_7
       (.I0(sum_result1_carry__0),
        .I1(sum_result1_carry__0_i_12_n_0),
        .I2(\b[10] ),
        .I3(\b[11] ),
        .I4(\a[11] ),
        .O(sum_result1_carry__0_i_10_1[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    sum_result1_carry__0_i_8
       (.I0(sum_result1_carry__0_i_13_n_0),
        .I1(sum_result1_carry__0_i_12_0[0]),
        .I2(\b[9] ),
        .I3(sum_result1_carry__0_i_12_0[1]),
        .O(sum_result1_carry__0_i_10_1[0]));
  LUT6 #(
    .INIT(64'h3FFF55550FCF5555)) 
    sum_result1_carry__0_i_9
       (.I0(b_IBUF[15]),
        .I1(aligned_mantissa_b10_out[0]),
        .I2(sum_result1_carry__0_i_14_n_0),
        .I3(i__carry__3_i_15_n_0),
        .I4(final_exp1__0__0),
        .I5(sum_result1_carry__0_i_15_n_0),
        .O(sum_result1_carry__0_i_9_n_0));
  LUT5 #(
    .INIT(32'hA0A0FBA0)) 
    sum_result1_carry__1_i_1
       (.I0(sum_result1_carry__1_i_9_n_0),
        .I1(underflow_OBUF_inst_i_11_0),
        .I2(i__carry__4_i_9),
        .I3(\b[22] ),
        .I4(sum_result1_carry__1_i_9_0[2]),
        .O(sum_result0_carry__4_i_2_0[3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    sum_result1_carry__1_i_2
       (.I0(\b[20] ),
        .I1(sum_result1_carry__1_i_9_0[0]),
        .I2(sum_result1_carry__1_i_9_0[1]),
        .I3(\b[21] ),
        .O(sum_result0_carry__4_i_2_0[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    sum_result1_carry__1_i_3
       (.I0(\b[18] ),
        .I1(\a[18] ),
        .I2(\a[19] ),
        .I3(\b[19] ),
        .O(sum_result0_carry__4_i_2_0[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    sum_result1_carry__1_i_4
       (.I0(\b[16] ),
        .I1(\a[16] ),
        .I2(\a[17] ),
        .I3(\b[17] ),
        .O(sum_result0_carry__4_i_2_0[0]));
  LUT5 #(
    .INIT(32'h2002D00D)) 
    sum_result1_carry__1_i_5
       (.I0(underflow_OBUF_inst_i_11_0),
        .I1(sum_result1_carry__1_i_9_n_0),
        .I2(\b[22] ),
        .I3(sum_result1_carry__1_i_9_0[2]),
        .I4(i__carry__4_i_9),
        .O(i__carry__4_i_1_1[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    sum_result1_carry__1_i_6
       (.I0(\b[20] ),
        .I1(sum_result1_carry__1_i_9_0[0]),
        .I2(\b[21] ),
        .I3(sum_result1_carry__1_i_9_0[1]),
        .O(i__carry__4_i_1_1[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    sum_result1_carry__1_i_7
       (.I0(\b[18] ),
        .I1(\a[18] ),
        .I2(\b[19] ),
        .I3(\a[19] ),
        .O(i__carry__4_i_1_1[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    sum_result1_carry__1_i_8
       (.I0(\b[16] ),
        .I1(\a[16] ),
        .I2(\b[17] ),
        .I3(\a[17] ),
        .O(i__carry__4_i_1_1[0]));
  LUT4 #(
    .INIT(16'h2F20)) 
    sum_result1_carry__1_i_9
       (.I0(i__carry__1_i_10_n_0),
        .I1(i__carry__4_i_12_n_0),
        .I2(final_exp1__0__0),
        .I3(i__carry__0_i_17_0),
        .O(sum_result1_carry__1_i_9_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    sum_result1_carry_i_1
       (.I0(sum_result1_carry_i_9_n_0),
        .I1(\a[6] ),
        .I2(\a[7] ),
        .I3(sum_result1_carry_i_10_n_0),
        .O(sum_result1_carry_i_10_0[3]));
  LUT4 #(
    .INIT(16'h00B8)) 
    sum_result1_carry_i_10
       (.I0(i__carry__0_i_9_n_0),
        .I1(final_exp1__0__0),
        .I2(b_IBUF[7]),
        .I3(sum_result1_carry__0),
        .O(sum_result1_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h00B8)) 
    sum_result1_carry_i_11
       (.I0(i__carry__0_i_12_n_0),
        .I1(final_exp1__0__0),
        .I2(b_IBUF[4]),
        .I3(sum_result1_carry__0),
        .O(sum_result1_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'h4444747774777477)) 
    sum_result1_carry_i_12
       (.I0(a_IBUF[4]),
        .I1(final_exp1__0__0),
        .I2(sum_result1_carry_i_21_n_0),
        .I3(sum_result0_carry__0_i_10_n_0),
        .I4(sum_result0_carry__4_i_11_n_0),
        .I5(sum_result0_carry__0_i_15_n_0),
        .O(sum_result1_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h00B8)) 
    sum_result1_carry_i_13
       (.I0(i__carry__0_i_11_n_0),
        .I1(final_exp1__0__0),
        .I2(b_IBUF[5]),
        .I3(sum_result1_carry__0),
        .O(sum_result1_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h00B8)) 
    sum_result1_carry_i_14
       (.I0(i__carry_i_10_n_0),
        .I1(final_exp1__0__0),
        .I2(b_IBUF[2]),
        .I3(sum_result1_carry__0),
        .O(sum_result1_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h00E2)) 
    sum_result1_carry_i_15
       (.I0(sum_result0_carry_i_10_n_0),
        .I1(final_exp1__0__0),
        .I2(a_IBUF[2]),
        .I3(sum_result1_carry__0),
        .O(sum_result1_carry_i_15_n_0));
  LUT4 #(
    .INIT(16'h00E2)) 
    sum_result1_carry_i_16
       (.I0(sum_result0_carry_i_9_n_0),
        .I1(final_exp1__0__0),
        .I2(a_IBUF[3]),
        .I3(sum_result1_carry__0),
        .O(sum_result1_carry_i_16_n_0));
  LUT4 #(
    .INIT(16'h00B8)) 
    sum_result1_carry_i_17
       (.I0(i__carry_i_9_n_0),
        .I1(final_exp1__0__0),
        .I2(b_IBUF[3]),
        .I3(sum_result1_carry__0),
        .O(sum_result1_carry_i_17_n_0));
  LUT4 #(
    .INIT(16'h00E2)) 
    sum_result1_carry_i_18
       (.I0(sum_result0_carry_i_11_n_0),
        .I1(final_exp1__0__0),
        .I2(a_IBUF[1]),
        .I3(sum_result1_carry__0),
        .O(sum_result1_carry_i_18_n_0));
  LUT4 #(
    .INIT(16'h00B8)) 
    sum_result1_carry_i_19
       (.I0(i__carry_i_11_n_0),
        .I1(final_exp1__0__0),
        .I2(b_IBUF[1]),
        .I3(sum_result1_carry__0),
        .O(sum_result1_carry_i_19_n_0));
  LUT4 #(
    .INIT(16'h8F08)) 
    sum_result1_carry_i_2
       (.I0(sum_result1_carry_i_11_n_0),
        .I1(sum_result1_carry_i_12_n_0),
        .I2(\a[5] ),
        .I3(sum_result1_carry_i_13_n_0),
        .O(sum_result1_carry_i_10_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h47)) 
    sum_result1_carry_i_21
       (.I0(sum_result0_carry__0_i_19_n_0),
        .I1(aligned_mantissa_a11_out[1]),
        .I2(sum_result1_carry_i_22_n_0),
        .O(sum_result1_carry_i_21_n_0));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    sum_result1_carry_i_22
       (.I0(a_IBUF[16]),
        .I1(aligned_mantissa_a11_out[3]),
        .I2(a_IBUF[8]),
        .I3(aligned_mantissa_a11_out[4]),
        .I4(aligned_mantissa_a11_out[2]),
        .I5(i__carry_i_26_n_0),
        .O(sum_result1_carry_i_22_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    sum_result1_carry_i_3
       (.I0(sum_result1_carry_i_14_n_0),
        .I1(sum_result1_carry_i_15_n_0),
        .I2(sum_result1_carry_i_16_n_0),
        .I3(sum_result1_carry_i_17_n_0),
        .O(sum_result1_carry_i_10_0[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    sum_result1_carry_i_4
       (.I0(\b[3] [0]),
        .I1(\a[3] [0]),
        .I2(sum_result1_carry_i_18_n_0),
        .I3(sum_result1_carry_i_19_n_0),
        .O(sum_result1_carry_i_10_0[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    sum_result1_carry_i_5
       (.I0(sum_result1_carry_i_9_n_0),
        .I1(\a[6] ),
        .I2(sum_result1_carry_i_10_n_0),
        .I3(\a[7] ),
        .O(sum_result0_carry__0_i_1_2[3]));
  LUT5 #(
    .INIT(32'h1E00001E)) 
    sum_result1_carry_i_6
       (.I0(sum_result1_carry__0),
        .I1(sum_result1_carry_i_12_n_0),
        .I2(sum_result1_carry_i_11_n_0),
        .I3(sum_result1_carry_i_13_n_0),
        .I4(\a[5] ),
        .O(sum_result0_carry__0_i_1_2[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    sum_result1_carry_i_7
       (.I0(sum_result1_carry_i_17_n_0),
        .I1(sum_result1_carry_i_16_n_0),
        .I2(sum_result1_carry_i_14_n_0),
        .I3(sum_result1_carry_i_15_n_0),
        .O(sum_result0_carry__0_i_1_2[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    sum_result1_carry_i_8
       (.I0(\a[3] [0]),
        .I1(\b[3] [0]),
        .I2(sum_result1_carry_i_19_n_0),
        .I3(sum_result1_carry_i_18_n_0),
        .O(sum_result0_carry__0_i_1_2[0]));
  LUT4 #(
    .INIT(16'h00B8)) 
    sum_result1_carry_i_9
       (.I0(i__carry__0_i_10_n_0),
        .I1(final_exp1__0__0),
        .I2(b_IBUF[6]),
        .I3(sum_result1_carry__0),
        .O(sum_result1_carry_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    underflow_OBUF_inst_i_1
       (.I0(underflow_OBUF_inst_i_2_n_0),
        .I1(CO),
        .I2(underflow_OBUF_inst_i_3_n_0),
        .I3(op_IBUF[1]),
        .O(underflow_OBUF));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    underflow_OBUF_inst_i_10
       (.I0(mantissa_out1_carry_i_19_n_0),
        .I1(underflow_OBUF_inst_i_23_n_0),
        .I2(underflow_OBUF_inst_i_24_n_0),
        .I3(underflow_OBUF_inst_i_25_n_0),
        .I4(rounded_mantissa0_carry_i_9__3_n_0),
        .I5(mantissa_out1_carry_i_22_n_0),
        .O(underflow_OBUF_inst_i_10_n_0));
  CARRY4 underflow_OBUF_inst_i_11
       (.CI(rounded_mantissa0_carry_i_21__1_n_0),
        .CO({underflow_OBUF_inst_i_11_n_0,underflow_OBUF_inst_i_11_n_1,underflow_OBUF_inst_i_11_n_2,underflow_OBUF_inst_i_11_n_3}),
        .CYINIT(1'b0),
        .DI({underflow_OBUF_inst_i_26_n_0,sum_result1_carry__1_i_9_0[2:0]}),
        .O(\adder/data0 [23:20]),
        .S({underflow_OBUF_inst_i_27_n_0,underflow_OBUF_inst_i_28_n_0,underflow_OBUF_inst_i_29_n_0,underflow_OBUF_inst_i_30_n_0}));
  CARRY4 underflow_OBUF_inst_i_12
       (.CI(underflow_OBUF_inst_i_6_0),
        .CO({NLW_underflow_OBUF_inst_i_12_CO_UNCONNECTED[3:1],underflow_OBUF_inst_i_12_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_underflow_OBUF_inst_i_12_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 underflow_OBUF_inst_i_13
       (.CI(underflow_OBUF_inst_i_6_1),
        .CO({NLW_underflow_OBUF_inst_i_13_CO_UNCONNECTED[3:1],underflow_OBUF_inst_i_13_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_underflow_OBUF_inst_i_13_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT4 #(
    .INIT(16'hB888)) 
    underflow_OBUF_inst_i_14
       (.I0(data1[23]),
        .I1(underflow_OBUF_inst_i_2_0),
        .I2(underflow_OBUF_inst_i_2_1),
        .I3(data2[23]),
        .O(underflow_OBUF_inst_i_14_n_0));
  LUT6 #(
    .INIT(64'h08808008A88A8AA8)) 
    underflow_OBUF_inst_i_15
       (.I0(underflow_OBUF_inst_i_4_n_0),
        .I1(\adder/data0 [17]),
        .I2(a_IBUF[31]),
        .I3(op_IBUF[0]),
        .I4(b_IBUF[31]),
        .I5(\result_OBUF[22]_inst_i_12_0 ),
        .O(underflow_OBUF_inst_i_15_n_0));
  LUT6 #(
    .INIT(64'h08808008A88A8AA8)) 
    underflow_OBUF_inst_i_16
       (.I0(underflow_OBUF_inst_i_4_n_0),
        .I1(\adder/data0 [19]),
        .I2(a_IBUF[31]),
        .I3(op_IBUF[0]),
        .I4(b_IBUF[31]),
        .I5(\result_OBUF[30]_inst_i_62_0 ),
        .O(underflow_OBUF_inst_i_16_n_0));
  LUT6 #(
    .INIT(64'hFF5FCC5F00000000)) 
    underflow_OBUF_inst_i_17
       (.I0(rounded_mantissa0_carry_i_20__3_n_0),
        .I1(\adder/data0 [21]),
        .I2(rounded_mantissa0_carry_i_27__3_n_0),
        .I3(mantissa_out1_carry_i_18_0),
        .I4(\adder/data0 [20]),
        .I5(underflow_OBUF_inst_i_4_n_0),
        .O(underflow_OBUF_inst_i_17_n_0));
  LUT6 #(
    .INIT(64'hFF5FCC5F00000000)) 
    underflow_OBUF_inst_i_18
       (.I0(rounded_mantissa0_carry_i_7__0_1),
        .I1(\adder/data0 [5]),
        .I2(rounded_mantissa0_carry_i_35_0),
        .I3(mantissa_out1_carry_i_18_0),
        .I4(\adder/data0 [4]),
        .I5(underflow_OBUF_inst_i_4_n_0),
        .O(underflow_OBUF_inst_i_18_n_0));
  LUT6 #(
    .INIT(64'hD77D1441FFFFFFFF)) 
    underflow_OBUF_inst_i_19
       (.I0(\adder/data0 [7]),
        .I1(a_IBUF[31]),
        .I2(op_IBUF[0]),
        .I3(b_IBUF[31]),
        .I4(rounded_mantissa0_carry_i_36__0_0),
        .I5(underflow_OBUF_inst_i_4_n_0),
        .O(underflow_OBUF_inst_i_19_n_0));
  LUT6 #(
    .INIT(64'h08808008A88A8AA8)) 
    underflow_OBUF_inst_i_2
       (.I0(underflow_OBUF_inst_i_4_n_0),
        .I1(\adder/data0 [24]),
        .I2(a_IBUF[31]),
        .I3(op_IBUF[0]),
        .I4(b_IBUF[31]),
        .I5(underflow_OBUF_inst_i_6_n_0),
        .O(underflow_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'h08808008A88A8AA8)) 
    underflow_OBUF_inst_i_20
       (.I0(underflow_OBUF_inst_i_4_n_0),
        .I1(\adder/data0 [6]),
        .I2(a_IBUF[31]),
        .I3(op_IBUF[0]),
        .I4(b_IBUF[31]),
        .I5(rounded_mantissa0_carry_i_25_1),
        .O(underflow_OBUF_inst_i_20_n_0));
  LUT6 #(
    .INIT(64'h08808008A88A8AA8)) 
    underflow_OBUF_inst_i_21
       (.I0(underflow_OBUF_inst_i_4_n_0),
        .I1(\adder/data0 [0]),
        .I2(a_IBUF[31]),
        .I3(op_IBUF[0]),
        .I4(b_IBUF[31]),
        .I5(rounded_mantissa0_carry_i_41_0),
        .O(underflow_OBUF_inst_i_21_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF05CC0500)) 
    underflow_OBUF_inst_i_22
       (.I0(O[1]),
        .I1(mantissa_out1_carry_i_34_0),
        .I2(O[0]),
        .I3(mantissa_out1_carry_i_18_0),
        .I4(\result_OBUF[22]_inst_i_12_2 ),
        .I5(\result[23] ),
        .O(underflow_OBUF_inst_i_22_n_0));
  LUT6 #(
    .INIT(64'h08808008A88A8AA8)) 
    underflow_OBUF_inst_i_23
       (.I0(underflow_OBUF_inst_i_4_n_0),
        .I1(\adder/data0 [11]),
        .I2(a_IBUF[31]),
        .I3(op_IBUF[0]),
        .I4(b_IBUF[31]),
        .I5(rounded_mantissa0_carry_i_25__1_0),
        .O(underflow_OBUF_inst_i_23_n_0));
  LUT6 #(
    .INIT(64'h08808008A88A8AA8)) 
    underflow_OBUF_inst_i_24
       (.I0(underflow_OBUF_inst_i_4_n_0),
        .I1(\adder/data0 [10]),
        .I2(a_IBUF[31]),
        .I3(op_IBUF[0]),
        .I4(b_IBUF[31]),
        .I5(rounded_mantissa0_carry_i_26_0),
        .O(underflow_OBUF_inst_i_24_n_0));
  LUT6 #(
    .INIT(64'h08808008A88A8AA8)) 
    underflow_OBUF_inst_i_25
       (.I0(underflow_OBUF_inst_i_4_n_0),
        .I1(\adder/data0 [12]),
        .I2(a_IBUF[31]),
        .I3(op_IBUF[0]),
        .I4(b_IBUF[31]),
        .I5(rounded_mantissa0_carry_i_25__0_0),
        .O(underflow_OBUF_inst_i_25_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    underflow_OBUF_inst_i_26
       (.I0(i__carry__4_i_9),
        .O(underflow_OBUF_inst_i_26_n_0));
  LUT3 #(
    .INIT(8'hD2)) 
    underflow_OBUF_inst_i_27
       (.I0(underflow_OBUF_inst_i_11_0),
        .I1(sum_result1_carry__1_i_9_n_0),
        .I2(i__carry__4_i_9),
        .O(underflow_OBUF_inst_i_27_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    underflow_OBUF_inst_i_28
       (.I0(\b[22] ),
        .I1(sum_result1_carry__1_i_9_0[2]),
        .O(underflow_OBUF_inst_i_28_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    underflow_OBUF_inst_i_29
       (.I0(\b[21] ),
        .I1(sum_result1_carry__1_i_9_0[1]),
        .O(underflow_OBUF_inst_i_29_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    underflow_OBUF_inst_i_3
       (.I0(\b[31] ),
        .I1(underflow_OBUF_inst_i_2_n_0),
        .I2(underflow_OBUF_inst_i_8_n_0),
        .I3(underflow_OBUF_inst_i_9_n_0),
        .I4(underflow_OBUF_inst_i_10_n_0),
        .O(underflow_OBUF_inst_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    underflow_OBUF_inst_i_30
       (.I0(\b[20] ),
        .I1(sum_result1_carry__1_i_9_0[0]),
        .O(underflow_OBUF_inst_i_30_n_0));
  LUT6 #(
    .INIT(64'h5455555455545455)) 
    underflow_OBUF_inst_i_4
       (.I0(\result[23] ),
        .I1(underflow_OBUF_inst_i_2_1),
        .I2(underflow_OBUF_inst_i_2_0),
        .I3(b_IBUF[31]),
        .I4(op_IBUF[0]),
        .I5(a_IBUF[31]),
        .O(underflow_OBUF_inst_i_4_n_0));
  CARRY4 underflow_OBUF_inst_i_5
       (.CI(underflow_OBUF_inst_i_11_n_0),
        .CO({NLW_underflow_OBUF_inst_i_5_CO_UNCONNECTED[3:1],\adder/data0 [24]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_underflow_OBUF_inst_i_5_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT4 #(
    .INIT(16'hB8BB)) 
    underflow_OBUF_inst_i_6
       (.I0(underflow_OBUF_inst_i_12_n_3),
        .I1(underflow_OBUF_inst_i_2_0),
        .I2(underflow_OBUF_inst_i_13_n_3),
        .I3(underflow_OBUF_inst_i_2_1),
        .O(underflow_OBUF_inst_i_6_n_0));
  LUT6 #(
    .INIT(64'hBEEB822800000000)) 
    underflow_OBUF_inst_i_7
       (.I0(underflow_OBUF_inst_i_14_n_0),
        .I1(b_IBUF[31]),
        .I2(op_IBUF[0]),
        .I3(a_IBUF[31]),
        .I4(\adder/data0 [23]),
        .I5(underflow_OBUF_inst_i_4_n_0),
        .O(\b[31] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    underflow_OBUF_inst_i_8
       (.I0(rounded_mantissa0_carry_i_11__3_n_0),
        .I1(underflow_OBUF_inst_i_15_n_0),
        .I2(underflow_OBUF_inst_i_16_n_0),
        .I3(rounded_mantissa0_carry_i_17__3_n_0),
        .I4(underflow_OBUF_inst_i_17_n_0),
        .I5(\a[31]_1 ),
        .O(underflow_OBUF_inst_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    underflow_OBUF_inst_i_9
       (.I0(underflow_OBUF_inst_i_18_n_0),
        .I1(underflow_OBUF_inst_i_19_n_0),
        .I2(underflow_OBUF_inst_i_20_n_0),
        .I3(underflow_OBUF_inst_i_21_n_0),
        .I4(\result_OBUF[22]_inst_i_15_n_0 ),
        .I5(underflow_OBUF_inst_i_22_n_0),
        .O(underflow_OBUF_inst_i_9_n_0));
endmodule

module fpu_adder_top
   (error_OBUF,
    result_OBUF,
    overflow_OBUF,
    underflow_OBUF,
    b_IBUF,
    a_IBUF,
    op_IBUF);
  output error_OBUF;
  output [31:0]result_OBUF;
  output overflow_OBUF;
  output underflow_OBUF;
  input [31:0]b_IBUF;
  input [31:0]a_IBUF;
  input [1:0]op_IBUF;

  wire [31:0]a_IBUF;
  wire adder_n_100;
  wire adder_n_25;
  wire adder_n_50;
  wire adder_n_52;
  wire adder_n_53;
  wire adder_n_54;
  wire adder_n_55;
  wire adder_n_56;
  wire adder_n_57;
  wire adder_n_58;
  wire adder_n_59;
  wire adder_n_60;
  wire adder_n_61;
  wire adder_n_62;
  wire adder_n_63;
  wire adder_n_64;
  wire adder_n_65;
  wire adder_n_66;
  wire adder_n_67;
  wire adder_n_68;
  wire adder_n_69;
  wire adder_n_70;
  wire adder_n_71;
  wire adder_n_72;
  wire adder_n_73;
  wire adder_n_74;
  wire adder_n_75;
  wire adder_n_76;
  wire adder_n_77;
  wire adder_n_78;
  wire adder_n_79;
  wire adder_n_80;
  wire adder_n_81;
  wire adder_n_82;
  wire adder_n_83;
  wire adder_n_84;
  wire adder_n_85;
  wire adder_n_86;
  wire adder_n_87;
  wire adder_n_88;
  wire adder_n_89;
  wire adder_n_90;
  wire adder_n_91;
  wire adder_n_92;
  wire adder_n_93;
  wire adder_n_94;
  wire adder_n_95;
  wire adder_n_96;
  wire adder_n_97;
  wire adder_n_98;
  wire adder_n_99;
  wire aligner_n_100;
  wire aligner_n_101;
  wire aligner_n_102;
  wire aligner_n_103;
  wire aligner_n_104;
  wire aligner_n_105;
  wire aligner_n_106;
  wire aligner_n_107;
  wire aligner_n_108;
  wire aligner_n_109;
  wire aligner_n_110;
  wire aligner_n_111;
  wire aligner_n_112;
  wire aligner_n_113;
  wire aligner_n_114;
  wire aligner_n_115;
  wire aligner_n_116;
  wire aligner_n_117;
  wire aligner_n_118;
  wire aligner_n_119;
  wire aligner_n_120;
  wire aligner_n_121;
  wire aligner_n_122;
  wire aligner_n_123;
  wire aligner_n_124;
  wire aligner_n_125;
  wire aligner_n_126;
  wire aligner_n_127;
  wire aligner_n_128;
  wire aligner_n_129;
  wire aligner_n_130;
  wire aligner_n_131;
  wire aligner_n_132;
  wire aligner_n_133;
  wire aligner_n_134;
  wire aligner_n_135;
  wire aligner_n_136;
  wire aligner_n_137;
  wire aligner_n_138;
  wire aligner_n_139;
  wire aligner_n_140;
  wire aligner_n_141;
  wire aligner_n_142;
  wire aligner_n_143;
  wire aligner_n_144;
  wire aligner_n_145;
  wire aligner_n_146;
  wire aligner_n_147;
  wire aligner_n_148;
  wire aligner_n_149;
  wire aligner_n_150;
  wire aligner_n_151;
  wire aligner_n_152;
  wire aligner_n_153;
  wire aligner_n_154;
  wire aligner_n_155;
  wire aligner_n_156;
  wire aligner_n_157;
  wire aligner_n_158;
  wire aligner_n_159;
  wire aligner_n_160;
  wire aligner_n_161;
  wire aligner_n_162;
  wire aligner_n_163;
  wire aligner_n_164;
  wire aligner_n_165;
  wire aligner_n_166;
  wire aligner_n_167;
  wire aligner_n_168;
  wire aligner_n_169;
  wire aligner_n_170;
  wire aligner_n_171;
  wire aligner_n_172;
  wire aligner_n_173;
  wire aligner_n_174;
  wire aligner_n_175;
  wire aligner_n_176;
  wire aligner_n_177;
  wire aligner_n_178;
  wire aligner_n_179;
  wire aligner_n_180;
  wire aligner_n_181;
  wire aligner_n_182;
  wire aligner_n_183;
  wire aligner_n_184;
  wire aligner_n_185;
  wire aligner_n_186;
  wire aligner_n_187;
  wire aligner_n_188;
  wire aligner_n_189;
  wire aligner_n_190;
  wire aligner_n_191;
  wire aligner_n_192;
  wire aligner_n_193;
  wire aligner_n_194;
  wire aligner_n_195;
  wire aligner_n_196;
  wire aligner_n_197;
  wire aligner_n_198;
  wire aligner_n_199;
  wire aligner_n_200;
  wire aligner_n_201;
  wire aligner_n_202;
  wire aligner_n_203;
  wire aligner_n_204;
  wire aligner_n_205;
  wire aligner_n_206;
  wire aligner_n_207;
  wire aligner_n_208;
  wire aligner_n_209;
  wire aligner_n_210;
  wire aligner_n_211;
  wire aligner_n_213;
  wire aligner_n_214;
  wire aligner_n_215;
  wire aligner_n_216;
  wire aligner_n_217;
  wire aligner_n_218;
  wire aligner_n_219;
  wire aligner_n_220;
  wire aligner_n_221;
  wire aligner_n_222;
  wire aligner_n_223;
  wire aligner_n_224;
  wire aligner_n_225;
  wire aligner_n_226;
  wire aligner_n_227;
  wire aligner_n_228;
  wire aligner_n_229;
  wire aligner_n_230;
  wire aligner_n_231;
  wire aligner_n_232;
  wire aligner_n_233;
  wire aligner_n_234;
  wire aligner_n_34;
  wire aligner_n_35;
  wire aligner_n_36;
  wire aligner_n_37;
  wire aligner_n_38;
  wire aligner_n_39;
  wire aligner_n_40;
  wire aligner_n_43;
  wire aligner_n_44;
  wire aligner_n_45;
  wire aligner_n_46;
  wire aligner_n_47;
  wire aligner_n_48;
  wire aligner_n_49;
  wire aligner_n_51;
  wire aligner_n_52;
  wire aligner_n_53;
  wire aligner_n_54;
  wire aligner_n_55;
  wire aligner_n_56;
  wire aligner_n_57;
  wire aligner_n_58;
  wire aligner_n_59;
  wire aligner_n_60;
  wire aligner_n_61;
  wire aligner_n_62;
  wire aligner_n_63;
  wire aligner_n_64;
  wire aligner_n_65;
  wire aligner_n_66;
  wire aligner_n_67;
  wire aligner_n_68;
  wire aligner_n_69;
  wire aligner_n_70;
  wire aligner_n_71;
  wire aligner_n_72;
  wire aligner_n_73;
  wire aligner_n_74;
  wire aligner_n_75;
  wire aligner_n_76;
  wire aligner_n_77;
  wire aligner_n_78;
  wire aligner_n_79;
  wire aligner_n_80;
  wire aligner_n_81;
  wire aligner_n_82;
  wire aligner_n_83;
  wire aligner_n_84;
  wire aligner_n_85;
  wire aligner_n_86;
  wire aligner_n_87;
  wire aligner_n_88;
  wire aligner_n_89;
  wire aligner_n_90;
  wire aligner_n_91;
  wire aligner_n_92;
  wire aligner_n_93;
  wire aligner_n_94;
  wire aligner_n_95;
  wire aligner_n_96;
  wire aligner_n_97;
  wire aligner_n_98;
  wire aligner_n_99;
  wire [31:0]b_IBUF;
  wire [3:2]data0;
  wire [22:1]data0_0;
  wire [23:0]data1;
  wire [23:0]data2;
  wire error_OBUF;
  wire [0:0]leading_zeros;
  wire mantissa_out11_in;
  wire norm_n_1;
  wire norm_n_10;
  wire norm_n_11;
  wire norm_n_12;
  wire norm_n_13;
  wire norm_n_14;
  wire norm_n_2;
  wire norm_n_3;
  wire norm_n_4;
  wire norm_n_5;
  wire norm_n_6;
  wire norm_n_7;
  wire norm_n_8;
  wire norm_n_9;
  wire [1:0]op_IBUF;
  wire overflow_OBUF;
  wire [31:0]result_OBUF;
  wire rounder_n_22;
  wire rounder_n_23;
  wire rounder_n_24;
  wire rounder_n_25;
  wire rounder_n_26;
  wire rounder_n_27;
  wire rounder_n_28;
  wire rounder_n_29;
  wire sum_result17_in;
  wire sum_result1__0__0;
  wire underflow_OBUF;

  mantissa_adder adder
       (.CO(sum_result17_in),
        .DI({aligner_n_225,aligner_n_226,aligner_n_227,aligner_n_228}),
        .O(data0),
        .S({aligner_n_150,aligner_n_151,aligner_n_152,aligner_n_153}),
        .\a[12] (adder_n_77),
        .\a[15] (adder_n_79),
        .\a[19] (adder_n_78),
        .\a[22] (adder_n_66),
        .\a[25] (adder_n_65),
        .\a[28] (adder_n_82),
        .\a[30] ({adder_n_71,adder_n_72,adder_n_73,adder_n_74}),
        .a_IBUF(a_IBUF),
        .\b[14] (adder_n_81),
        .\b[1] (adder_n_80),
        .\b[22] (adder_n_64),
        .\b[25] (adder_n_63),
        .\b[30] ({adder_n_52,adder_n_53,adder_n_54,adder_n_55}),
        .\b[30]_0 ({adder_n_58,adder_n_59,adder_n_60,adder_n_61}),
        .\b[30]_1 ({adder_n_67,adder_n_68,adder_n_69,adder_n_70}),
        .\b[31] (adder_n_56),
        .\b[31]_0 (adder_n_75),
        .b_IBUF(b_IBUF),
        .data1(data1),
        .data2(data2),
        .i__carry__1_i_8__0(sum_result1__0__0),
        .i__carry__4_i_8(adder_n_50),
        .mantissa_out1_carry_i_56(aligner_n_123),
        .mantissa_out1_carry_i_56_0(aligner_n_125),
        .mantissa_out1_carry_i_56_1(aligner_n_107),
        .mantissa_out1_carry_i_56_2(aligner_n_117),
        .mantissa_out1_carry_i_56_3({aligner_n_102,aligner_n_103,aligner_n_104,aligner_n_105}),
        .mantissa_out1_carry_i_56_4(aligner_n_122),
        .mantissa_out1_carry_i_56_5(aligner_n_124),
        .mantissa_out1_carry_i_56_6(aligner_n_106),
        .mantissa_out1_carry_i_56_7(aligner_n_116),
        .mantissa_out1_carry_i_56_8({aligner_n_108,aligner_n_109,aligner_n_110,aligner_n_111}),
        .mantissa_out1_carry_i_60({aligner_n_94,aligner_n_95,aligner_n_96,aligner_n_97}),
        .mantissa_out1_carry_i_60_0({aligner_n_86,aligner_n_87,aligner_n_88,aligner_n_89}),
        .mantissa_out1_carry_i_60_1({aligner_n_90,aligner_n_91,aligner_n_92,aligner_n_93}),
        .mantissa_out1_carry_i_60_2({aligner_n_98,aligner_n_99,aligner_n_100,aligner_n_101}),
        .mantissa_out1_carry_i_63(aligner_n_80),
        .mantissa_out1_carry_i_63_0({aligner_n_64,aligner_n_65,aligner_n_66}),
        .mantissa_out1_carry_i_63_1({aligner_n_59,aligner_n_60,aligner_n_61,aligner_n_62}),
        .mantissa_out1_carry_i_63_2(aligner_n_79),
        .mantissa_out1_carry_i_63_3(aligner_n_81),
        .mantissa_out1_carry_i_63_4(aligner_n_63),
        .mantissa_out1_carry_i_63_5(aligner_n_234),
        .mantissa_out1_carry_i_63_6({aligner_n_67,aligner_n_68,aligner_n_69,aligner_n_70}),
        .mantissa_out1_carry_i_67(aligner_n_162),
        .mantissa_out1_carry_i_67_0(aligner_n_163),
        .mantissa_out1_carry_i_67_1(aligner_n_145),
        .mantissa_out1_carry_i_67_2(aligner_n_229),
        .mantissa_out1_carry_i_67_3({aligner_n_141,aligner_n_142,aligner_n_143,aligner_n_144}),
        .mantissa_out1_carry_i_67_4({aligner_n_230,aligner_n_231,aligner_n_232,aligner_n_233}),
        .mantissa_out1_carry_i_67_5({aligner_n_146,aligner_n_147,aligner_n_148,aligner_n_149}),
        .mantissa_out1_carry_i_72({aligner_n_172,aligner_n_173,aligner_n_174,aligner_n_175}),
        .mantissa_out1_carry_i_72_0({aligner_n_164,aligner_n_165,aligner_n_166,aligner_n_167}),
        .mantissa_out1_carry_i_72_1({aligner_n_176,aligner_n_177,aligner_n_178,aligner_n_179}),
        .mantissa_out1_carry_i_72_2({aligner_n_168,aligner_n_169,aligner_n_170,aligner_n_171}),
        .op_IBUF(op_IBUF[0]),
        .rounded_mantissa0_carry_i_27__3({aligner_n_131,aligner_n_132,aligner_n_133,aligner_n_134}),
        .rounded_mantissa0_carry_i_27__3_0({aligner_n_126,aligner_n_127,aligner_n_128,aligner_n_129}),
        .rounded_mantissa0_carry_i_27__3_1(aligner_n_180),
        .rounded_mantissa0_carry_i_27__3_2(aligner_n_130),
        .rounded_mantissa0_carry_i_27__3_3(aligner_n_139),
        .rounded_mantissa0_carry_i_27__3_4(aligner_n_140),
        .rounded_mantissa0_carry_i_27__3_5({aligner_n_135,aligner_n_136,aligner_n_137,aligner_n_138}),
        .rounded_mantissa0_carry_i_28__0(rounder_n_24),
        .sum_result0_carry__4_i_8(adder_n_25),
        .\sum_result0_inferred__0/i__carry_0 (adder_n_57),
        .\sum_result0_inferred__0/i__carry_1 (adder_n_76),
        .\sum_result0_inferred__0/i__carry_2 (adder_n_86),
        .\sum_result0_inferred__0/i__carry_3 (adder_n_87),
        .\sum_result0_inferred__0/i__carry__0_0 (adder_n_88),
        .\sum_result0_inferred__0/i__carry__0_1 (adder_n_89),
        .\sum_result0_inferred__0/i__carry__0_2 (adder_n_90),
        .\sum_result0_inferred__0/i__carry__0_3 (adder_n_93),
        .\sum_result0_inferred__0/i__carry__1_0 (adder_n_83),
        .\sum_result0_inferred__0/i__carry__1_1 (adder_n_84),
        .\sum_result0_inferred__0/i__carry__1_2 (adder_n_91),
        .\sum_result0_inferred__0/i__carry__1_3 (adder_n_92),
        .\sum_result0_inferred__0/i__carry__2_0 (adder_n_85),
        .\sum_result0_inferred__0/i__carry__2_1 (adder_n_94),
        .\sum_result0_inferred__0/i__carry__2_2 (adder_n_95),
        .\sum_result0_inferred__0/i__carry__2_3 (adder_n_96),
        .\sum_result0_inferred__0/i__carry__3_0 (adder_n_97),
        .\sum_result0_inferred__0/i__carry__3_1 (adder_n_98),
        .\sum_result0_inferred__0/i__carry__3_2 (adder_n_99),
        .\sum_result0_inferred__0/i__carry__3_3 (adder_n_100),
        .sum_result1_carry__0_i_2(rounder_n_27),
        .sum_result1_carry__1_0({aligner_n_181,aligner_n_182,aligner_n_183,aligner_n_184}),
        .sum_result1_carry__1_1({aligner_n_75,aligner_n_76,aligner_n_77,aligner_n_78}),
        .sum_result1_carry__1_i_10(adder_n_62),
        .\sum_result1_inferred__2/i__carry__0_0 ({aligner_n_158,aligner_n_159,aligner_n_160,aligner_n_161}),
        .\sum_result1_inferred__2/i__carry__0_1 ({aligner_n_154,aligner_n_155,aligner_n_156,aligner_n_157}),
        .\sum_result1_inferred__2/i__carry__1_0 ({aligner_n_82,aligner_n_83,aligner_n_84,aligner_n_85}),
        .\sum_result1_inferred__2/i__carry__1_1 ({aligner_n_71,aligner_n_72,aligner_n_73,aligner_n_74}),
        .underflow_OBUF_inst_i_6({aligner_n_221,aligner_n_222,aligner_n_223,aligner_n_224}),
        .underflow_OBUF_inst_i_6_0({aligner_n_118,aligner_n_119,aligner_n_120,aligner_n_121}),
        .underflow_OBUF_inst_i_6_1({aligner_n_217,aligner_n_218,aligner_n_219,aligner_n_220}),
        .underflow_OBUF_inst_i_6_2({aligner_n_112,aligner_n_113,aligner_n_114,aligner_n_115}));
  align_adder aligner
       (.CO(mantissa_out11_in),
        .DI({aligner_n_39,aligner_n_40}),
        .O(data0),
        .S({aligner_n_35,aligner_n_36,aligner_n_37,aligner_n_38}),
        .\a[11] (aligner_n_80),
        .\a[16] (aligner_n_117),
        .\a[17] (aligner_n_107),
        .\a[18] (aligner_n_125),
        .\a[19] (aligner_n_123),
        .\a[30] ({aligner_n_185,aligner_n_186,aligner_n_187,aligner_n_188}),
        .\a[31] (aligner_n_43),
        .\a[31]_0 (aligner_n_44),
        .\a[31]_1 (aligner_n_46),
        .\a[3] ({aligner_n_172,aligner_n_173,aligner_n_174,aligner_n_175}),
        .\a[5] (aligner_n_145),
        .\a[6] (aligner_n_163),
        .\a[7] (aligner_n_162),
        .a_IBUF(a_IBUF),
        .\b[10] (aligner_n_81),
        .\b[11] (aligner_n_79),
        .\b[16] (aligner_n_116),
        .\b[17] (aligner_n_106),
        .\b[18] (aligner_n_124),
        .\b[19] (aligner_n_122),
        .\b[20] (aligner_n_140),
        .\b[21] (aligner_n_139),
        .\b[22] (aligner_n_130),
        .\b[24] (aligner_n_47),
        .\b[30] ({aligner_n_54,aligner_n_55,aligner_n_56,aligner_n_57}),
        .\b[31] (aligner_n_34),
        .\b[3] ({aligner_n_176,aligner_n_177,aligner_n_178,aligner_n_179}),
        .\b[7] ({aligner_n_230,aligner_n_231,aligner_n_232,aligner_n_233}),
        .\b[8] (aligner_n_234),
        .\b[9] (aligner_n_63),
        .b_IBUF(b_IBUF),
        .data0(data0_0),
        .data1(data1),
        .data2(data2),
        .error_OBUF(error_OBUF),
        .i__carry__0_i_17_0(rounder_n_29),
        .i__carry__1_i_18_0({adder_n_52,adder_n_53,adder_n_54,adder_n_55}),
        .i__carry__2_i_2_0({aligner_n_82,aligner_n_83,aligner_n_84,aligner_n_85}),
        .i__carry__4_i_1_0({aligner_n_112,aligner_n_113,aligner_n_114,aligner_n_115}),
        .i__carry__4_i_1_1({aligner_n_118,aligner_n_119,aligner_n_120,aligner_n_121}),
        .i__carry__4_i_1_2({aligner_n_126,aligner_n_127,aligner_n_128,aligner_n_129}),
        .i__carry__4_i_1_3({aligner_n_135,aligner_n_136,aligner_n_137,aligner_n_138}),
        .i__carry__4_i_1_4({adder_n_71,adder_n_72,adder_n_73,adder_n_74}),
        .i__carry__4_i_1_5({adder_n_67,adder_n_68,adder_n_69,adder_n_70}),
        .i__carry__4_i_2_0({aligner_n_217,aligner_n_218,aligner_n_219,aligner_n_220}),
        .i__carry__4_i_9(aligner_n_180),
        .mantissa_out1_carry_i_10_0({aligner_n_51,aligner_n_52,aligner_n_53}),
        .mantissa_out1_carry_i_12_0({aligner_n_48,aligner_n_49,leading_zeros}),
        .mantissa_out1_carry_i_18_0(rounder_n_23),
        .mantissa_out1_carry_i_23_0(rounder_n_22),
        .mantissa_out1_carry_i_34_0(adder_n_76),
        .\mantissa_out1_inferred__1/i__carry (aligner_n_214),
        .\mantissa_out1_inferred__1/i__carry_0 (aligner_n_215),
        .\mantissa_out1_inferred__1/i__carry__0 (aligner_n_45),
        .\mantissa_out1_inferred__1/i__carry__0_0 (aligner_n_213),
        .\mantissa_out1_inferred__1/i__carry__0_1 (aligner_n_216),
        .op_IBUF(op_IBUF),
        .overflow_OBUF(overflow_OBUF),
        .\result[23] (rounder_n_24),
        .result_OBUF(result_OBUF),
        .\result_OBUF[22]_inst_i_12_0 (adder_n_98),
        .\result_OBUF[22]_inst_i_12_1 (adder_n_96),
        .\result_OBUF[22]_inst_i_12_2 (adder_n_57),
        .\result_OBUF[22]_inst_i_2_0 (norm_n_14),
        .\result_OBUF[22]_inst_i_6_0 (adder_n_87),
        .\result_OBUF[23]_inst_i_1_0 (adder_n_66),
        .\result_OBUF[23]_inst_i_1_1 (adder_n_63),
        .\result_OBUF[23]_inst_i_1_2 (adder_n_64),
        .\result_OBUF[23]_inst_i_1_3 (adder_n_65),
        .\result_OBUF[30]_inst_i_43_0 (adder_n_95),
        .\result_OBUF[30]_inst_i_46_0 (norm_n_10),
        .\result_OBUF[30]_inst_i_46_1 (norm_n_13),
        .\result_OBUF[30]_inst_i_62_0 (adder_n_100),
        .\result_OBUF[31]_inst_i_1_0 (rounder_n_25),
        .\result_OBUF[31]_inst_i_1_1 (rounder_n_28),
        .rounded_mantissa0_carry_i_18__0_0(adder_n_75),
        .rounded_mantissa0_carry_i_24__1_0(adder_n_56),
        .rounded_mantissa0_carry_i_25_0(adder_n_94),
        .rounded_mantissa0_carry_i_25_1(adder_n_90),
        .rounded_mantissa0_carry_i_25__0_0(adder_n_85),
        .rounded_mantissa0_carry_i_25__1_0(adder_n_91),
        .rounded_mantissa0_carry_i_25__3_0(norm_n_5),
        .rounded_mantissa0_carry_i_26_0(adder_n_83),
        .rounded_mantissa0_carry_i_26__2_0(adder_n_84),
        .rounded_mantissa0_carry_i_35_0(adder_n_88),
        .rounded_mantissa0_carry_i_36__0_0(adder_n_93),
        .rounded_mantissa0_carry_i_3__3_0({aligner_n_209,aligner_n_210}),
        .rounded_mantissa0_carry_i_41_0(adder_n_86),
        .rounded_mantissa0_carry_i_53_0({norm_n_1,norm_n_2,norm_n_3,norm_n_4}),
        .rounded_mantissa0_carry_i_54_0(aligner_n_58),
        .rounded_mantissa0_carry_i_5_0({aligner_n_193,aligner_n_194,aligner_n_195,aligner_n_196}),
        .rounded_mantissa0_carry_i_5_1(adder_n_92),
        .rounded_mantissa0_carry_i_5__0_0({aligner_n_201,aligner_n_202,aligner_n_203,aligner_n_204}),
        .rounded_mantissa0_carry_i_5__1_0({aligner_n_189,aligner_n_190,aligner_n_191,aligner_n_192}),
        .rounded_mantissa0_carry_i_5__3_0({aligner_n_205,aligner_n_206,aligner_n_207,aligner_n_208}),
        .rounded_mantissa0_carry_i_5__4({norm_n_6,norm_n_7,norm_n_8,norm_n_9}),
        .rounded_mantissa0_carry_i_6__0_0(adder_n_97),
        .rounded_mantissa0_carry_i_6__2_0(aligner_n_211),
        .rounded_mantissa0_carry_i_7__0_0({aligner_n_197,aligner_n_198,aligner_n_199,aligner_n_200}),
        .rounded_mantissa0_carry_i_7__0_1(adder_n_89),
        .rounded_mantissa0_carry_i_7__3_0(norm_n_11),
        .rounded_mantissa0_carry_i_8__2_0(norm_n_12),
        .rounded_mantissa0_carry_i_8__2_1(adder_n_99),
        .sum_result0_carry(adder_n_81),
        .sum_result0_carry_0(adder_n_80),
        .sum_result0_carry__0_i_17_0(rounder_n_26),
        .sum_result0_carry__0_i_1_0({aligner_n_141,aligner_n_142,aligner_n_143,aligner_n_144}),
        .sum_result0_carry__0_i_1_1({aligner_n_146,aligner_n_147,aligner_n_148,aligner_n_149}),
        .sum_result0_carry__0_i_1_2({aligner_n_150,aligner_n_151,aligner_n_152,aligner_n_153}),
        .sum_result0_carry__0_i_1_3({aligner_n_154,aligner_n_155,aligner_n_156,aligner_n_157}),
        .sum_result0_carry__0_i_1_4({aligner_n_158,aligner_n_159,aligner_n_160,aligner_n_161}),
        .sum_result0_carry__1_i_16_0({adder_n_58,adder_n_59,adder_n_60,adder_n_61}),
        .sum_result0_carry__1_i_1_0({aligner_n_59,aligner_n_60,aligner_n_61,aligner_n_62}),
        .sum_result0_carry__1_i_1_1({aligner_n_67,aligner_n_68,aligner_n_69,aligner_n_70}),
        .sum_result0_carry__2_i_2_0({aligner_n_181,aligner_n_182,aligner_n_183,aligner_n_184}),
        .sum_result0_carry__3_i_1_0({aligner_n_102,aligner_n_103,aligner_n_104,aligner_n_105}),
        .sum_result0_carry__3_i_1_1({aligner_n_108,aligner_n_109,aligner_n_110,aligner_n_111}),
        .sum_result0_carry__4_i_2_0({aligner_n_221,aligner_n_222,aligner_n_223,aligner_n_224}),
        .\sum_result0_inferred__0/i__carry (adder_n_77),
        .\sum_result0_inferred__0/i__carry_0 (adder_n_78),
        .\sum_result0_inferred__0/i__carry_1 (adder_n_79),
        .sum_result1_carry__0(adder_n_62),
        .sum_result1_carry__0_i_10_0({aligner_n_71,aligner_n_72,aligner_n_73,aligner_n_74}),
        .sum_result1_carry__0_i_10_1({aligner_n_75,aligner_n_76,aligner_n_77,aligner_n_78}),
        .sum_result1_carry__0_i_10_2({aligner_n_86,aligner_n_87,aligner_n_88,aligner_n_89}),
        .sum_result1_carry__0_i_10_3({aligner_n_94,aligner_n_95,aligner_n_96,aligner_n_97}),
        .sum_result1_carry__0_i_10_4({aligner_n_98,aligner_n_99,aligner_n_100,aligner_n_101}),
        .sum_result1_carry__0_i_12_0({aligner_n_64,aligner_n_65,aligner_n_66}),
        .sum_result1_carry__0_i_9_0({aligner_n_90,aligner_n_91,aligner_n_92,aligner_n_93}),
        .sum_result1_carry__1_i_9_0({aligner_n_131,aligner_n_132,aligner_n_133,aligner_n_134}),
        .sum_result1_carry_i_10_0({aligner_n_225,aligner_n_226,aligner_n_227,aligner_n_228}),
        .sum_result1_carry_i_12_0(aligner_n_229),
        .sum_result1_carry_i_16_0({aligner_n_164,aligner_n_165,aligner_n_166,aligner_n_167}),
        .sum_result1_carry_i_16_1({aligner_n_168,aligner_n_169,aligner_n_170,aligner_n_171}),
        .underflow_OBUF(underflow_OBUF),
        .underflow_OBUF_inst_i_11_0(rounder_n_27),
        .underflow_OBUF_inst_i_2_0(sum_result1__0__0),
        .underflow_OBUF_inst_i_2_1(sum_result17_in),
        .underflow_OBUF_inst_i_6_0(adder_n_25),
        .underflow_OBUF_inst_i_6_1(adder_n_50));
  normalizer norm
       (.CO(mantissa_out11_in),
        .DI({aligner_n_48,aligner_n_47,aligner_n_49,leading_zeros}),
        .S({aligner_n_35,aligner_n_36,aligner_n_37,aligner_n_38}),
        .i__carry__0_i_6__1(norm_n_5),
        .i__carry__0_i_6__1_0({norm_n_6,norm_n_7,norm_n_8,norm_n_9}),
        .i__carry_i_8({norm_n_1,norm_n_2,norm_n_3,norm_n_4}),
        .mantissa_out1_carry_0(norm_n_10),
        .mantissa_out1_carry_1(norm_n_11),
        .\result_OBUF[30]_inst_i_49 (aligner_n_214),
        .\result_OBUF[30]_inst_i_52 (aligner_n_215),
        .rounded_mantissa0_carry_i_10__3_0(aligner_n_46),
        .rounded_mantissa0_carry_i_13__1_0(aligner_n_43),
        .rounded_mantissa0_carry_i_13__1_1(aligner_n_213),
        .rounded_mantissa0_carry_i_15__0(aligner_n_45),
        .rounded_mantissa0_carry_i_19__3(aligner_n_44),
        .rounded_mantissa0_carry_i_19__3_0(aligner_n_216),
        .rounded_mantissa0_carry_i_34__3(norm_n_13),
        .rounded_mantissa0_carry_i_34__3_0(norm_n_14),
        .rounded_mantissa0_carry_i_34__3_1({aligner_n_51,aligner_n_52,aligner_n_53}),
        .rounded_mantissa0_carry_i_34__3_2({aligner_n_185,aligner_n_186,aligner_n_187,aligner_n_188}),
        .rounded_mantissa0_carry_i_3__3(aligner_n_58),
        .rounded_mantissa0_carry_i_41__0(norm_n_12),
        .rounded_mantissa0_carry_i_5__4_0(aligner_n_34),
        .rounded_mantissa0_carry_i_84({aligner_n_39,aligner_n_40}),
        .rounded_mantissa0_carry_i_84_0({aligner_n_54,aligner_n_55,aligner_n_56,aligner_n_57}));
  rounder rounder
       (.\a[24] (rounder_n_24),
        .\a[24]_0 (rounder_n_26),
        .\a[26] (rounder_n_25),
        .\a[31] (rounder_n_23),
        .a_IBUF(a_IBUF[31:23]),
        .\b[25] (rounder_n_28),
        .\b[31] (rounder_n_22),
        .b_IBUF(b_IBUF[31:23]),
        .data0(data0_0),
        .op_IBUF(op_IBUF[0]),
        .\result_OBUF[13]_inst_i_2 ({aligner_n_201,aligner_n_202,aligner_n_203,aligner_n_204}),
        .\result_OBUF[17]_inst_i_2 ({aligner_n_205,aligner_n_206,aligner_n_207,aligner_n_208}),
        .\result_OBUF[1]_inst_i_2 (aligner_n_211),
        .\result_OBUF[1]_inst_i_2_0 ({aligner_n_197,aligner_n_198,aligner_n_199,aligner_n_200}),
        .\result_OBUF[21]_inst_i_5 ({aligner_n_209,aligner_n_210}),
        .\result_OBUF[30]_inst_i_11 (rounder_n_29),
        .\result_OBUF[31]_inst_i_10 (rounder_n_27),
        .\result_OBUF[5]_inst_i_2 ({aligner_n_193,aligner_n_194,aligner_n_195,aligner_n_196}),
        .\result_OBUF[9]_inst_i_2 ({aligner_n_189,aligner_n_190,aligner_n_191,aligner_n_192}),
        .sum_result0_carry_i_22(adder_n_82),
        .sum_result0_carry_i_33(adder_n_63),
        .sum_result1_carry_i_20(adder_n_64),
        .sum_result1_carry_i_20_0(adder_n_66));
endmodule

(* NotValidForBitStream *)
module fpu_top
   (op,
    a,
    b,
    result,
    error,
    underflow,
    overflow);
  input [1:0]op;
  input [31:0]a;
  input [31:0]b;
  output [31:0]result;
  output error;
  output underflow;
  output overflow;

  wire [31:0]a;
  wire [31:0]a_IBUF;
  wire [31:0]b;
  wire [31:0]b_IBUF;
  wire error;
  wire error_OBUF;
  wire [1:0]op;
  wire [1:0]op_IBUF;
  wire overflow;
  wire overflow_OBUF;
  wire [31:0]result;
  wire [31:0]result_OBUF;
  wire underflow;
  wire underflow_OBUF;

initial begin
 $sdf_annotate("fpu_top_tb_time_synth.sdf",,,,"tool_control");
end
  IBUF \a_IBUF[0]_inst 
       (.I(a[0]),
        .O(a_IBUF[0]));
  IBUF \a_IBUF[10]_inst 
       (.I(a[10]),
        .O(a_IBUF[10]));
  IBUF \a_IBUF[11]_inst 
       (.I(a[11]),
        .O(a_IBUF[11]));
  IBUF \a_IBUF[12]_inst 
       (.I(a[12]),
        .O(a_IBUF[12]));
  IBUF \a_IBUF[13]_inst 
       (.I(a[13]),
        .O(a_IBUF[13]));
  IBUF \a_IBUF[14]_inst 
       (.I(a[14]),
        .O(a_IBUF[14]));
  IBUF \a_IBUF[15]_inst 
       (.I(a[15]),
        .O(a_IBUF[15]));
  IBUF \a_IBUF[16]_inst 
       (.I(a[16]),
        .O(a_IBUF[16]));
  IBUF \a_IBUF[17]_inst 
       (.I(a[17]),
        .O(a_IBUF[17]));
  IBUF \a_IBUF[18]_inst 
       (.I(a[18]),
        .O(a_IBUF[18]));
  IBUF \a_IBUF[19]_inst 
       (.I(a[19]),
        .O(a_IBUF[19]));
  IBUF \a_IBUF[1]_inst 
       (.I(a[1]),
        .O(a_IBUF[1]));
  IBUF \a_IBUF[20]_inst 
       (.I(a[20]),
        .O(a_IBUF[20]));
  IBUF \a_IBUF[21]_inst 
       (.I(a[21]),
        .O(a_IBUF[21]));
  IBUF \a_IBUF[22]_inst 
       (.I(a[22]),
        .O(a_IBUF[22]));
  IBUF \a_IBUF[23]_inst 
       (.I(a[23]),
        .O(a_IBUF[23]));
  IBUF \a_IBUF[24]_inst 
       (.I(a[24]),
        .O(a_IBUF[24]));
  IBUF \a_IBUF[25]_inst 
       (.I(a[25]),
        .O(a_IBUF[25]));
  IBUF \a_IBUF[26]_inst 
       (.I(a[26]),
        .O(a_IBUF[26]));
  IBUF \a_IBUF[27]_inst 
       (.I(a[27]),
        .O(a_IBUF[27]));
  IBUF \a_IBUF[28]_inst 
       (.I(a[28]),
        .O(a_IBUF[28]));
  IBUF \a_IBUF[29]_inst 
       (.I(a[29]),
        .O(a_IBUF[29]));
  IBUF \a_IBUF[2]_inst 
       (.I(a[2]),
        .O(a_IBUF[2]));
  IBUF \a_IBUF[30]_inst 
       (.I(a[30]),
        .O(a_IBUF[30]));
  IBUF \a_IBUF[31]_inst 
       (.I(a[31]),
        .O(a_IBUF[31]));
  IBUF \a_IBUF[3]_inst 
       (.I(a[3]),
        .O(a_IBUF[3]));
  IBUF \a_IBUF[4]_inst 
       (.I(a[4]),
        .O(a_IBUF[4]));
  IBUF \a_IBUF[5]_inst 
       (.I(a[5]),
        .O(a_IBUF[5]));
  IBUF \a_IBUF[6]_inst 
       (.I(a[6]),
        .O(a_IBUF[6]));
  IBUF \a_IBUF[7]_inst 
       (.I(a[7]),
        .O(a_IBUF[7]));
  IBUF \a_IBUF[8]_inst 
       (.I(a[8]),
        .O(a_IBUF[8]));
  IBUF \a_IBUF[9]_inst 
       (.I(a[9]),
        .O(a_IBUF[9]));
  fpu_adder_top adder
       (.a_IBUF(a_IBUF),
        .b_IBUF(b_IBUF),
        .error_OBUF(error_OBUF),
        .op_IBUF(op_IBUF),
        .overflow_OBUF(overflow_OBUF),
        .result_OBUF(result_OBUF),
        .underflow_OBUF(underflow_OBUF));
  IBUF \b_IBUF[0]_inst 
       (.I(b[0]),
        .O(b_IBUF[0]));
  IBUF \b_IBUF[10]_inst 
       (.I(b[10]),
        .O(b_IBUF[10]));
  IBUF \b_IBUF[11]_inst 
       (.I(b[11]),
        .O(b_IBUF[11]));
  IBUF \b_IBUF[12]_inst 
       (.I(b[12]),
        .O(b_IBUF[12]));
  IBUF \b_IBUF[13]_inst 
       (.I(b[13]),
        .O(b_IBUF[13]));
  IBUF \b_IBUF[14]_inst 
       (.I(b[14]),
        .O(b_IBUF[14]));
  IBUF \b_IBUF[15]_inst 
       (.I(b[15]),
        .O(b_IBUF[15]));
  IBUF \b_IBUF[16]_inst 
       (.I(b[16]),
        .O(b_IBUF[16]));
  IBUF \b_IBUF[17]_inst 
       (.I(b[17]),
        .O(b_IBUF[17]));
  IBUF \b_IBUF[18]_inst 
       (.I(b[18]),
        .O(b_IBUF[18]));
  IBUF \b_IBUF[19]_inst 
       (.I(b[19]),
        .O(b_IBUF[19]));
  IBUF \b_IBUF[1]_inst 
       (.I(b[1]),
        .O(b_IBUF[1]));
  IBUF \b_IBUF[20]_inst 
       (.I(b[20]),
        .O(b_IBUF[20]));
  IBUF \b_IBUF[21]_inst 
       (.I(b[21]),
        .O(b_IBUF[21]));
  IBUF \b_IBUF[22]_inst 
       (.I(b[22]),
        .O(b_IBUF[22]));
  IBUF \b_IBUF[23]_inst 
       (.I(b[23]),
        .O(b_IBUF[23]));
  IBUF \b_IBUF[24]_inst 
       (.I(b[24]),
        .O(b_IBUF[24]));
  IBUF \b_IBUF[25]_inst 
       (.I(b[25]),
        .O(b_IBUF[25]));
  IBUF \b_IBUF[26]_inst 
       (.I(b[26]),
        .O(b_IBUF[26]));
  IBUF \b_IBUF[27]_inst 
       (.I(b[27]),
        .O(b_IBUF[27]));
  IBUF \b_IBUF[28]_inst 
       (.I(b[28]),
        .O(b_IBUF[28]));
  IBUF \b_IBUF[29]_inst 
       (.I(b[29]),
        .O(b_IBUF[29]));
  IBUF \b_IBUF[2]_inst 
       (.I(b[2]),
        .O(b_IBUF[2]));
  IBUF \b_IBUF[30]_inst 
       (.I(b[30]),
        .O(b_IBUF[30]));
  IBUF \b_IBUF[31]_inst 
       (.I(b[31]),
        .O(b_IBUF[31]));
  IBUF \b_IBUF[3]_inst 
       (.I(b[3]),
        .O(b_IBUF[3]));
  IBUF \b_IBUF[4]_inst 
       (.I(b[4]),
        .O(b_IBUF[4]));
  IBUF \b_IBUF[5]_inst 
       (.I(b[5]),
        .O(b_IBUF[5]));
  IBUF \b_IBUF[6]_inst 
       (.I(b[6]),
        .O(b_IBUF[6]));
  IBUF \b_IBUF[7]_inst 
       (.I(b[7]),
        .O(b_IBUF[7]));
  IBUF \b_IBUF[8]_inst 
       (.I(b[8]),
        .O(b_IBUF[8]));
  IBUF \b_IBUF[9]_inst 
       (.I(b[9]),
        .O(b_IBUF[9]));
  OBUF error_OBUF_inst
       (.I(error_OBUF),
        .O(error));
  IBUF \op_IBUF[0]_inst 
       (.I(op[0]),
        .O(op_IBUF[0]));
  IBUF \op_IBUF[1]_inst 
       (.I(op[1]),
        .O(op_IBUF[1]));
  OBUF overflow_OBUF_inst
       (.I(overflow_OBUF),
        .O(overflow));
  OBUF \result_OBUF[0]_inst 
       (.I(result_OBUF[0]),
        .O(result[0]));
  OBUF \result_OBUF[10]_inst 
       (.I(result_OBUF[10]),
        .O(result[10]));
  OBUF \result_OBUF[11]_inst 
       (.I(result_OBUF[11]),
        .O(result[11]));
  OBUF \result_OBUF[12]_inst 
       (.I(result_OBUF[12]),
        .O(result[12]));
  OBUF \result_OBUF[13]_inst 
       (.I(result_OBUF[13]),
        .O(result[13]));
  OBUF \result_OBUF[14]_inst 
       (.I(result_OBUF[14]),
        .O(result[14]));
  OBUF \result_OBUF[15]_inst 
       (.I(result_OBUF[15]),
        .O(result[15]));
  OBUF \result_OBUF[16]_inst 
       (.I(result_OBUF[16]),
        .O(result[16]));
  OBUF \result_OBUF[17]_inst 
       (.I(result_OBUF[17]),
        .O(result[17]));
  OBUF \result_OBUF[18]_inst 
       (.I(result_OBUF[18]),
        .O(result[18]));
  OBUF \result_OBUF[19]_inst 
       (.I(result_OBUF[19]),
        .O(result[19]));
  OBUF \result_OBUF[1]_inst 
       (.I(result_OBUF[1]),
        .O(result[1]));
  OBUF \result_OBUF[20]_inst 
       (.I(result_OBUF[20]),
        .O(result[20]));
  OBUF \result_OBUF[21]_inst 
       (.I(result_OBUF[21]),
        .O(result[21]));
  OBUF \result_OBUF[22]_inst 
       (.I(result_OBUF[22]),
        .O(result[22]));
  OBUF \result_OBUF[23]_inst 
       (.I(result_OBUF[23]),
        .O(result[23]));
  OBUF \result_OBUF[24]_inst 
       (.I(result_OBUF[24]),
        .O(result[24]));
  OBUF \result_OBUF[25]_inst 
       (.I(result_OBUF[25]),
        .O(result[25]));
  OBUF \result_OBUF[26]_inst 
       (.I(result_OBUF[26]),
        .O(result[26]));
  OBUF \result_OBUF[27]_inst 
       (.I(result_OBUF[27]),
        .O(result[27]));
  OBUF \result_OBUF[28]_inst 
       (.I(result_OBUF[28]),
        .O(result[28]));
  OBUF \result_OBUF[29]_inst 
       (.I(result_OBUF[29]),
        .O(result[29]));
  OBUF \result_OBUF[2]_inst 
       (.I(result_OBUF[2]),
        .O(result[2]));
  OBUF \result_OBUF[30]_inst 
       (.I(result_OBUF[30]),
        .O(result[30]));
  OBUF \result_OBUF[31]_inst 
       (.I(result_OBUF[31]),
        .O(result[31]));
  OBUF \result_OBUF[3]_inst 
       (.I(result_OBUF[3]),
        .O(result[3]));
  OBUF \result_OBUF[4]_inst 
       (.I(result_OBUF[4]),
        .O(result[4]));
  OBUF \result_OBUF[5]_inst 
       (.I(result_OBUF[5]),
        .O(result[5]));
  OBUF \result_OBUF[6]_inst 
       (.I(result_OBUF[6]),
        .O(result[6]));
  OBUF \result_OBUF[7]_inst 
       (.I(result_OBUF[7]),
        .O(result[7]));
  OBUF \result_OBUF[8]_inst 
       (.I(result_OBUF[8]),
        .O(result[8]));
  OBUF \result_OBUF[9]_inst 
       (.I(result_OBUF[9]),
        .O(result[9]));
  OBUF underflow_OBUF_inst
       (.I(underflow_OBUF),
        .O(underflow));
endmodule

module mantissa_adder
   (CO,
    data1,
    sum_result0_carry__4_i_8,
    data2,
    i__carry__4_i_8,
    i__carry__1_i_8__0,
    \b[30] ,
    \b[31] ,
    \sum_result0_inferred__0/i__carry_0 ,
    \b[30]_0 ,
    sum_result1_carry__1_i_10,
    \b[25] ,
    \b[22] ,
    \a[25] ,
    \a[22] ,
    \b[30]_1 ,
    \a[30] ,
    \b[31]_0 ,
    \sum_result0_inferred__0/i__carry_1 ,
    \a[12] ,
    \a[19] ,
    \a[15] ,
    \b[1] ,
    \b[14] ,
    \a[28] ,
    \sum_result0_inferred__0/i__carry__1_0 ,
    \sum_result0_inferred__0/i__carry__1_1 ,
    \sum_result0_inferred__0/i__carry__2_0 ,
    \sum_result0_inferred__0/i__carry_2 ,
    \sum_result0_inferred__0/i__carry_3 ,
    \sum_result0_inferred__0/i__carry__0_0 ,
    \sum_result0_inferred__0/i__carry__0_1 ,
    \sum_result0_inferred__0/i__carry__0_2 ,
    \sum_result0_inferred__0/i__carry__1_2 ,
    \sum_result0_inferred__0/i__carry__1_3 ,
    \sum_result0_inferred__0/i__carry__0_3 ,
    \sum_result0_inferred__0/i__carry__2_1 ,
    \sum_result0_inferred__0/i__carry__2_2 ,
    \sum_result0_inferred__0/i__carry__2_3 ,
    \sum_result0_inferred__0/i__carry__3_0 ,
    \sum_result0_inferred__0/i__carry__3_1 ,
    \sum_result0_inferred__0/i__carry__3_2 ,
    \sum_result0_inferred__0/i__carry__3_3 ,
    DI,
    S,
    sum_result1_carry__1_0,
    sum_result1_carry__1_1,
    underflow_OBUF_inst_i_6,
    underflow_OBUF_inst_i_6_0,
    mantissa_out1_carry_i_72,
    mantissa_out1_carry_i_72_0,
    mantissa_out1_carry_i_67,
    mantissa_out1_carry_i_67_0,
    mantissa_out1_carry_i_67_1,
    mantissa_out1_carry_i_67_2,
    mantissa_out1_carry_i_67_3,
    mantissa_out1_carry_i_63,
    mantissa_out1_carry_i_63_0,
    mantissa_out1_carry_i_63_1,
    mantissa_out1_carry_i_60,
    mantissa_out1_carry_i_60_0,
    mantissa_out1_carry_i_56,
    mantissa_out1_carry_i_56_0,
    mantissa_out1_carry_i_56_1,
    mantissa_out1_carry_i_56_2,
    mantissa_out1_carry_i_56_3,
    rounded_mantissa0_carry_i_27__3,
    rounded_mantissa0_carry_i_27__3_0,
    mantissa_out1_carry_i_72_1,
    mantissa_out1_carry_i_72_2,
    mantissa_out1_carry_i_67_4,
    mantissa_out1_carry_i_67_5,
    mantissa_out1_carry_i_63_2,
    mantissa_out1_carry_i_63_3,
    mantissa_out1_carry_i_63_4,
    mantissa_out1_carry_i_63_5,
    mantissa_out1_carry_i_63_6,
    mantissa_out1_carry_i_60_1,
    mantissa_out1_carry_i_60_2,
    mantissa_out1_carry_i_56_4,
    mantissa_out1_carry_i_56_5,
    mantissa_out1_carry_i_56_6,
    mantissa_out1_carry_i_56_7,
    mantissa_out1_carry_i_56_8,
    rounded_mantissa0_carry_i_27__3_1,
    rounded_mantissa0_carry_i_27__3_2,
    rounded_mantissa0_carry_i_27__3_3,
    rounded_mantissa0_carry_i_27__3_4,
    rounded_mantissa0_carry_i_27__3_5,
    \sum_result1_inferred__2/i__carry__0_0 ,
    \sum_result1_inferred__2/i__carry__0_1 ,
    \sum_result1_inferred__2/i__carry__1_0 ,
    \sum_result1_inferred__2/i__carry__1_1 ,
    underflow_OBUF_inst_i_6_1,
    underflow_OBUF_inst_i_6_2,
    b_IBUF,
    a_IBUF,
    rounded_mantissa0_carry_i_28__0,
    op_IBUF,
    O,
    sum_result1_carry__0_i_2);
  output [0:0]CO;
  output [23:0]data1;
  output [0:0]sum_result0_carry__4_i_8;
  output [23:0]data2;
  output [0:0]i__carry__4_i_8;
  output [0:0]i__carry__1_i_8__0;
  output [3:0]\b[30] ;
  output \b[31] ;
  output \sum_result0_inferred__0/i__carry_0 ;
  output [3:0]\b[30]_0 ;
  output sum_result1_carry__1_i_10;
  output \b[25] ;
  output \b[22] ;
  output \a[25] ;
  output \a[22] ;
  output [3:0]\b[30]_1 ;
  output [3:0]\a[30] ;
  output \b[31]_0 ;
  output \sum_result0_inferred__0/i__carry_1 ;
  output \a[12] ;
  output \a[19] ;
  output \a[15] ;
  output \b[1] ;
  output \b[14] ;
  output \a[28] ;
  output \sum_result0_inferred__0/i__carry__1_0 ;
  output \sum_result0_inferred__0/i__carry__1_1 ;
  output \sum_result0_inferred__0/i__carry__2_0 ;
  output \sum_result0_inferred__0/i__carry_2 ;
  output \sum_result0_inferred__0/i__carry_3 ;
  output \sum_result0_inferred__0/i__carry__0_0 ;
  output \sum_result0_inferred__0/i__carry__0_1 ;
  output \sum_result0_inferred__0/i__carry__0_2 ;
  output \sum_result0_inferred__0/i__carry__1_2 ;
  output \sum_result0_inferred__0/i__carry__1_3 ;
  output \sum_result0_inferred__0/i__carry__0_3 ;
  output \sum_result0_inferred__0/i__carry__2_1 ;
  output \sum_result0_inferred__0/i__carry__2_2 ;
  output \sum_result0_inferred__0/i__carry__2_3 ;
  output \sum_result0_inferred__0/i__carry__3_0 ;
  output \sum_result0_inferred__0/i__carry__3_1 ;
  output \sum_result0_inferred__0/i__carry__3_2 ;
  output \sum_result0_inferred__0/i__carry__3_3 ;
  input [3:0]DI;
  input [3:0]S;
  input [3:0]sum_result1_carry__1_0;
  input [3:0]sum_result1_carry__1_1;
  input [3:0]underflow_OBUF_inst_i_6;
  input [3:0]underflow_OBUF_inst_i_6_0;
  input [3:0]mantissa_out1_carry_i_72;
  input [3:0]mantissa_out1_carry_i_72_0;
  input mantissa_out1_carry_i_67;
  input mantissa_out1_carry_i_67_0;
  input mantissa_out1_carry_i_67_1;
  input [0:0]mantissa_out1_carry_i_67_2;
  input [3:0]mantissa_out1_carry_i_67_3;
  input mantissa_out1_carry_i_63;
  input [2:0]mantissa_out1_carry_i_63_0;
  input [3:0]mantissa_out1_carry_i_63_1;
  input [3:0]mantissa_out1_carry_i_60;
  input [3:0]mantissa_out1_carry_i_60_0;
  input mantissa_out1_carry_i_56;
  input mantissa_out1_carry_i_56_0;
  input mantissa_out1_carry_i_56_1;
  input mantissa_out1_carry_i_56_2;
  input [3:0]mantissa_out1_carry_i_56_3;
  input [3:0]rounded_mantissa0_carry_i_27__3;
  input [3:0]rounded_mantissa0_carry_i_27__3_0;
  input [3:0]mantissa_out1_carry_i_72_1;
  input [3:0]mantissa_out1_carry_i_72_2;
  input [3:0]mantissa_out1_carry_i_67_4;
  input [3:0]mantissa_out1_carry_i_67_5;
  input mantissa_out1_carry_i_63_2;
  input mantissa_out1_carry_i_63_3;
  input mantissa_out1_carry_i_63_4;
  input [0:0]mantissa_out1_carry_i_63_5;
  input [3:0]mantissa_out1_carry_i_63_6;
  input [3:0]mantissa_out1_carry_i_60_1;
  input [3:0]mantissa_out1_carry_i_60_2;
  input mantissa_out1_carry_i_56_4;
  input mantissa_out1_carry_i_56_5;
  input mantissa_out1_carry_i_56_6;
  input mantissa_out1_carry_i_56_7;
  input [3:0]mantissa_out1_carry_i_56_8;
  input rounded_mantissa0_carry_i_27__3_1;
  input rounded_mantissa0_carry_i_27__3_2;
  input rounded_mantissa0_carry_i_27__3_3;
  input rounded_mantissa0_carry_i_27__3_4;
  input [3:0]rounded_mantissa0_carry_i_27__3_5;
  input [3:0]\sum_result1_inferred__2/i__carry__0_0 ;
  input [3:0]\sum_result1_inferred__2/i__carry__0_1 ;
  input [3:0]\sum_result1_inferred__2/i__carry__1_0 ;
  input [3:0]\sum_result1_inferred__2/i__carry__1_1 ;
  input [3:0]underflow_OBUF_inst_i_6_1;
  input [3:0]underflow_OBUF_inst_i_6_2;
  input [31:0]b_IBUF;
  input [31:0]a_IBUF;
  input rounded_mantissa0_carry_i_28__0;
  input [0:0]op_IBUF;
  input [1:0]O;
  input sum_result1_carry__0_i_2;

  wire [0:0]CO;
  wire [3:0]DI;
  wire [1:0]O;
  wire [3:0]S;
  wire \a[12] ;
  wire \a[15] ;
  wire \a[19] ;
  wire \a[22] ;
  wire \a[25] ;
  wire \a[28] ;
  wire [3:0]\a[30] ;
  wire [31:0]a_IBUF;
  wire \b[14] ;
  wire \b[1] ;
  wire \b[22] ;
  wire \b[25] ;
  wire [3:0]\b[30] ;
  wire [3:0]\b[30]_0 ;
  wire [3:0]\b[30]_1 ;
  wire \b[31] ;
  wire \b[31]_0 ;
  wire [31:0]b_IBUF;
  wire [23:0]data1;
  wire [23:0]data2;
  wire [0:0]i__carry__1_i_8__0;
  wire [0:0]i__carry__4_i_8;
  wire i__carry_i_19_n_0;
  wire i__carry_i_20_n_0;
  wire mantissa_out1_carry_i_56;
  wire mantissa_out1_carry_i_56_0;
  wire mantissa_out1_carry_i_56_1;
  wire mantissa_out1_carry_i_56_2;
  wire [3:0]mantissa_out1_carry_i_56_3;
  wire mantissa_out1_carry_i_56_4;
  wire mantissa_out1_carry_i_56_5;
  wire mantissa_out1_carry_i_56_6;
  wire mantissa_out1_carry_i_56_7;
  wire [3:0]mantissa_out1_carry_i_56_8;
  wire [3:0]mantissa_out1_carry_i_60;
  wire [3:0]mantissa_out1_carry_i_60_0;
  wire [3:0]mantissa_out1_carry_i_60_1;
  wire [3:0]mantissa_out1_carry_i_60_2;
  wire mantissa_out1_carry_i_63;
  wire [2:0]mantissa_out1_carry_i_63_0;
  wire [3:0]mantissa_out1_carry_i_63_1;
  wire mantissa_out1_carry_i_63_2;
  wire mantissa_out1_carry_i_63_3;
  wire mantissa_out1_carry_i_63_4;
  wire [0:0]mantissa_out1_carry_i_63_5;
  wire [3:0]mantissa_out1_carry_i_63_6;
  wire mantissa_out1_carry_i_67;
  wire mantissa_out1_carry_i_67_0;
  wire mantissa_out1_carry_i_67_1;
  wire [0:0]mantissa_out1_carry_i_67_2;
  wire [3:0]mantissa_out1_carry_i_67_3;
  wire [3:0]mantissa_out1_carry_i_67_4;
  wire [3:0]mantissa_out1_carry_i_67_5;
  wire [3:0]mantissa_out1_carry_i_72;
  wire [3:0]mantissa_out1_carry_i_72_0;
  wire [3:0]mantissa_out1_carry_i_72_1;
  wire [3:0]mantissa_out1_carry_i_72_2;
  wire [0:0]op_IBUF;
  wire \result_OBUF[30]_inst_i_28_n_0 ;
  wire \result_OBUF[31]_inst_i_11_n_0 ;
  wire \result_OBUF[31]_inst_i_12_n_0 ;
  wire [3:0]rounded_mantissa0_carry_i_27__3;
  wire [3:0]rounded_mantissa0_carry_i_27__3_0;
  wire rounded_mantissa0_carry_i_27__3_1;
  wire rounded_mantissa0_carry_i_27__3_2;
  wire rounded_mantissa0_carry_i_27__3_3;
  wire rounded_mantissa0_carry_i_27__3_4;
  wire [3:0]rounded_mantissa0_carry_i_27__3_5;
  wire rounded_mantissa0_carry_i_28__0;
  wire sum_result0_carry__0_n_0;
  wire sum_result0_carry__0_n_1;
  wire sum_result0_carry__0_n_2;
  wire sum_result0_carry__0_n_3;
  wire sum_result0_carry__1_n_0;
  wire sum_result0_carry__1_n_1;
  wire sum_result0_carry__1_n_2;
  wire sum_result0_carry__1_n_3;
  wire sum_result0_carry__2_n_0;
  wire sum_result0_carry__2_n_1;
  wire sum_result0_carry__2_n_2;
  wire sum_result0_carry__2_n_3;
  wire sum_result0_carry__3_n_0;
  wire sum_result0_carry__3_n_1;
  wire sum_result0_carry__3_n_2;
  wire sum_result0_carry__3_n_3;
  wire [0:0]sum_result0_carry__4_i_8;
  wire sum_result0_carry__4_n_1;
  wire sum_result0_carry__4_n_2;
  wire sum_result0_carry__4_n_3;
  wire sum_result0_carry_i_18_n_0;
  wire sum_result0_carry_i_19_n_0;
  wire sum_result0_carry_i_28_n_0;
  wire sum_result0_carry_n_0;
  wire sum_result0_carry_n_1;
  wire sum_result0_carry_n_2;
  wire sum_result0_carry_n_3;
  wire \sum_result0_inferred__0/i__carry_0 ;
  wire \sum_result0_inferred__0/i__carry_1 ;
  wire \sum_result0_inferred__0/i__carry_2 ;
  wire \sum_result0_inferred__0/i__carry_3 ;
  wire \sum_result0_inferred__0/i__carry__0_0 ;
  wire \sum_result0_inferred__0/i__carry__0_1 ;
  wire \sum_result0_inferred__0/i__carry__0_2 ;
  wire \sum_result0_inferred__0/i__carry__0_3 ;
  wire \sum_result0_inferred__0/i__carry__0_n_0 ;
  wire \sum_result0_inferred__0/i__carry__0_n_1 ;
  wire \sum_result0_inferred__0/i__carry__0_n_2 ;
  wire \sum_result0_inferred__0/i__carry__0_n_3 ;
  wire \sum_result0_inferred__0/i__carry__1_0 ;
  wire \sum_result0_inferred__0/i__carry__1_1 ;
  wire \sum_result0_inferred__0/i__carry__1_2 ;
  wire \sum_result0_inferred__0/i__carry__1_3 ;
  wire \sum_result0_inferred__0/i__carry__1_n_0 ;
  wire \sum_result0_inferred__0/i__carry__1_n_1 ;
  wire \sum_result0_inferred__0/i__carry__1_n_2 ;
  wire \sum_result0_inferred__0/i__carry__1_n_3 ;
  wire \sum_result0_inferred__0/i__carry__2_0 ;
  wire \sum_result0_inferred__0/i__carry__2_1 ;
  wire \sum_result0_inferred__0/i__carry__2_2 ;
  wire \sum_result0_inferred__0/i__carry__2_3 ;
  wire \sum_result0_inferred__0/i__carry__2_n_0 ;
  wire \sum_result0_inferred__0/i__carry__2_n_1 ;
  wire \sum_result0_inferred__0/i__carry__2_n_2 ;
  wire \sum_result0_inferred__0/i__carry__2_n_3 ;
  wire \sum_result0_inferred__0/i__carry__3_0 ;
  wire \sum_result0_inferred__0/i__carry__3_1 ;
  wire \sum_result0_inferred__0/i__carry__3_2 ;
  wire \sum_result0_inferred__0/i__carry__3_3 ;
  wire \sum_result0_inferred__0/i__carry__3_n_0 ;
  wire \sum_result0_inferred__0/i__carry__3_n_1 ;
  wire \sum_result0_inferred__0/i__carry__3_n_2 ;
  wire \sum_result0_inferred__0/i__carry__3_n_3 ;
  wire \sum_result0_inferred__0/i__carry__4_n_1 ;
  wire \sum_result0_inferred__0/i__carry__4_n_2 ;
  wire \sum_result0_inferred__0/i__carry__4_n_3 ;
  wire \sum_result0_inferred__0/i__carry_n_0 ;
  wire \sum_result0_inferred__0/i__carry_n_1 ;
  wire \sum_result0_inferred__0/i__carry_n_2 ;
  wire \sum_result0_inferred__0/i__carry_n_3 ;
  wire sum_result1_carry__0_i_2;
  wire sum_result1_carry__0_n_0;
  wire sum_result1_carry__0_n_1;
  wire sum_result1_carry__0_n_2;
  wire sum_result1_carry__0_n_3;
  wire [3:0]sum_result1_carry__1_0;
  wire [3:0]sum_result1_carry__1_1;
  wire sum_result1_carry__1_i_10;
  wire sum_result1_carry__1_n_1;
  wire sum_result1_carry__1_n_2;
  wire sum_result1_carry__1_n_3;
  wire sum_result1_carry_n_0;
  wire sum_result1_carry_n_1;
  wire sum_result1_carry_n_2;
  wire sum_result1_carry_n_3;
  wire [3:0]\sum_result1_inferred__2/i__carry__0_0 ;
  wire [3:0]\sum_result1_inferred__2/i__carry__0_1 ;
  wire \sum_result1_inferred__2/i__carry__0_n_0 ;
  wire \sum_result1_inferred__2/i__carry__0_n_1 ;
  wire \sum_result1_inferred__2/i__carry__0_n_2 ;
  wire \sum_result1_inferred__2/i__carry__0_n_3 ;
  wire [3:0]\sum_result1_inferred__2/i__carry__1_0 ;
  wire [3:0]\sum_result1_inferred__2/i__carry__1_1 ;
  wire \sum_result1_inferred__2/i__carry__1_n_1 ;
  wire \sum_result1_inferred__2/i__carry__1_n_2 ;
  wire \sum_result1_inferred__2/i__carry__1_n_3 ;
  wire \sum_result1_inferred__2/i__carry_n_0 ;
  wire \sum_result1_inferred__2/i__carry_n_1 ;
  wire \sum_result1_inferred__2/i__carry_n_2 ;
  wire \sum_result1_inferred__2/i__carry_n_3 ;
  wire [3:0]underflow_OBUF_inst_i_6;
  wire [3:0]underflow_OBUF_inst_i_6_0;
  wire [3:0]underflow_OBUF_inst_i_6_1;
  wire [3:0]underflow_OBUF_inst_i_6_2;
  wire [3:0]NLW_sum_result1_carry_O_UNCONNECTED;
  wire [3:0]NLW_sum_result1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_sum_result1_carry__1_O_UNCONNECTED;
  wire [3:0]\NLW_sum_result1_inferred__2/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_sum_result1_inferred__2/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_sum_result1_inferred__2/i__carry__1_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h9)) 
    aligned_mantissa_a1_carry__0_i_1
       (.I0(b_IBUF[30]),
        .I1(a_IBUF[30]),
        .O(\b[30]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    aligned_mantissa_a1_carry__0_i_2
       (.I0(b_IBUF[29]),
        .I1(a_IBUF[29]),
        .O(\b[30]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    aligned_mantissa_a1_carry__0_i_3
       (.I0(b_IBUF[28]),
        .I1(a_IBUF[28]),
        .O(\b[30]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    aligned_mantissa_a1_carry__0_i_4
       (.I0(b_IBUF[27]),
        .I1(a_IBUF[27]),
        .O(\b[30]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    aligned_mantissa_b1_carry__0_i_1
       (.I0(b_IBUF[30]),
        .I1(a_IBUF[30]),
        .O(\b[30] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    aligned_mantissa_b1_carry__0_i_2
       (.I0(b_IBUF[29]),
        .I1(a_IBUF[29]),
        .O(\b[30] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    aligned_mantissa_b1_carry__0_i_3
       (.I0(b_IBUF[28]),
        .I1(a_IBUF[28]),
        .O(\b[30] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    aligned_mantissa_b1_carry__0_i_4
       (.I0(b_IBUF[27]),
        .I1(a_IBUF[27]),
        .O(\b[30] [0]));
  LUT4 #(
    .INIT(16'h2B22)) 
    final_exp1_carry_i_1
       (.I0(a_IBUF[30]),
        .I1(b_IBUF[30]),
        .I2(b_IBUF[29]),
        .I3(a_IBUF[29]),
        .O(\a[30] [3]));
  LUT4 #(
    .INIT(16'h22B2)) 
    final_exp1_carry_i_2
       (.I0(a_IBUF[28]),
        .I1(b_IBUF[28]),
        .I2(a_IBUF[27]),
        .I3(b_IBUF[27]),
        .O(\a[30] [2]));
  LUT4 #(
    .INIT(16'h22B2)) 
    final_exp1_carry_i_3
       (.I0(a_IBUF[26]),
        .I1(b_IBUF[26]),
        .I2(a_IBUF[25]),
        .I3(b_IBUF[25]),
        .O(\a[30] [1]));
  LUT4 #(
    .INIT(16'h22B2)) 
    final_exp1_carry_i_4
       (.I0(a_IBUF[24]),
        .I1(b_IBUF[24]),
        .I2(a_IBUF[23]),
        .I3(b_IBUF[23]),
        .O(\a[30] [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    final_exp1_carry_i_5
       (.I0(b_IBUF[30]),
        .I1(a_IBUF[30]),
        .I2(b_IBUF[29]),
        .I3(a_IBUF[29]),
        .O(\b[30]_1 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    final_exp1_carry_i_6
       (.I0(b_IBUF[28]),
        .I1(a_IBUF[28]),
        .I2(b_IBUF[27]),
        .I3(a_IBUF[27]),
        .O(\b[30]_1 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    final_exp1_carry_i_7
       (.I0(b_IBUF[26]),
        .I1(a_IBUF[26]),
        .I2(b_IBUF[25]),
        .I3(a_IBUF[25]),
        .O(\b[30]_1 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    final_exp1_carry_i_8
       (.I0(b_IBUF[24]),
        .I1(a_IBUF[24]),
        .I2(b_IBUF[23]),
        .I3(a_IBUF[23]),
        .O(\b[30]_1 [0]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    i__carry__4_i_18
       (.I0(a_IBUF[28]),
        .I1(a_IBUF[27]),
        .I2(a_IBUF[30]),
        .I3(a_IBUF[29]),
        .O(\a[28] ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    i__carry_i_12
       (.I0(a_IBUF[12]),
        .I1(a_IBUF[13]),
        .I2(a_IBUF[11]),
        .I3(a_IBUF[10]),
        .I4(i__carry_i_19_n_0),
        .O(\a[12] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    i__carry_i_13
       (.I0(a_IBUF[19]),
        .I1(a_IBUF[18]),
        .I2(a_IBUF[20]),
        .I3(a_IBUF[21]),
        .O(\a[19] ));
  LUT5 #(
    .INIT(32'h00000002)) 
    i__carry_i_14
       (.I0(i__carry_i_20_n_0),
        .I1(a_IBUF[15]),
        .I2(a_IBUF[14]),
        .I3(a_IBUF[17]),
        .I4(a_IBUF[16]),
        .O(\a[15] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    i__carry_i_19
       (.I0(a_IBUF[8]),
        .I1(a_IBUF[9]),
        .I2(a_IBUF[7]),
        .I3(a_IBUF[6]),
        .O(i__carry_i_19_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    i__carry_i_20
       (.I0(a_IBUF[5]),
        .I1(a_IBUF[2]),
        .I2(a_IBUF[4]),
        .I3(a_IBUF[3]),
        .I4(a_IBUF[1]),
        .I5(a_IBUF[0]),
        .O(i__carry_i_20_n_0));
  LUT4 #(
    .INIT(16'h4777)) 
    mantissa_out1_carry_i_42
       (.I0(data1[9]),
        .I1(i__carry__1_i_8__0),
        .I2(CO),
        .I3(data2[9]),
        .O(\sum_result0_inferred__0/i__carry__1_3 ));
  LUT4 #(
    .INIT(16'h4777)) 
    mantissa_out1_carry_i_44
       (.I0(data1[8]),
        .I1(i__carry__1_i_8__0),
        .I2(CO),
        .I3(data2[8]),
        .O(\sum_result0_inferred__0/i__carry__1_1 ));
  LUT4 #(
    .INIT(16'h4777)) 
    mantissa_out1_carry_i_46
       (.I0(data1[11]),
        .I1(i__carry__1_i_8__0),
        .I2(CO),
        .I3(data2[11]),
        .O(\sum_result0_inferred__0/i__carry__1_2 ));
  LUT4 #(
    .INIT(16'h4777)) 
    mantissa_out1_carry_i_47
       (.I0(data1[10]),
        .I1(i__carry__1_i_8__0),
        .I2(CO),
        .I3(data2[10]),
        .O(\sum_result0_inferred__0/i__carry__1_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    mantissa_out1_carry_i_48
       (.I0(data1[12]),
        .I1(i__carry__1_i_8__0),
        .I2(CO),
        .I3(data2[12]),
        .O(\sum_result0_inferred__0/i__carry__2_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    mantissa_out1_carry_i_50
       (.I0(data1[13]),
        .I1(i__carry__1_i_8__0),
        .I2(CO),
        .I3(data2[13]),
        .O(\sum_result0_inferred__0/i__carry__2_2 ));
  LUT4 #(
    .INIT(16'h4777)) 
    mantissa_out1_carry_i_51
       (.I0(data1[14]),
        .I1(i__carry__1_i_8__0),
        .I2(CO),
        .I3(data2[14]),
        .O(\sum_result0_inferred__0/i__carry__2_1 ));
  LUT4 #(
    .INIT(16'h4777)) 
    mantissa_out1_carry_i_52
       (.I0(data1[15]),
        .I1(i__carry__1_i_8__0),
        .I2(CO),
        .I3(data2[15]),
        .O(\sum_result0_inferred__0/i__carry__2_3 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \result_OBUF[22]_inst_i_18 
       (.I0(data1[1]),
        .I1(i__carry__1_i_8__0),
        .I2(CO),
        .I3(data2[1]),
        .O(\sum_result0_inferred__0/i__carry_3 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \result_OBUF[30]_inst_i_11 
       (.I0(b_IBUF[25]),
        .I1(b_IBUF[26]),
        .I2(b_IBUF[23]),
        .I3(b_IBUF[24]),
        .I4(\result_OBUF[30]_inst_i_28_n_0 ),
        .O(\b[25] ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \result_OBUF[30]_inst_i_12 
       (.I0(a_IBUF[25]),
        .I1(a_IBUF[26]),
        .I2(a_IBUF[23]),
        .I3(a_IBUF[24]),
        .I4(\a[28] ),
        .O(\a[25] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \result_OBUF[30]_inst_i_28 
       (.I0(b_IBUF[28]),
        .I1(b_IBUF[27]),
        .I2(b_IBUF[30]),
        .I3(b_IBUF[29]),
        .O(\result_OBUF[30]_inst_i_28_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \result_OBUF[31]_inst_i_10 
       (.I0(\a[12] ),
        .I1(a_IBUF[22]),
        .I2(\a[19] ),
        .I3(\a[15] ),
        .O(\a[22] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \result_OBUF[31]_inst_i_11 
       (.I0(b_IBUF[16]),
        .I1(b_IBUF[15]),
        .I2(b_IBUF[17]),
        .I3(b_IBUF[13]),
        .I4(b_IBUF[12]),
        .I5(b_IBUF[14]),
        .O(\result_OBUF[31]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \result_OBUF[31]_inst_i_12 
       (.I0(b_IBUF[6]),
        .I1(b_IBUF[7]),
        .I2(b_IBUF[8]),
        .I3(b_IBUF[10]),
        .I4(b_IBUF[9]),
        .I5(b_IBUF[11]),
        .O(\result_OBUF[31]_inst_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \result_OBUF[31]_inst_i_7 
       (.I0(\result_OBUF[31]_inst_i_11_n_0 ),
        .I1(b_IBUF[22]),
        .I2(sum_result0_carry_i_18_n_0),
        .I3(\result_OBUF[31]_inst_i_12_n_0 ),
        .I4(\b[1] ),
        .O(\b[22] ));
  LUT6 #(
    .INIT(64'h1551511510010110)) 
    rounded_mantissa0_carry_i_21__2
       (.I0(rounded_mantissa0_carry_i_28__0),
        .I1(\sum_result0_inferred__0/i__carry_0 ),
        .I2(b_IBUF[31]),
        .I3(op_IBUF),
        .I4(a_IBUF[31]),
        .I5(O[0]),
        .O(\b[31] ));
  LUT4 #(
    .INIT(16'h4777)) 
    rounded_mantissa0_carry_i_22__2
       (.I0(data1[16]),
        .I1(i__carry__1_i_8__0),
        .I2(CO),
        .I3(data2[16]),
        .O(\sum_result0_inferred__0/i__carry__3_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    rounded_mantissa0_carry_i_30__3
       (.I0(data1[5]),
        .I1(i__carry__1_i_8__0),
        .I2(CO),
        .I3(data2[5]),
        .O(\sum_result0_inferred__0/i__carry__0_1 ));
  LUT4 #(
    .INIT(16'h4777)) 
    rounded_mantissa0_carry_i_33__3
       (.I0(data1[18]),
        .I1(i__carry__1_i_8__0),
        .I2(CO),
        .I3(data2[18]),
        .O(\sum_result0_inferred__0/i__carry__3_2 ));
  LUT4 #(
    .INIT(16'h4777)) 
    rounded_mantissa0_carry_i_45__0
       (.I0(data1[2]),
        .I1(i__carry__1_i_8__0),
        .I2(CO),
        .I3(data2[2]),
        .O(\sum_result0_inferred__0/i__carry_0 ));
  LUT6 #(
    .INIT(64'hEAAEAEEAEFFEFEEF)) 
    rounded_mantissa0_carry_i_71
       (.I0(rounded_mantissa0_carry_i_28__0),
        .I1(\sum_result0_inferred__0/i__carry_1 ),
        .I2(b_IBUF[31]),
        .I3(op_IBUF),
        .I4(a_IBUF[31]),
        .I5(O[1]),
        .O(\b[31]_0 ));
  CARRY4 sum_result0_carry
       (.CI(1'b0),
        .CO({sum_result0_carry_n_0,sum_result0_carry_n_1,sum_result0_carry_n_2,sum_result0_carry_n_3}),
        .CYINIT(1'b1),
        .DI(mantissa_out1_carry_i_72),
        .O(data1[3:0]),
        .S(mantissa_out1_carry_i_72_0));
  CARRY4 sum_result0_carry__0
       (.CI(sum_result0_carry_n_0),
        .CO({sum_result0_carry__0_n_0,sum_result0_carry__0_n_1,sum_result0_carry__0_n_2,sum_result0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({mantissa_out1_carry_i_67,mantissa_out1_carry_i_67_0,mantissa_out1_carry_i_67_1,mantissa_out1_carry_i_67_2}),
        .O(data1[7:4]),
        .S(mantissa_out1_carry_i_67_3));
  CARRY4 sum_result0_carry__1
       (.CI(sum_result0_carry__0_n_0),
        .CO({sum_result0_carry__1_n_0,sum_result0_carry__1_n_1,sum_result0_carry__1_n_2,sum_result0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({mantissa_out1_carry_i_63,mantissa_out1_carry_i_63_0}),
        .O(data1[11:8]),
        .S(mantissa_out1_carry_i_63_1));
  CARRY4 sum_result0_carry__2
       (.CI(sum_result0_carry__1_n_0),
        .CO({sum_result0_carry__2_n_0,sum_result0_carry__2_n_1,sum_result0_carry__2_n_2,sum_result0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(mantissa_out1_carry_i_60),
        .O(data1[15:12]),
        .S(mantissa_out1_carry_i_60_0));
  CARRY4 sum_result0_carry__3
       (.CI(sum_result0_carry__2_n_0),
        .CO({sum_result0_carry__3_n_0,sum_result0_carry__3_n_1,sum_result0_carry__3_n_2,sum_result0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({mantissa_out1_carry_i_56,mantissa_out1_carry_i_56_0,mantissa_out1_carry_i_56_1,mantissa_out1_carry_i_56_2}),
        .O(data1[19:16]),
        .S(mantissa_out1_carry_i_56_3));
  CARRY4 sum_result0_carry__4
       (.CI(sum_result0_carry__3_n_0),
        .CO({sum_result0_carry__4_i_8,sum_result0_carry__4_n_1,sum_result0_carry__4_n_2,sum_result0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(rounded_mantissa0_carry_i_27__3),
        .O(data1[23:20]),
        .S(rounded_mantissa0_carry_i_27__3_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    sum_result0_carry_i_12
       (.I0(b_IBUF[14]),
        .I1(b_IBUF[15]),
        .I2(b_IBUF[16]),
        .I3(b_IBUF[17]),
        .I4(sum_result0_carry_i_18_n_0),
        .I5(sum_result0_carry_i_19_n_0),
        .O(\b[14] ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sum_result0_carry_i_13
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[0]),
        .I2(b_IBUF[5]),
        .I3(b_IBUF[2]),
        .I4(b_IBUF[4]),
        .I5(b_IBUF[3]),
        .O(\b[1] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sum_result0_carry_i_18
       (.I0(b_IBUF[19]),
        .I1(b_IBUF[20]),
        .I2(b_IBUF[18]),
        .I3(b_IBUF[21]),
        .O(sum_result0_carry_i_18_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    sum_result0_carry_i_19
       (.I0(b_IBUF[6]),
        .I1(b_IBUF[7]),
        .I2(b_IBUF[9]),
        .I3(b_IBUF[8]),
        .I4(sum_result0_carry_i_28_n_0),
        .O(sum_result0_carry_i_19_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sum_result0_carry_i_28
       (.I0(b_IBUF[10]),
        .I1(b_IBUF[11]),
        .I2(b_IBUF[12]),
        .I3(b_IBUF[13]),
        .O(sum_result0_carry_i_28_n_0));
  CARRY4 \sum_result0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\sum_result0_inferred__0/i__carry_n_0 ,\sum_result0_inferred__0/i__carry_n_1 ,\sum_result0_inferred__0/i__carry_n_2 ,\sum_result0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(mantissa_out1_carry_i_72_1),
        .O(data2[3:0]),
        .S(mantissa_out1_carry_i_72_2));
  CARRY4 \sum_result0_inferred__0/i__carry__0 
       (.CI(\sum_result0_inferred__0/i__carry_n_0 ),
        .CO({\sum_result0_inferred__0/i__carry__0_n_0 ,\sum_result0_inferred__0/i__carry__0_n_1 ,\sum_result0_inferred__0/i__carry__0_n_2 ,\sum_result0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(mantissa_out1_carry_i_67_4),
        .O(data2[7:4]),
        .S(mantissa_out1_carry_i_67_5));
  CARRY4 \sum_result0_inferred__0/i__carry__1 
       (.CI(\sum_result0_inferred__0/i__carry__0_n_0 ),
        .CO({\sum_result0_inferred__0/i__carry__1_n_0 ,\sum_result0_inferred__0/i__carry__1_n_1 ,\sum_result0_inferred__0/i__carry__1_n_2 ,\sum_result0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({mantissa_out1_carry_i_63_2,mantissa_out1_carry_i_63_3,mantissa_out1_carry_i_63_4,mantissa_out1_carry_i_63_5}),
        .O(data2[11:8]),
        .S(mantissa_out1_carry_i_63_6));
  CARRY4 \sum_result0_inferred__0/i__carry__2 
       (.CI(\sum_result0_inferred__0/i__carry__1_n_0 ),
        .CO({\sum_result0_inferred__0/i__carry__2_n_0 ,\sum_result0_inferred__0/i__carry__2_n_1 ,\sum_result0_inferred__0/i__carry__2_n_2 ,\sum_result0_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI(mantissa_out1_carry_i_60_1),
        .O(data2[15:12]),
        .S(mantissa_out1_carry_i_60_2));
  CARRY4 \sum_result0_inferred__0/i__carry__3 
       (.CI(\sum_result0_inferred__0/i__carry__2_n_0 ),
        .CO({\sum_result0_inferred__0/i__carry__3_n_0 ,\sum_result0_inferred__0/i__carry__3_n_1 ,\sum_result0_inferred__0/i__carry__3_n_2 ,\sum_result0_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({mantissa_out1_carry_i_56_4,mantissa_out1_carry_i_56_5,mantissa_out1_carry_i_56_6,mantissa_out1_carry_i_56_7}),
        .O(data2[19:16]),
        .S(mantissa_out1_carry_i_56_8));
  CARRY4 \sum_result0_inferred__0/i__carry__4 
       (.CI(\sum_result0_inferred__0/i__carry__3_n_0 ),
        .CO({i__carry__4_i_8,\sum_result0_inferred__0/i__carry__4_n_1 ,\sum_result0_inferred__0/i__carry__4_n_2 ,\sum_result0_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({rounded_mantissa0_carry_i_27__3_1,rounded_mantissa0_carry_i_27__3_2,rounded_mantissa0_carry_i_27__3_3,rounded_mantissa0_carry_i_27__3_4}),
        .O(data2[23:20]),
        .S(rounded_mantissa0_carry_i_27__3_5));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sum_result1_carry
       (.CI(1'b0),
        .CO({sum_result1_carry_n_0,sum_result1_carry_n_1,sum_result1_carry_n_2,sum_result1_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_sum_result1_carry_O_UNCONNECTED[3:0]),
        .S(S));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sum_result1_carry__0
       (.CI(sum_result1_carry_n_0),
        .CO({sum_result1_carry__0_n_0,sum_result1_carry__0_n_1,sum_result1_carry__0_n_2,sum_result1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(sum_result1_carry__1_0),
        .O(NLW_sum_result1_carry__0_O_UNCONNECTED[3:0]),
        .S(sum_result1_carry__1_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sum_result1_carry__1
       (.CI(sum_result1_carry__0_n_0),
        .CO({CO,sum_result1_carry__1_n_1,sum_result1_carry__1_n_2,sum_result1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(underflow_OBUF_inst_i_6),
        .O(NLW_sum_result1_carry__1_O_UNCONNECTED[3:0]),
        .S(underflow_OBUF_inst_i_6_0));
  LUT5 #(
    .INIT(32'h0020FFFF)) 
    sum_result1_carry_i_20
       (.I0(\b[25] ),
        .I1(\b[22] ),
        .I2(\a[25] ),
        .I3(\a[22] ),
        .I4(sum_result1_carry__0_i_2),
        .O(sum_result1_carry__1_i_10));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \sum_result1_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({\sum_result1_inferred__2/i__carry_n_0 ,\sum_result1_inferred__2/i__carry_n_1 ,\sum_result1_inferred__2/i__carry_n_2 ,\sum_result1_inferred__2/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI(\sum_result1_inferred__2/i__carry__0_0 ),
        .O(\NLW_sum_result1_inferred__2/i__carry_O_UNCONNECTED [3:0]),
        .S(\sum_result1_inferred__2/i__carry__0_1 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \sum_result1_inferred__2/i__carry__0 
       (.CI(\sum_result1_inferred__2/i__carry_n_0 ),
        .CO({\sum_result1_inferred__2/i__carry__0_n_0 ,\sum_result1_inferred__2/i__carry__0_n_1 ,\sum_result1_inferred__2/i__carry__0_n_2 ,\sum_result1_inferred__2/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(\sum_result1_inferred__2/i__carry__1_0 ),
        .O(\NLW_sum_result1_inferred__2/i__carry__0_O_UNCONNECTED [3:0]),
        .S(\sum_result1_inferred__2/i__carry__1_1 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \sum_result1_inferred__2/i__carry__1 
       (.CI(\sum_result1_inferred__2/i__carry__0_n_0 ),
        .CO({i__carry__1_i_8__0,\sum_result1_inferred__2/i__carry__1_n_1 ,\sum_result1_inferred__2/i__carry__1_n_2 ,\sum_result1_inferred__2/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(underflow_OBUF_inst_i_6_1),
        .O(\NLW_sum_result1_inferred__2/i__carry__1_O_UNCONNECTED [3:0]),
        .S(underflow_OBUF_inst_i_6_2));
  LUT4 #(
    .INIT(16'h4777)) 
    underflow_OBUF_inst_i_31
       (.I0(data1[17]),
        .I1(i__carry__1_i_8__0),
        .I2(CO),
        .I3(data2[17]),
        .O(\sum_result0_inferred__0/i__carry__3_1 ));
  LUT4 #(
    .INIT(16'h4777)) 
    underflow_OBUF_inst_i_32
       (.I0(data1[19]),
        .I1(i__carry__1_i_8__0),
        .I2(CO),
        .I3(data2[19]),
        .O(\sum_result0_inferred__0/i__carry__3_3 ));
  LUT4 #(
    .INIT(16'h4777)) 
    underflow_OBUF_inst_i_33
       (.I0(data1[4]),
        .I1(i__carry__1_i_8__0),
        .I2(CO),
        .I3(data2[4]),
        .O(\sum_result0_inferred__0/i__carry__0_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    underflow_OBUF_inst_i_34
       (.I0(data1[7]),
        .I1(i__carry__1_i_8__0),
        .I2(CO),
        .I3(data2[7]),
        .O(\sum_result0_inferred__0/i__carry__0_3 ));
  LUT4 #(
    .INIT(16'h4777)) 
    underflow_OBUF_inst_i_35
       (.I0(data1[6]),
        .I1(i__carry__1_i_8__0),
        .I2(CO),
        .I3(data2[6]),
        .O(\sum_result0_inferred__0/i__carry__0_2 ));
  LUT4 #(
    .INIT(16'h4777)) 
    underflow_OBUF_inst_i_36
       (.I0(data1[0]),
        .I1(i__carry__1_i_8__0),
        .I2(CO),
        .I3(data2[0]),
        .O(\sum_result0_inferred__0/i__carry_2 ));
  LUT4 #(
    .INIT(16'h4777)) 
    underflow_OBUF_inst_i_37
       (.I0(data1[3]),
        .I1(i__carry__1_i_8__0),
        .I2(CO),
        .I3(data2[3]),
        .O(\sum_result0_inferred__0/i__carry_1 ));
endmodule

module normalizer
   (CO,
    i__carry_i_8,
    i__carry__0_i_6__1,
    i__carry__0_i_6__1_0,
    mantissa_out1_carry_0,
    mantissa_out1_carry_1,
    rounded_mantissa0_carry_i_41__0,
    rounded_mantissa0_carry_i_34__3,
    rounded_mantissa0_carry_i_34__3_0,
    rounded_mantissa0_carry_i_34__3_1,
    rounded_mantissa0_carry_i_34__3_2,
    DI,
    S,
    rounded_mantissa0_carry_i_84,
    rounded_mantissa0_carry_i_84_0,
    \result_OBUF[30]_inst_i_49 ,
    rounded_mantissa0_carry_i_15__0,
    \result_OBUF[30]_inst_i_52 ,
    rounded_mantissa0_carry_i_3__3,
    rounded_mantissa0_carry_i_13__1_0,
    rounded_mantissa0_carry_i_13__1_1,
    rounded_mantissa0_carry_i_19__3,
    rounded_mantissa0_carry_i_19__3_0,
    rounded_mantissa0_carry_i_10__3_0,
    rounded_mantissa0_carry_i_5__4_0);
  output [0:0]CO;
  output [3:0]i__carry_i_8;
  output [0:0]i__carry__0_i_6__1;
  output [3:0]i__carry__0_i_6__1_0;
  output mantissa_out1_carry_0;
  output mantissa_out1_carry_1;
  output rounded_mantissa0_carry_i_41__0;
  output rounded_mantissa0_carry_i_34__3;
  output rounded_mantissa0_carry_i_34__3_0;
  input [2:0]rounded_mantissa0_carry_i_34__3_1;
  input [3:0]rounded_mantissa0_carry_i_34__3_2;
  input [3:0]DI;
  input [3:0]S;
  input [1:0]rounded_mantissa0_carry_i_84;
  input [3:0]rounded_mantissa0_carry_i_84_0;
  input \result_OBUF[30]_inst_i_49 ;
  input rounded_mantissa0_carry_i_15__0;
  input \result_OBUF[30]_inst_i_52 ;
  input rounded_mantissa0_carry_i_3__3;
  input rounded_mantissa0_carry_i_13__1_0;
  input rounded_mantissa0_carry_i_13__1_1;
  input rounded_mantissa0_carry_i_19__3;
  input rounded_mantissa0_carry_i_19__3_0;
  input rounded_mantissa0_carry_i_10__3_0;
  input rounded_mantissa0_carry_i_5__4_0;

  wire [0:0]CO;
  wire [3:0]DI;
  wire [3:0]S;
  wire [0:0]i__carry__0_i_6__1;
  wire [3:0]i__carry__0_i_6__1_0;
  wire [3:0]i__carry_i_8;
  wire mantissa_out1_carry_0;
  wire mantissa_out1_carry_1;
  wire mantissa_out1_carry_n_1;
  wire mantissa_out1_carry_n_2;
  wire mantissa_out1_carry_n_3;
  wire \mantissa_out1_inferred__1/i__carry__0_n_1 ;
  wire \mantissa_out1_inferred__1/i__carry__0_n_2 ;
  wire \mantissa_out1_inferred__1/i__carry__0_n_3 ;
  wire \mantissa_out1_inferred__1/i__carry_n_0 ;
  wire \mantissa_out1_inferred__1/i__carry_n_1 ;
  wire \mantissa_out1_inferred__1/i__carry_n_2 ;
  wire \mantissa_out1_inferred__1/i__carry_n_3 ;
  wire \result_OBUF[30]_inst_i_49 ;
  wire \result_OBUF[30]_inst_i_52 ;
  wire rounded_mantissa0_carry_i_10__3_0;
  wire rounded_mantissa0_carry_i_11__2_n_0;
  wire rounded_mantissa0_carry_i_12__2_n_0;
  wire rounded_mantissa0_carry_i_13__1_0;
  wire rounded_mantissa0_carry_i_13__1_1;
  wire rounded_mantissa0_carry_i_15__0;
  wire rounded_mantissa0_carry_i_19__3;
  wire rounded_mantissa0_carry_i_19__3_0;
  wire rounded_mantissa0_carry_i_28__2_n_0;
  wire rounded_mantissa0_carry_i_34__3;
  wire rounded_mantissa0_carry_i_34__3_0;
  wire [2:0]rounded_mantissa0_carry_i_34__3_1;
  wire [3:0]rounded_mantissa0_carry_i_34__3_2;
  wire rounded_mantissa0_carry_i_3__3;
  wire rounded_mantissa0_carry_i_41__0;
  wire rounded_mantissa0_carry_i_5__4_0;
  wire [1:0]rounded_mantissa0_carry_i_84;
  wire [3:0]rounded_mantissa0_carry_i_84_0;
  wire [3:0]NLW_mantissa_out1_carry_O_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 mantissa_out1_carry
       (.CI(1'b0),
        .CO({CO,mantissa_out1_carry_n_1,mantissa_out1_carry_n_2,mantissa_out1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,rounded_mantissa0_carry_i_34__3_1}),
        .O(NLW_mantissa_out1_carry_O_UNCONNECTED[3:0]),
        .S(rounded_mantissa0_carry_i_34__3_2));
  CARRY4 \mantissa_out1_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\mantissa_out1_inferred__1/i__carry_n_0 ,\mantissa_out1_inferred__1/i__carry_n_1 ,\mantissa_out1_inferred__1/i__carry_n_2 ,\mantissa_out1_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI(DI),
        .O(i__carry_i_8),
        .S(S));
  CARRY4 \mantissa_out1_inferred__1/i__carry__0 
       (.CI(\mantissa_out1_inferred__1/i__carry_n_0 ),
        .CO({i__carry__0_i_6__1,\mantissa_out1_inferred__1/i__carry__0_n_1 ,\mantissa_out1_inferred__1/i__carry__0_n_2 ,\mantissa_out1_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,rounded_mantissa0_carry_i_84}),
        .O(i__carry__0_i_6__1_0),
        .S(rounded_mantissa0_carry_i_84_0));
  LUT6 #(
    .INIT(64'h101F000000000000)) 
    rounded_mantissa0_carry_i_10__3
       (.I0(i__carry_i_8[1]),
        .I1(rounded_mantissa0_carry_i_12__2_n_0),
        .I2(i__carry_i_8[0]),
        .I3(\result_OBUF[30]_inst_i_49 ),
        .I4(rounded_mantissa0_carry_i_15__0),
        .I5(CO),
        .O(mantissa_out1_carry_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    rounded_mantissa0_carry_i_11__2
       (.I0(i__carry_i_8[2]),
        .I1(i__carry__0_i_6__1_0[0]),
        .I2(rounded_mantissa0_carry_i_5__4_0),
        .I3(i__carry_i_8[3]),
        .O(rounded_mantissa0_carry_i_11__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    rounded_mantissa0_carry_i_12__2
       (.I0(i__carry_i_8[2]),
        .I1(i__carry__0_i_6__1_0[0]),
        .I2(rounded_mantissa0_carry_i_10__3_0),
        .I3(i__carry_i_8[3]),
        .O(rounded_mantissa0_carry_i_12__2_n_0));
  LUT4 #(
    .INIT(16'h0035)) 
    rounded_mantissa0_carry_i_13__1
       (.I0(rounded_mantissa0_carry_i_28__2_n_0),
        .I1(\result_OBUF[30]_inst_i_52 ),
        .I2(i__carry_i_8[0]),
        .I3(rounded_mantissa0_carry_i_3__3),
        .O(rounded_mantissa0_carry_i_34__3));
  LUT6 #(
    .INIT(64'hFFEFFFFFFFEF0000)) 
    rounded_mantissa0_carry_i_28__2
       (.I0(i__carry_i_8[2]),
        .I1(i__carry__0_i_6__1_0[0]),
        .I2(rounded_mantissa0_carry_i_13__1_0),
        .I3(i__carry_i_8[3]),
        .I4(i__carry_i_8[1]),
        .I5(rounded_mantissa0_carry_i_13__1_1),
        .O(rounded_mantissa0_carry_i_28__2_n_0));
  LUT5 #(
    .INIT(32'h47000000)) 
    rounded_mantissa0_carry_i_32__3
       (.I0(rounded_mantissa0_carry_i_28__2_n_0),
        .I1(i__carry_i_8[0]),
        .I2(rounded_mantissa0_carry_i_41__0),
        .I3(rounded_mantissa0_carry_i_15__0),
        .I4(CO),
        .O(mantissa_out1_carry_1));
  LUT6 #(
    .INIT(64'hFFEFFFFFFFEF0000)) 
    rounded_mantissa0_carry_i_34__0
       (.I0(i__carry_i_8[2]),
        .I1(i__carry__0_i_6__1_0[0]),
        .I2(rounded_mantissa0_carry_i_19__3),
        .I3(i__carry_i_8[3]),
        .I4(i__carry_i_8[1]),
        .I5(rounded_mantissa0_carry_i_19__3_0),
        .O(rounded_mantissa0_carry_i_41__0));
  LUT5 #(
    .INIT(32'h00000053)) 
    rounded_mantissa0_carry_i_5__4
       (.I0(rounded_mantissa0_carry_i_11__2_n_0),
        .I1(rounded_mantissa0_carry_i_12__2_n_0),
        .I2(i__carry_i_8[0]),
        .I3(i__carry_i_8[1]),
        .I4(rounded_mantissa0_carry_i_3__3),
        .O(rounded_mantissa0_carry_i_34__3_0));
endmodule

module rounder
   (data0,
    \b[31] ,
    \a[31] ,
    \a[24] ,
    \a[26] ,
    \a[24]_0 ,
    \result_OBUF[31]_inst_i_10 ,
    \b[25] ,
    \result_OBUF[30]_inst_i_11 ,
    \result_OBUF[1]_inst_i_2 ,
    \result_OBUF[1]_inst_i_2_0 ,
    \result_OBUF[5]_inst_i_2 ,
    \result_OBUF[9]_inst_i_2 ,
    \result_OBUF[13]_inst_i_2 ,
    \result_OBUF[17]_inst_i_2 ,
    \result_OBUF[21]_inst_i_5 ,
    b_IBUF,
    op_IBUF,
    a_IBUF,
    sum_result0_carry_i_22,
    sum_result1_carry_i_20,
    sum_result1_carry_i_20_0,
    sum_result0_carry_i_33);
  output [21:0]data0;
  output \b[31] ;
  output \a[31] ;
  output \a[24] ;
  output \a[26] ;
  output \a[24]_0 ;
  output \result_OBUF[31]_inst_i_10 ;
  output \b[25] ;
  output \result_OBUF[30]_inst_i_11 ;
  input \result_OBUF[1]_inst_i_2 ;
  input [3:0]\result_OBUF[1]_inst_i_2_0 ;
  input [3:0]\result_OBUF[5]_inst_i_2 ;
  input [3:0]\result_OBUF[9]_inst_i_2 ;
  input [3:0]\result_OBUF[13]_inst_i_2 ;
  input [3:0]\result_OBUF[17]_inst_i_2 ;
  input [1:0]\result_OBUF[21]_inst_i_5 ;
  input [8:0]b_IBUF;
  input [0:0]op_IBUF;
  input [8:0]a_IBUF;
  input sum_result0_carry_i_22;
  input sum_result1_carry_i_20;
  input sum_result1_carry_i_20_0;
  input sum_result0_carry_i_33;

  wire \a[24] ;
  wire \a[24]_0 ;
  wire \a[26] ;
  wire \a[31] ;
  wire [8:0]a_IBUF;
  wire \b[25] ;
  wire \b[31] ;
  wire [8:0]b_IBUF;
  wire [21:0]data0;
  wire i__carry__4_i_17_n_0;
  wire [0:0]op_IBUF;
  wire [3:0]\result_OBUF[13]_inst_i_2 ;
  wire [3:0]\result_OBUF[17]_inst_i_2 ;
  wire \result_OBUF[1]_inst_i_2 ;
  wire [3:0]\result_OBUF[1]_inst_i_2_0 ;
  wire [1:0]\result_OBUF[21]_inst_i_5 ;
  wire \result_OBUF[30]_inst_i_11 ;
  wire \result_OBUF[30]_inst_i_18_n_0 ;
  wire \result_OBUF[30]_inst_i_19_n_0 ;
  wire \result_OBUF[30]_inst_i_20_n_0 ;
  wire \result_OBUF[31]_inst_i_10 ;
  wire [3:0]\result_OBUF[5]_inst_i_2 ;
  wire [3:0]\result_OBUF[9]_inst_i_2 ;
  wire rounded_mantissa0_carry__0_n_0;
  wire rounded_mantissa0_carry__0_n_1;
  wire rounded_mantissa0_carry__0_n_2;
  wire rounded_mantissa0_carry__0_n_3;
  wire rounded_mantissa0_carry__1_n_0;
  wire rounded_mantissa0_carry__1_n_1;
  wire rounded_mantissa0_carry__1_n_2;
  wire rounded_mantissa0_carry__1_n_3;
  wire rounded_mantissa0_carry__2_n_0;
  wire rounded_mantissa0_carry__2_n_1;
  wire rounded_mantissa0_carry__2_n_2;
  wire rounded_mantissa0_carry__2_n_3;
  wire rounded_mantissa0_carry__3_n_0;
  wire rounded_mantissa0_carry__3_n_1;
  wire rounded_mantissa0_carry__3_n_2;
  wire rounded_mantissa0_carry__3_n_3;
  wire rounded_mantissa0_carry__4_n_3;
  wire rounded_mantissa0_carry_n_0;
  wire rounded_mantissa0_carry_n_1;
  wire rounded_mantissa0_carry_n_2;
  wire rounded_mantissa0_carry_n_3;
  wire sum_result0_carry_i_22;
  wire sum_result0_carry_i_33;
  wire sum_result1_carry__1_i_12_n_0;
  wire sum_result1_carry_i_20;
  wire sum_result1_carry_i_20_0;
  wire [3:1]NLW_rounded_mantissa0_carry__4_CO_UNCONNECTED;
  wire [3:2]NLW_rounded_mantissa0_carry__4_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    i__carry__4_i_17
       (.I0(a_IBUF[5]),
        .I1(a_IBUF[4]),
        .I2(a_IBUF[7]),
        .I3(a_IBUF[6]),
        .O(i__carry__4_i_17_n_0));
  LUT6 #(
    .INIT(64'hAFFFFFFFFFFFFFFC)) 
    i__carry__4_i_9
       (.I0(i__carry__4_i_17_n_0),
        .I1(sum_result0_carry_i_22),
        .I2(a_IBUF[1]),
        .I3(a_IBUF[0]),
        .I4(a_IBUF[3]),
        .I5(a_IBUF[2]),
        .O(\a[24]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h69)) 
    mantissa_out1_carry_i_45
       (.I0(a_IBUF[8]),
        .I1(op_IBUF),
        .I2(b_IBUF[8]),
        .O(\a[31] ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h96)) 
    mantissa_out1_carry_i_91
       (.I0(b_IBUF[8]),
        .I1(op_IBUF),
        .I2(a_IBUF[8]),
        .O(\b[31] ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \result_OBUF[30]_inst_i_18 
       (.I0(a_IBUF[4]),
        .I1(a_IBUF[5]),
        .O(\result_OBUF[30]_inst_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \result_OBUF[30]_inst_i_19 
       (.I0(b_IBUF[5]),
        .I1(b_IBUF[4]),
        .I2(b_IBUF[7]),
        .I3(b_IBUF[6]),
        .O(\result_OBUF[30]_inst_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \result_OBUF[30]_inst_i_20 
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[0]),
        .I2(b_IBUF[3]),
        .I3(b_IBUF[2]),
        .O(\result_OBUF[30]_inst_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h004000400040FFFF)) 
    \result_OBUF[30]_inst_i_6 
       (.I0(\a[26] ),
        .I1(a_IBUF[1]),
        .I2(a_IBUF[0]),
        .I3(\result_OBUF[30]_inst_i_18_n_0 ),
        .I4(\result_OBUF[30]_inst_i_19_n_0 ),
        .I5(\result_OBUF[30]_inst_i_20_n_0 ),
        .O(\a[24] ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \result_OBUF[31]_inst_i_8 
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[3]),
        .I2(b_IBUF[0]),
        .I3(b_IBUF[1]),
        .I4(\result_OBUF[30]_inst_i_19_n_0 ),
        .O(\b[25] ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \result_OBUF[31]_inst_i_9 
       (.I0(a_IBUF[3]),
        .I1(a_IBUF[2]),
        .I2(a_IBUF[7]),
        .I3(a_IBUF[6]),
        .O(\a[26] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rounded_mantissa0_carry
       (.CI(1'b0),
        .CO({rounded_mantissa0_carry_n_0,rounded_mantissa0_carry_n_1,rounded_mantissa0_carry_n_2,rounded_mantissa0_carry_n_3}),
        .CYINIT(\result_OBUF[1]_inst_i_2 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[3:0]),
        .S(\result_OBUF[1]_inst_i_2_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rounded_mantissa0_carry__0
       (.CI(rounded_mantissa0_carry_n_0),
        .CO({rounded_mantissa0_carry__0_n_0,rounded_mantissa0_carry__0_n_1,rounded_mantissa0_carry__0_n_2,rounded_mantissa0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[7:4]),
        .S(\result_OBUF[5]_inst_i_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rounded_mantissa0_carry__1
       (.CI(rounded_mantissa0_carry__0_n_0),
        .CO({rounded_mantissa0_carry__1_n_0,rounded_mantissa0_carry__1_n_1,rounded_mantissa0_carry__1_n_2,rounded_mantissa0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[11:8]),
        .S(\result_OBUF[9]_inst_i_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rounded_mantissa0_carry__2
       (.CI(rounded_mantissa0_carry__1_n_0),
        .CO({rounded_mantissa0_carry__2_n_0,rounded_mantissa0_carry__2_n_1,rounded_mantissa0_carry__2_n_2,rounded_mantissa0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[15:12]),
        .S(\result_OBUF[13]_inst_i_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rounded_mantissa0_carry__3
       (.CI(rounded_mantissa0_carry__2_n_0),
        .CO({rounded_mantissa0_carry__3_n_0,rounded_mantissa0_carry__3_n_1,rounded_mantissa0_carry__3_n_2,rounded_mantissa0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[19:16]),
        .S(\result_OBUF[17]_inst_i_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rounded_mantissa0_carry__4
       (.CI(rounded_mantissa0_carry__3_n_0),
        .CO({NLW_rounded_mantissa0_carry__4_CO_UNCONNECTED[3:1],rounded_mantissa0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_rounded_mantissa0_carry__4_O_UNCONNECTED[3:2],data0[21:20]}),
        .S({1'b0,1'b0,\result_OBUF[21]_inst_i_5 }));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hD0DD)) 
    sum_result1_carry__1_i_10
       (.I0(sum_result1_carry_i_20),
        .I1(\b[25] ),
        .I2(sum_result1_carry__1_i_12_n_0),
        .I3(sum_result1_carry_i_20_0),
        .O(\result_OBUF[31]_inst_i_10 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    sum_result1_carry__1_i_11
       (.I0(\b[25] ),
        .I1(sum_result0_carry_i_33),
        .O(\result_OBUF[30]_inst_i_11 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    sum_result1_carry__1_i_12
       (.I0(a_IBUF[2]),
        .I1(a_IBUF[3]),
        .I2(a_IBUF[0]),
        .I3(a_IBUF[1]),
        .I4(i__carry__4_i_17_n_0),
        .O(sum_result1_carry__1_i_12_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
