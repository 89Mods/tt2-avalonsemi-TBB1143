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
	output [5:0] sample
	);

	initial begin
		$dumpfile ("tb.vcd");
		$dumpvars (0, tb);
		#1;
	end

	wire [7:0] inputs = {WR, A0, data_in, RST, CLK};
	wire [7:0] outputs;
	assign sample = outputs[5:0];

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
					.WR(WR),
					.S0(sample[0]),
					.S1(sample[1]),
					.S2(sample[2]),
					.S3(sample[3]),
					.S4(sample[4]),
					.S5(sample[5])
					);
	`endif

endmodule
