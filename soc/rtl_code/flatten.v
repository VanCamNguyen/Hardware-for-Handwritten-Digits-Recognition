// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module flatten (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        in_r_address0,
        in_r_ce0,
        in_r_q0,
        out_r_address0,
        out_r_ce0,
        out_r_we0,
        out_r_d0
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] in_r_address0;
output   in_r_ce0;
input  [31:0] in_r_q0;
output  [8:0] out_r_address0;
output   out_r_ce0;
output   out_r_we0;
output  [31:0] out_r_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg in_r_ce0;
reg out_r_ce0;
reg out_r_we0;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [4:0] k_fu_138_p2;
reg   [4:0] k_reg_257;
wire    ap_CS_fsm_state2;
wire   [8:0] index_fu_144_p2;
reg   [8:0] index_reg_262;
wire   [0:0] icmp_ln90_fu_132_p2;
wire   [7:0] add_ln93_fu_166_p2;
reg   [7:0] add_ln93_reg_267;
wire   [2:0] i_fu_178_p2;
reg   [2:0] i_reg_275;
wire    ap_CS_fsm_state3;
wire   [8:0] add_ln94_fu_184_p2;
reg   [8:0] add_ln94_reg_280;
wire   [0:0] icmp_ln91_fu_172_p2;
wire   [9:0] add_ln93_2_fu_211_p2;
reg   [9:0] add_ln93_2_reg_285;
wire   [2:0] j_fu_223_p2;
reg   [2:0] j_reg_293;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln92_fu_217_p2;
wire   [8:0] add_ln94_1_fu_248_p2;
wire    ap_CS_fsm_state5;
reg   [4:0] k_0_reg_65;
reg   [8:0] index_0_reg_76;
reg   [2:0] i_0_reg_88;
reg   [8:0] index_1_reg_99;
reg   [2:0] j_0_reg_110;
reg   [8:0] index_2_reg_121;
wire   [63:0] zext_ln93_6_fu_238_p1;
wire   [63:0] zext_ln93_3_fu_243_p1;
wire   [6:0] tmp_fu_154_p3;
wire   [7:0] zext_ln93_fu_150_p1;
wire   [7:0] zext_ln93_1_fu_162_p1;
wire   [7:0] zext_ln93_2_fu_190_p1;
wire   [7:0] add_ln93_1_fu_194_p2;
wire   [9:0] zext_ln93_4_fu_199_p1;
wire   [9:0] p_shl1_cast_fu_203_p3;
wire   [9:0] zext_ln93_5_fu_229_p1;
wire   [9:0] add_ln93_3_fu_233_p2;
reg   [4:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln92_fu_217_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        i_0_reg_88 <= i_reg_275;
    end else if (((icmp_ln90_fu_132_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        i_0_reg_88 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln91_fu_172_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        index_0_reg_76 <= index_reg_262;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        index_0_reg_76 <= 9'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln92_fu_217_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        index_1_reg_99 <= add_ln94_reg_280;
    end else if (((icmp_ln90_fu_132_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        index_1_reg_99 <= index_0_reg_76;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        index_2_reg_121 <= add_ln94_1_fu_248_p2;
    end else if (((icmp_ln91_fu_172_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        index_2_reg_121 <= index_1_reg_99;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        j_0_reg_110 <= j_reg_293;
    end else if (((icmp_ln91_fu_172_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        j_0_reg_110 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln91_fu_172_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        k_0_reg_65 <= k_reg_257;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        k_0_reg_65 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln91_fu_172_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        add_ln93_2_reg_285 <= add_ln93_2_fu_211_p2;
        add_ln94_reg_280 <= add_ln94_fu_184_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln90_fu_132_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        add_ln93_reg_267 <= add_ln93_fu_166_p2;
        index_reg_262 <= index_fu_144_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_reg_275 <= i_fu_178_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        j_reg_293 <= j_fu_223_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        k_reg_257 <= k_fu_138_p2;
    end
end

always @ (*) begin
    if ((((icmp_ln90_fu_132_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
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
    if (((icmp_ln90_fu_132_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        in_r_ce0 = 1'b1;
    end else begin
        in_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        out_r_ce0 = 1'b1;
    end else begin
        out_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        out_r_we0 = 1'b1;
    end else begin
        out_r_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln90_fu_132_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln91_fu_172_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln92_fu_217_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln93_1_fu_194_p2 = (add_ln93_reg_267 + zext_ln93_2_fu_190_p1);

assign add_ln93_2_fu_211_p2 = (zext_ln93_4_fu_199_p1 + p_shl1_cast_fu_203_p3);

assign add_ln93_3_fu_233_p2 = (add_ln93_2_reg_285 + zext_ln93_5_fu_229_p1);

assign add_ln93_fu_166_p2 = (zext_ln93_fu_150_p1 + zext_ln93_1_fu_162_p1);

assign add_ln94_1_fu_248_p2 = (index_2_reg_121 + 9'd1);

assign add_ln94_fu_184_p2 = (index_1_reg_99 + 9'd5);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign i_fu_178_p2 = (i_0_reg_88 + 3'd1);

assign icmp_ln90_fu_132_p2 = ((k_0_reg_65 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln91_fu_172_p2 = ((i_0_reg_88 == 3'd5) ? 1'b1 : 1'b0);

assign icmp_ln92_fu_217_p2 = ((j_0_reg_110 == 3'd5) ? 1'b1 : 1'b0);

assign in_r_address0 = zext_ln93_6_fu_238_p1;

assign index_fu_144_p2 = (index_0_reg_76 + 9'd25);

assign j_fu_223_p2 = (j_0_reg_110 + 3'd1);

assign k_fu_138_p2 = (k_0_reg_65 + 5'd1);

assign out_r_address0 = zext_ln93_3_fu_243_p1;

assign out_r_d0 = in_r_q0;

assign p_shl1_cast_fu_203_p3 = {{add_ln93_1_fu_194_p2}, {2'd0}};

assign tmp_fu_154_p3 = {{k_0_reg_65}, {2'd0}};

assign zext_ln93_1_fu_162_p1 = tmp_fu_154_p3;

assign zext_ln93_2_fu_190_p1 = i_0_reg_88;

assign zext_ln93_3_fu_243_p1 = index_2_reg_121;

assign zext_ln93_4_fu_199_p1 = add_ln93_1_fu_194_p2;

assign zext_ln93_5_fu_229_p1 = j_0_reg_110;

assign zext_ln93_6_fu_238_p1 = add_ln93_3_fu_233_p2;

assign zext_ln93_fu_150_p1 = k_0_reg_65;

endmodule //flatten
