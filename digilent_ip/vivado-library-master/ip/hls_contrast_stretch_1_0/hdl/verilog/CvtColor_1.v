// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module CvtColor_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        p_src_rows_V_dout,
        p_src_rows_V_empty_n,
        p_src_rows_V_read,
        p_src_cols_V_dout,
        p_src_cols_V_empty_n,
        p_src_cols_V_read,
        p_src_data_stream_0_V_dout,
        p_src_data_stream_0_V_empty_n,
        p_src_data_stream_0_V_read,
        p_src_data_stream_1_V_dout,
        p_src_data_stream_1_V_empty_n,
        p_src_data_stream_1_V_read,
        p_src_data_stream_2_V_dout,
        p_src_data_stream_2_V_empty_n,
        p_src_data_stream_2_V_read,
        p_dst_data_stream_0_V_din,
        p_dst_data_stream_0_V_full_n,
        p_dst_data_stream_0_V_write,
        p_dst_data_stream_1_V_din,
        p_dst_data_stream_1_V_full_n,
        p_dst_data_stream_1_V_write,
        p_dst_data_stream_2_V_din,
        p_dst_data_stream_2_V_full_n,
        p_dst_data_stream_2_V_write
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state12 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [15:0] p_src_rows_V_dout;
input   p_src_rows_V_empty_n;
output   p_src_rows_V_read;
input  [15:0] p_src_cols_V_dout;
input   p_src_cols_V_empty_n;
output   p_src_cols_V_read;
input  [7:0] p_src_data_stream_0_V_dout;
input   p_src_data_stream_0_V_empty_n;
output   p_src_data_stream_0_V_read;
input  [7:0] p_src_data_stream_1_V_dout;
input   p_src_data_stream_1_V_empty_n;
output   p_src_data_stream_1_V_read;
input  [7:0] p_src_data_stream_2_V_dout;
input   p_src_data_stream_2_V_empty_n;
output   p_src_data_stream_2_V_read;
output  [7:0] p_dst_data_stream_0_V_din;
input   p_dst_data_stream_0_V_full_n;
output   p_dst_data_stream_0_V_write;
output  [7:0] p_dst_data_stream_1_V_din;
input   p_dst_data_stream_1_V_full_n;
output   p_dst_data_stream_1_V_write;
output  [7:0] p_dst_data_stream_2_V_din;
input   p_dst_data_stream_2_V_full_n;
output   p_dst_data_stream_2_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg p_src_rows_V_read;
reg p_src_cols_V_read;
reg p_src_data_stream_0_V_read;
reg p_src_data_stream_1_V_read;
reg p_src_data_stream_2_V_read;
reg p_dst_data_stream_0_V_write;
reg p_dst_data_stream_1_V_write;
reg p_dst_data_stream_2_V_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    p_src_rows_V_blk_n;
reg    p_src_cols_V_blk_n;
reg    p_src_data_stream_0_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] tmp_36_i_reg_692;
reg    p_src_data_stream_1_V_blk_n;
reg    p_src_data_stream_2_V_blk_n;
reg    p_dst_data_stream_0_V_blk_n;
reg    ap_enable_reg_pp0_iter8;
reg   [0:0] ap_reg_pp0_iter7_tmp_36_i_reg_692;
reg    p_dst_data_stream_1_V_blk_n;
reg    p_dst_data_stream_2_V_blk_n;
reg   [10:0] j_i_reg_176;
reg   [15:0] p_src_cols_V_read_reg_673;
reg    ap_block_state1;
reg   [15:0] p_src_rows_V_read_reg_678;
wire   [0:0] tmp_i_fu_191_p2;
wire    ap_CS_fsm_state2;
wire   [10:0] i_fu_196_p2;
reg   [10:0] i_reg_687;
wire   [0:0] tmp_36_i_fu_206_p2;
wire    ap_block_state3_pp0_stage0_iter0;
reg    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_state5_pp0_stage0_iter2;
wire    ap_block_state6_pp0_stage0_iter3;
wire    ap_block_state7_pp0_stage0_iter4;
wire    ap_block_state8_pp0_stage0_iter5;
wire    ap_block_state9_pp0_stage0_iter6;
wire    ap_block_state10_pp0_stage0_iter7;
reg    ap_block_state11_pp0_stage0_iter8;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] ap_reg_pp0_iter1_tmp_36_i_reg_692;
reg   [0:0] ap_reg_pp0_iter2_tmp_36_i_reg_692;
reg   [0:0] ap_reg_pp0_iter3_tmp_36_i_reg_692;
reg   [0:0] ap_reg_pp0_iter4_tmp_36_i_reg_692;
reg   [0:0] ap_reg_pp0_iter5_tmp_36_i_reg_692;
reg   [0:0] ap_reg_pp0_iter6_tmp_36_i_reg_692;
wire   [10:0] j_fu_211_p2;
reg    ap_enable_reg_pp0_iter0;
reg   [7:0] tmp_23_reg_701;
reg   [7:0] ap_reg_pp0_iter2_tmp_23_reg_701;
reg   [7:0] ap_reg_pp0_iter3_tmp_23_reg_701;
reg   [7:0] ap_reg_pp0_iter4_tmp_23_reg_701;
reg   [7:0] tmp_24_reg_707;
reg   [7:0] ap_reg_pp0_iter2_tmp_24_reg_707;
reg   [7:0] ap_reg_pp0_iter3_tmp_24_reg_707;
reg   [7:0] tmp_25_reg_712;
reg   [7:0] ap_reg_pp0_iter2_tmp_25_reg_712;
reg   [7:0] ap_reg_pp0_iter3_tmp_25_reg_712;
reg   [7:0] ap_reg_pp0_iter4_tmp_25_reg_712;
wire   [28:0] r_V_6_i_fu_626_p2;
reg   [28:0] r_V_6_i_reg_718;
wire   [28:0] grp_fu_632_p3;
reg   [28:0] p_Val2_2_reg_723;
reg    ap_enable_reg_pp0_iter3;
wire   [29:0] grp_fu_639_p3;
reg   [29:0] r_V_1_reg_728;
reg    ap_enable_reg_pp0_iter4;
reg   [7:0] p_Val2_4_reg_733;
reg   [0:0] tmp_reg_738;
wire   [7:0] p_Val2_20_fu_280_p3;
reg   [7:0] p_Val2_20_reg_743;
reg   [7:0] ap_reg_pp0_iter6_p_Val2_20_reg_743;
reg   [7:0] ap_reg_pp0_iter7_p_Val2_20_reg_743;
wire   [8:0] i_op_assign_5_fu_295_p2;
reg  signed [8:0] i_op_assign_5_reg_748;
wire   [8:0] i_op_assign_6_fu_304_p2;
reg  signed [8:0] i_op_assign_6_reg_753;
wire  signed [31:0] grp_fu_649_p3;
reg  signed [31:0] r_V_2_reg_758;
reg    ap_enable_reg_pp0_iter6;
reg   [0:0] signbit_reg_763;
reg   [0:0] ap_reg_pp0_iter7_signbit_reg_763;
reg   [7:0] p_Val2_7_reg_770;
reg   [0:0] tmp_13_reg_775;
reg   [1:0] tmp_s_reg_780;
wire  signed [31:0] grp_fu_661_p3;
reg  signed [31:0] r_V_3_reg_786;
reg   [0:0] signbit_1_reg_791;
reg   [0:0] ap_reg_pp0_iter7_signbit_1_reg_791;
reg   [7:0] p_Val2_16_reg_798;
reg   [0:0] tmp_17_reg_803;
reg   [1:0] tmp_1_reg_808;
wire   [7:0] p_Val2_8_fu_390_p2;
reg   [7:0] p_Val2_8_reg_814;
wire   [0:0] p_38_i_i_i_i_fu_433_p2;
reg   [0:0] p_38_i_i_i_i_reg_820;
wire   [0:0] p_39_demorgan_i_i_i_i_fu_439_p2;
reg   [0:0] p_39_demorgan_i_i_i_i_reg_826;
wire   [7:0] p_Val2_18_fu_454_p2;
reg   [7:0] p_Val2_18_reg_832;
wire   [0:0] p_38_i_i_i15_i_fu_497_p2;
reg   [0:0] p_38_i_i_i15_i_reg_838;
wire   [0:0] p_39_demorgan_i_i_i_fu_503_p2;
reg   [0:0] p_39_demorgan_i_i_i_reg_844;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter7;
reg   [10:0] i_i_reg_165;
wire    ap_CS_fsm_state12;
reg    ap_block_pp0_stage0_01001;
wire   [15:0] i_cast_i_cast_fu_187_p1;
wire   [15:0] j_cast_i_cast_fu_202_p1;
wire   [7:0] tmp_19_i_i_i_fu_245_p1;
wire   [7:0] p_Val2_5_fu_255_p2;
wire   [0:0] tmp_10_fu_248_p3;
wire   [0:0] tmp_11_fu_260_p3;
wire   [0:0] p_Result_2_i_i_not_fu_268_p2;
wire   [0:0] not_carry_i_fu_274_p2;
wire   [8:0] tmp_30_cast_i_fu_288_p1;
wire   [8:0] tmp_31_cast_i_fu_291_p1;
wire   [8:0] tmp_33_cast_i_fu_301_p1;
wire   [7:0] tmp_16_i_i_i_fu_380_p1;
wire   [0:0] tmp_15_fu_395_p3;
wire   [0:0] tmp_14_fu_383_p3;
wire   [0:0] tmp_17_i_i_i_fu_403_p2;
wire   [0:0] carry_fu_409_p2;
wire   [0:0] Range1_all_ones_fu_415_p2;
wire   [0:0] Range1_all_zeros_fu_420_p2;
wire   [0:0] deleted_zeros_fu_425_p3;
wire   [7:0] tmp_16_i_i6_i_fu_444_p1;
wire   [0:0] tmp_19_fu_459_p3;
wire   [0:0] tmp_18_fu_447_p3;
wire   [0:0] tmp_17_i_i10_i_fu_467_p2;
wire   [0:0] carry_1_fu_473_p2;
wire   [0:0] Range1_all_ones_1_fu_479_p2;
wire   [0:0] Range1_all_zeros_1_fu_484_p2;
wire   [0:0] deleted_zeros_1_fu_489_p3;
wire   [0:0] tmp_18_i_i_i_fu_508_p2;
wire   [0:0] signbit_not_i_i_fu_518_p2;
wire   [0:0] neg_src_not_i_i_i_fu_523_p2;
wire   [0:0] p_39_demorgan_i_not_i_fu_533_p2;
wire   [0:0] brmerge_i_i_not_i_i_s_fu_528_p2;
wire   [0:0] neg_src_fu_513_p2;
wire   [0:0] brmerge_i_i_i_fu_538_p2;
wire   [7:0] p_mux_i_i2_i_fu_544_p3;
wire   [7:0] p_i_i_i_fu_551_p3;
wire   [0:0] tmp_18_i_i16_i_fu_567_p2;
wire   [0:0] signbit_not_i19_i_fu_577_p2;
wire   [0:0] neg_src_not_i_i20_i_fu_582_p2;
wire   [0:0] p_39_demorgan_i_not_i_1_fu_592_p2;
wire   [0:0] brmerge_i_i_not_i_i2_fu_587_p2;
wire   [0:0] neg_src_4_fu_572_p2;
wire   [0:0] brmerge_i_i23_i_fu_597_p2;
wire   [7:0] p_mux_i_i24_i_fu_603_p3;
wire   [7:0] p_i_i25_i_fu_610_p3;
wire   [7:0] r_V_6_i_fu_626_p0;
wire   [21:0] r_V_6_i_fu_626_p1;
wire   [7:0] grp_fu_632_p0;
wire   [19:0] grp_fu_632_p1;
wire   [7:0] grp_fu_639_p0;
wire   [22:0] grp_fu_639_p1;
wire   [28:0] grp_fu_639_p2;
wire   [22:0] grp_fu_649_p1;
wire   [30:0] grp_fu_649_p2;
wire   [22:0] grp_fu_661_p1;
wire   [30:0] grp_fu_661_p2;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [27:0] grp_fu_632_p00;
wire   [29:0] grp_fu_639_p00;
wire   [29:0] grp_fu_639_p20;
wire   [28:0] r_V_6_i_fu_626_p00;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
end

