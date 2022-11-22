`default_nettype none
`timescale 1ns/1ps

module tb (
	input CLK,
	input FCLK,
	input RST,
	input [3:0] data_in,
	input A0,
	input WR,
	output SIG0,
	output SIG1,
	output [3:0] triangle_w
	);

	initial begin
		$dumpfile ("tb.vcd");
		$dumpvars (0, tb);
		#1;
	end

	wire [7:0] inputs = {WR, A0, data_in, RST, CLK};
	wire [7:0] outputs;
	assign triangle_w = outputs[5:2];

	`ifdef GL_TEST
	tholin_avalonsemi_tbb1143 tholin_avalonsemi_tbb1143 (
		.vccd1( 1'b1),
		.vssd1( 1'b0),
		.io_in (inputs),
		.io_out (outputs)
	);
	`else
	main   CIRCUIT_0 (.A0(A0),
					.CLK(CLK),
					.D0(data_in[0]),
					.D1(data_in[1]),
					.D2(data_in[2]),
					.D3(data_in[3]),
					.FCLK(FCLK),
					.RST(RST),
					.SOUT0(SIG0),
					.SOUT1(SIG1),
					.WR(WR),
					.T0(triangle_w[0]),
					.T1(triangle_w[1]),
					.T2(triangle_w[2]),
					.T3(triangle_w[3])
					);
	`endif

endmodule
