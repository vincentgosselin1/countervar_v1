//counterverilog_tb.v

module counterverilog_tb;

reg clk, cnt_ena, reset;
wire [15:0] count_out;
wire tc_out;

initial begin
	$monitor ("count_out is %d, tc_out is %b", count_out, tc_out);
	clk = 0;
	reset = 0;
	cnt_ena = 0;
	
	#5 reset = 1; //after 5ns.
	#10 reset = 0; //after 10ns.
	#15 cnt_ena = 1;
	// #10 ; //do nothing
	// #10 ; //do nothing
	// #10 ; //do nothing
	// #10 $finish;
end	
	
always begin
	#1 clk = !clk; //inversion of clock after 1ns. Period is then 2ns -> 500MHZ.
end

counterverilog U0 (
	.clk (clk),
	.reset(reset),
	.cnt_ena(cnt_ena),
	.count(count_out),
	.tc(tc_out)
);


endmodule