hls_contrast_strebkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 22 ),
    .dout_WIDTH( 29 ))
hls_contrast_strebkb_U30(
    .din0(r_V_6_i_fu_626_p0),
    .din1(r_V_6_i_fu_626_p1),
    .dout(r_V_6_i_fu_626_p2)
);

hls_contrast_strecud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 20 ),
    .din2_WIDTH( 29 ),
    .dout_WIDTH( 29 ))
hls_contrast_strecud_U31(
    .din0(grp_fu_632_p0),
    .din1(grp_fu_632_p1),
    .din2(r_V_6_i_reg_718),
    .dout(grp_fu_632_p3)
);

hls_contrast_stredEe #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 23 ),
    .din2_WIDTH( 29 ),
    .dout_WIDTH( 30 ))
hls_contrast_stredEe_U32(
    .din0(grp_fu_639_p0),
    .din1(grp_fu_639_p1),
    .din2(grp_fu_639_p2),
    .dout(grp_fu_639_p3)
);

hls_contrast_streeOg #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 23 ),
    .din2_WIDTH( 31 ),
    .dout_WIDTH( 32 ))
hls_contrast_streeOg_U33(
    .din0(i_op_assign_5_reg_748),
    .din1(grp_fu_649_p1),
    .din2(grp_fu_649_p2),
    .dout(grp_fu_649_p3)
);

hls_contrast_streeOg #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 23 ),
    .din2_WIDTH( 31 ),
    .dout_WIDTH( 32 ))
hls_contrast_streeOg_U34(
    .din0(i_op_assign_6_reg_753),
    .din1(grp_fu_661_p1),
    .din2(grp_fu_661_p2),
    .dout(grp_fu_661_p3)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state2) & (tmp_i_fu_191_p2 == 1'd0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state3))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((tmp_i_fu_191_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state3)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state3);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end else if (((tmp_i_fu_191_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter8 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        i_i_reg_165 <= i_reg_687;
    end else if ((~((ap_start == 1'b0) | (p_src_cols_V_empty_n == 1'b0) | (p_src_rows_V_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_i_reg_165 <= 11'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_36_i_fu_206_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        j_i_reg_176 <= j_fu_211_p2;
    end else if (((tmp_i_fu_191_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        j_i_reg_176 <= 11'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_reg_pp0_iter1_tmp_36_i_reg_692 <= tmp_36_i_reg_692;
        tmp_36_i_reg_692 <= tmp_36_i_fu_206_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_reg_pp0_iter2_tmp_23_reg_701 <= tmp_23_reg_701;
        ap_reg_pp0_iter2_tmp_24_reg_707 <= tmp_24_reg_707;
        ap_reg_pp0_iter2_tmp_25_reg_712 <= tmp_25_reg_712;
        ap_reg_pp0_iter2_tmp_36_i_reg_692 <= ap_reg_pp0_iter1_tmp_36_i_reg_692;
        ap_reg_pp0_iter3_tmp_23_reg_701 <= ap_reg_pp0_iter2_tmp_23_reg_701;
        ap_reg_pp0_iter3_tmp_24_reg_707 <= ap_reg_pp0_iter2_tmp_24_reg_707;
        ap_reg_pp0_iter3_tmp_25_reg_712 <= ap_reg_pp0_iter2_tmp_25_reg_712;
        ap_reg_pp0_iter3_tmp_36_i_reg_692 <= ap_reg_pp0_iter2_tmp_36_i_reg_692;
        ap_reg_pp0_iter4_tmp_23_reg_701 <= ap_reg_pp0_iter3_tmp_23_reg_701;
        ap_reg_pp0_iter4_tmp_25_reg_712 <= ap_reg_pp0_iter3_tmp_25_reg_712;
        ap_reg_pp0_iter4_tmp_36_i_reg_692 <= ap_reg_pp0_iter3_tmp_36_i_reg_692;
        ap_reg_pp0_iter5_tmp_36_i_reg_692 <= ap_reg_pp0_iter4_tmp_36_i_reg_692;
        ap_reg_pp0_iter6_p_Val2_20_reg_743 <= p_Val2_20_reg_743;
        ap_reg_pp0_iter6_tmp_36_i_reg_692 <= ap_reg_pp0_iter5_tmp_36_i_reg_692;
        ap_reg_pp0_iter7_p_Val2_20_reg_743 <= ap_reg_pp0_iter6_p_Val2_20_reg_743;
        ap_reg_pp0_iter7_signbit_1_reg_791 <= signbit_1_reg_791;
        ap_reg_pp0_iter7_signbit_reg_763 <= signbit_reg_763;
        ap_reg_pp0_iter7_tmp_36_i_reg_692 <= ap_reg_pp0_iter6_tmp_36_i_reg_692;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_reg_pp0_iter4_tmp_36_i_reg_692 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_op_assign_5_reg_748 <= i_op_assign_5_fu_295_p2;
        i_op_assign_6_reg_753 <= i_op_assign_6_fu_304_p2;
        p_Val2_20_reg_743 <= p_Val2_20_fu_280_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_687 <= i_fu_196_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_reg_pp0_iter6_tmp_36_i_reg_692 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_38_i_i_i15_i_reg_838 <= p_38_i_i_i15_i_fu_497_p2;
        p_38_i_i_i_i_reg_820 <= p_38_i_i_i_i_fu_433_p2;
        p_39_demorgan_i_i_i_i_reg_826 <= p_39_demorgan_i_i_i_i_fu_439_p2;
        p_39_demorgan_i_i_i_reg_844 <= p_39_demorgan_i_i_i_fu_503_p2;
        p_Val2_18_reg_832 <= p_Val2_18_fu_454_p2;
        p_Val2_8_reg_814 <= p_Val2_8_fu_390_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_reg_pp0_iter5_tmp_36_i_reg_692 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_Val2_16_reg_798 <= {{grp_fu_661_p3[29:22]}};
        p_Val2_7_reg_770 <= {{grp_fu_649_p3[29:22]}};
        signbit_1_reg_791 <= grp_fu_661_p3[32'd31];
        signbit_reg_763 <= grp_fu_649_p3[32'd31];
        tmp_13_reg_775 <= grp_fu_649_p3[32'd21];
        tmp_17_reg_803 <= grp_fu_661_p3[32'd21];
        tmp_1_reg_808 <= {{grp_fu_661_p3[31:30]}};
        tmp_s_reg_780 <= {{grp_fu_649_p3[31:30]}};
    end
end

always @ (posedge ap_clk) begin
    if (((ap_reg_pp0_iter2_tmp_36_i_reg_692 == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_Val2_2_reg_723 <= grp_fu_632_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_reg_pp0_iter3_tmp_36_i_reg_692 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_Val2_4_reg_733 <= {{grp_fu_639_p3[29:22]}};
        tmp_reg_738 <= grp_fu_639_p3[32'd21];
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | (p_src_cols_V_empty_n == 1'b0) | (p_src_rows_V_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_src_cols_V_read_reg_673 <= p_src_cols_V_dout;
        p_src_rows_V_read_reg_678 <= p_src_rows_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_reg_pp0_iter3_tmp_36_i_reg_692 == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        r_V_1_reg_728 <= grp_fu_639_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_reg_pp0_iter5_tmp_36_i_reg_692 == 1'd1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        r_V_2_reg_758 <= grp_fu_649_p3;
        r_V_3_reg_786 <= grp_fu_661_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_reg_pp0_iter1_tmp_36_i_reg_692 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        r_V_6_i_reg_718 <= r_V_6_i_fu_626_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_36_i_reg_692 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_23_reg_701 <= p_src_data_stream_0_V_dout;
        tmp_24_reg_707 <= p_src_data_stream_1_V_dout;
        tmp_25_reg_712 <= p_src_data_stream_2_V_dout;
    end
end

always @ (*) begin
    if ((tmp_36_i_fu_206_p2 == 1'd0)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_i_fu_191_p2 == 1'd0))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_i_fu_191_p2 == 1'd0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_reg_pp0_iter7_tmp_36_i_reg_692 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        p_dst_data_stream_0_V_blk_n = p_dst_data_stream_0_V_full_n;
    end else begin
        p_dst_data_stream_0_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_reg_pp0_iter7_tmp_36_i_reg_692 == 1'd1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_dst_data_stream_0_V_write = 1'b1;
    end else begin
        p_dst_data_stream_0_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_reg_pp0_iter7_tmp_36_i_reg_692 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        p_dst_data_stream_1_V_blk_n = p_dst_data_stream_1_V_full_n;
    end else begin
        p_dst_data_stream_1_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_reg_pp0_iter7_tmp_36_i_reg_692 == 1'd1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_dst_data_stream_1_V_write = 1'b1;
    end else begin
        p_dst_data_stream_1_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_reg_pp0_iter7_tmp_36_i_reg_692 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        p_dst_data_stream_2_V_blk_n = p_dst_data_stream_2_V_full_n;
    end else begin
        p_dst_data_stream_2_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_reg_pp0_iter7_tmp_36_i_reg_692 == 1'd1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_dst_data_stream_2_V_write = 1'b1;
    end else begin
        p_dst_data_stream_2_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_src_cols_V_blk_n = p_src_cols_V_empty_n;
    end else begin
        p_src_cols_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (p_src_cols_V_empty_n == 1'b0) | (p_src_rows_V_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_src_cols_V_read = 1'b1;
    end else begin
        p_src_cols_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_36_i_reg_692 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_src_data_stream_0_V_blk_n = p_src_data_stream_0_V_empty_n;
    end else begin
        p_src_data_stream_0_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_36_i_reg_692 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_src_data_stream_0_V_read = 1'b1;
    end else begin
        p_src_data_stream_0_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_36_i_reg_692 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_src_data_stream_1_V_blk_n = p_src_data_stream_1_V_empty_n;
    end else begin
        p_src_data_stream_1_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_36_i_reg_692 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_src_data_stream_1_V_read = 1'b1;
    end else begin
        p_src_data_stream_1_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_36_i_reg_692 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_src_data_stream_2_V_blk_n = p_src_data_stream_2_V_empty_n;
    end else begin
        p_src_data_stream_2_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_36_i_reg_692 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_src_data_stream_2_V_read = 1'b1;
    end else begin
        p_src_data_stream_2_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_src_rows_V_blk_n = p_src_rows_V_empty_n;
    end else begin
        p_src_rows_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (p_src_cols_V_empty_n == 1'b0) | (p_src_rows_V_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_src_rows_V_read = 1'b1;
    end else begin
        p_src_rows_V_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (p_src_cols_V_empty_n == 1'b0) | (p_src_rows_V_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (tmp_i_fu_191_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_36_i_fu_206_p2 == 1'd0)) & ~((ap_enable_reg_pp0_iter7 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter8 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter7 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter8 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_36_i_fu_206_p2 == 1'd0)))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Range1_all_ones_1_fu_479_p2 = ((tmp_1_reg_808 == 2'd3) ? 1'b1 : 1'b0);

assign Range1_all_ones_fu_415_p2 = ((tmp_s_reg_780 == 2'd3) ? 1'b1 : 1'b0);

assign Range1_all_zeros_1_fu_484_p2 = ((tmp_1_reg_808 == 2'd0) ? 1'b1 : 1'b0);

assign Range1_all_zeros_fu_420_p2 = ((tmp_s_reg_780 == 2'd0) ? 1'b1 : 1'b0);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((ap_enable_reg_pp0_iter8 == 1'b1) & (((ap_reg_pp0_iter7_tmp_36_i_reg_692 == 1'd1) & (p_dst_data_stream_2_V_full_n == 1'b0)) | ((ap_reg_pp0_iter7_tmp_36_i_reg_692 == 1'd1) & (p_dst_data_stream_1_V_full_n == 1'b0)) | ((ap_reg_pp0_iter7_tmp_36_i_reg_692 == 1'd1) & (p_dst_data_stream_0_V_full_n == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((tmp_36_i_reg_692 == 1'd1) & (p_src_data_stream_2_V_empty_n == 1'b0)) | ((tmp_36_i_reg_692 == 1'd1) & (p_src_data_stream_1_V_empty_n == 1'b0)) | ((tmp_36_i_reg_692 == 1'd1) & (p_src_data_stream_0_V_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter8 == 1'b1) & (((ap_reg_pp0_iter7_tmp_36_i_reg_692 == 1'd1) & (p_dst_data_stream_2_V_full_n == 1'b0)) | ((ap_reg_pp0_iter7_tmp_36_i_reg_692 == 1'd1) & (p_dst_data_stream_1_V_full_n == 1'b0)) | ((ap_reg_pp0_iter7_tmp_36_i_reg_692 == 1'd1) & (p_dst_data_stream_0_V_full_n == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((tmp_36_i_reg_692 == 1'd1) & (p_src_data_stream_2_V_empty_n == 1'b0)) | ((tmp_36_i_reg_692 == 1'd1) & (p_src_data_stream_1_V_empty_n == 1'b0)) | ((tmp_36_i_reg_692 == 1'd1) & (p_src_data_stream_0_V_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter8 == 1'b1) & (((ap_reg_pp0_iter7_tmp_36_i_reg_692 == 1'd1) & (p_dst_data_stream_2_V_full_n == 1'b0)) | ((ap_reg_pp0_iter7_tmp_36_i_reg_692 == 1'd1) & (p_dst_data_stream_1_V_full_n == 1'b0)) | ((ap_reg_pp0_iter7_tmp_36_i_reg_692 == 1'd1) & (p_dst_data_stream_0_V_full_n == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((tmp_36_i_reg_692 == 1'd1) & (p_src_data_stream_2_V_empty_n == 1'b0)) | ((tmp_36_i_reg_692 == 1'd1) & (p_src_data_stream_1_V_empty_n == 1'b0)) | ((tmp_36_i_reg_692 == 1'd1) & (p_src_data_stream_0_V_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (p_src_cols_V_empty_n == 1'b0) | (p_src_rows_V_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state10_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state11_pp0_stage0_iter8 = (((ap_reg_pp0_iter7_tmp_36_i_reg_692 == 1'd1) & (p_dst_data_stream_2_V_full_n == 1'b0)) | ((ap_reg_pp0_iter7_tmp_36_i_reg_692 == 1'd1) & (p_dst_data_stream_1_V_full_n == 1'b0)) | ((ap_reg_pp0_iter7_tmp_36_i_reg_692 == 1'd1) & (p_dst_data_stream_0_V_full_n == 1'b0)));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_pp0_stage0_iter1 = (((tmp_36_i_reg_692 == 1'd1) & (p_src_data_stream_2_V_empty_n == 1'b0)) | ((tmp_36_i_reg_692 == 1'd1) & (p_src_data_stream_1_V_empty_n == 1'b0)) | ((tmp_36_i_reg_692 == 1'd1) & (p_src_data_stream_0_V_empty_n == 1'b0)));
end

assign ap_block_state5_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign brmerge_i_i23_i_fu_597_p2 = (p_39_demorgan_i_not_i_1_fu_592_p2 | neg_src_not_i_i20_i_fu_582_p2);

assign brmerge_i_i_i_fu_538_p2 = (p_39_demorgan_i_not_i_fu_533_p2 | neg_src_not_i_i_i_fu_523_p2);

assign brmerge_i_i_not_i_i2_fu_587_p2 = (p_39_demorgan_i_i_i_reg_844 & neg_src_not_i_i20_i_fu_582_p2);

assign brmerge_i_i_not_i_i_s_fu_528_p2 = (p_39_demorgan_i_i_i_i_reg_826 & neg_src_not_i_i_i_fu_523_p2);

assign carry_1_fu_473_p2 = (tmp_18_fu_447_p3 & tmp_17_i_i10_i_fu_467_p2);

assign carry_fu_409_p2 = (tmp_17_i_i_i_fu_403_p2 & tmp_14_fu_383_p3);

assign deleted_zeros_1_fu_489_p3 = ((carry_1_fu_473_p2[0:0] === 1'b1) ? Range1_all_ones_1_fu_479_p2 : Range1_all_zeros_1_fu_484_p2);

assign deleted_zeros_fu_425_p3 = ((carry_fu_409_p2[0:0] === 1'b1) ? Range1_all_ones_fu_415_p2 : Range1_all_zeros_fu_420_p2);

assign grp_fu_632_p0 = grp_fu_632_p00;

assign grp_fu_632_p00 = ap_reg_pp0_iter2_tmp_25_reg_712;

assign grp_fu_632_p1 = 28'd478150;

assign grp_fu_639_p0 = grp_fu_639_p00;

assign grp_fu_639_p00 = ap_reg_pp0_iter3_tmp_24_reg_707;

assign grp_fu_639_p1 = 30'd2462056;

assign grp_fu_639_p2 = grp_fu_639_p20;

assign grp_fu_639_p20 = p_Val2_2_reg_723;

assign grp_fu_649_p1 = 32'd2990538;

assign grp_fu_649_p2 = 32'd536870912;

assign grp_fu_661_p1 = 32'd2365587;

assign grp_fu_661_p2 = 32'd536870912;

assign i_cast_i_cast_fu_187_p1 = i_i_reg_165;

assign i_fu_196_p2 = (i_i_reg_165 + 11'd1);

assign i_op_assign_5_fu_295_p2 = (tmp_30_cast_i_fu_288_p1 - tmp_31_cast_i_fu_291_p1);

assign i_op_assign_6_fu_304_p2 = (tmp_33_cast_i_fu_301_p1 - tmp_31_cast_i_fu_291_p1);

assign j_cast_i_cast_fu_202_p1 = j_i_reg_176;

assign j_fu_211_p2 = (j_i_reg_176 + 11'd1);

assign neg_src_4_fu_572_p2 = (tmp_18_i_i16_i_fu_567_p2 & ap_reg_pp0_iter7_signbit_1_reg_791);

assign neg_src_fu_513_p2 = (tmp_18_i_i_i_fu_508_p2 & ap_reg_pp0_iter7_signbit_reg_763);

assign neg_src_not_i_i20_i_fu_582_p2 = (signbit_not_i19_i_fu_577_p2 | p_38_i_i_i15_i_reg_838);

assign neg_src_not_i_i_i_fu_523_p2 = (signbit_not_i_i_fu_518_p2 | p_38_i_i_i_i_reg_820);

assign not_carry_i_fu_274_p2 = (tmp_11_fu_260_p3 | p_Result_2_i_i_not_fu_268_p2);

assign p_38_i_i_i15_i_fu_497_p2 = (carry_1_fu_473_p2 & Range1_all_ones_1_fu_479_p2);

assign p_38_i_i_i_i_fu_433_p2 = (carry_fu_409_p2 & Range1_all_ones_fu_415_p2);

assign p_39_demorgan_i_i_i_fu_503_p2 = (signbit_1_reg_791 | deleted_zeros_1_fu_489_p3);

assign p_39_demorgan_i_i_i_i_fu_439_p2 = (signbit_reg_763 | deleted_zeros_fu_425_p3);

assign p_39_demorgan_i_not_i_1_fu_592_p2 = (p_39_demorgan_i_i_i_reg_844 ^ 1'd1);

assign p_39_demorgan_i_not_i_fu_533_p2 = (p_39_demorgan_i_i_i_i_reg_826 ^ 1'd1);

assign p_Result_2_i_i_not_fu_268_p2 = (tmp_10_fu_248_p3 ^ 1'd1);

assign p_Val2_18_fu_454_p2 = (p_Val2_16_reg_798 + tmp_16_i_i6_i_fu_444_p1);

assign p_Val2_20_fu_280_p3 = ((not_carry_i_fu_274_p2[0:0] === 1'b1) ? p_Val2_5_fu_255_p2 : 8'd255);

assign p_Val2_5_fu_255_p2 = (p_Val2_4_reg_733 + tmp_19_i_i_i_fu_245_p1);

assign p_Val2_8_fu_390_p2 = (p_Val2_7_reg_770 + tmp_16_i_i_i_fu_380_p1);

assign p_dst_data_stream_0_V_din = ap_reg_pp0_iter7_p_Val2_20_reg_743;

assign p_dst_data_stream_1_V_din = ((brmerge_i_i_i_fu_538_p2[0:0] === 1'b1) ? p_mux_i_i2_i_fu_544_p3 : p_i_i_i_fu_551_p3);

assign p_dst_data_stream_2_V_din = ((brmerge_i_i23_i_fu_597_p2[0:0] === 1'b1) ? p_mux_i_i24_i_fu_603_p3 : p_i_i25_i_fu_610_p3);

assign p_i_i25_i_fu_610_p3 = ((neg_src_4_fu_572_p2[0:0] === 1'b1) ? 8'd0 : p_Val2_18_reg_832);

assign p_i_i_i_fu_551_p3 = ((neg_src_fu_513_p2[0:0] === 1'b1) ? 8'd0 : p_Val2_8_reg_814);

assign p_mux_i_i24_i_fu_603_p3 = ((brmerge_i_i_not_i_i2_fu_587_p2[0:0] === 1'b1) ? p_Val2_18_reg_832 : 8'd255);

assign p_mux_i_i2_i_fu_544_p3 = ((brmerge_i_i_not_i_i_s_fu_528_p2[0:0] === 1'b1) ? p_Val2_8_reg_814 : 8'd255);

assign r_V_6_i_fu_626_p0 = r_V_6_i_fu_626_p00;

assign r_V_6_i_fu_626_p00 = tmp_23_reg_701;

assign r_V_6_i_fu_626_p1 = 29'd1254096;

assign signbit_not_i19_i_fu_577_p2 = (ap_reg_pp0_iter7_signbit_1_reg_791 ^ 1'd1);

assign signbit_not_i_i_fu_518_p2 = (ap_reg_pp0_iter7_signbit_reg_763 ^ 1'd1);

assign tmp_10_fu_248_p3 = r_V_1_reg_728[32'd29];

assign tmp_11_fu_260_p3 = p_Val2_5_fu_255_p2[32'd7];

assign tmp_14_fu_383_p3 = r_V_2_reg_758[32'd29];

assign tmp_15_fu_395_p3 = p_Val2_8_fu_390_p2[32'd7];

assign tmp_16_i_i6_i_fu_444_p1 = tmp_17_reg_803;

assign tmp_16_i_i_i_fu_380_p1 = tmp_13_reg_775;

assign tmp_17_i_i10_i_fu_467_p2 = (tmp_19_fu_459_p3 ^ 1'd1);

assign tmp_17_i_i_i_fu_403_p2 = (tmp_15_fu_395_p3 ^ 1'd1);

assign tmp_18_fu_447_p3 = r_V_3_reg_786[32'd29];

assign tmp_18_i_i16_i_fu_567_p2 = (p_38_i_i_i15_i_reg_838 ^ 1'd1);

assign tmp_18_i_i_i_fu_508_p2 = (p_38_i_i_i_i_reg_820 ^ 1'd1);

assign tmp_19_fu_459_p3 = p_Val2_18_fu_454_p2[32'd7];

assign tmp_19_i_i_i_fu_245_p1 = tmp_reg_738;

assign tmp_30_cast_i_fu_288_p1 = ap_reg_pp0_iter4_tmp_23_reg_701;

assign tmp_31_cast_i_fu_291_p1 = p_Val2_20_fu_280_p3;

assign tmp_33_cast_i_fu_301_p1 = ap_reg_pp0_iter4_tmp_25_reg_712;

assign tmp_36_i_fu_206_p2 = ((j_cast_i_cast_fu_202_p1 < p_src_cols_V_read_reg_673) ? 1'b1 : 1'b0);

assign tmp_i_fu_191_p2 = ((i_cast_i_cast_fu_187_p1 < p_src_rows_V_read_reg_678) ? 1'b1 : 1'b0);

endmodule //CvtColor_1