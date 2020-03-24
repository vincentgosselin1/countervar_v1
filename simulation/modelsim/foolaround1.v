//foolaround1.v

module foolaround1();
reg free_time;

always

//clock stuff

//initial
begin
	
	free_time = 1;

	while (free_time) begin
		$display ("lolipop");
	end
end
endmodule


//for loop verilog
// for (i = 0; i < 16; i = i +1) begin
   	  	// $display ("Current value of i is %d", i);
   	// end
	
//repeat
// repeat (16) begin
	// $display ("current value of i is %d", i);
	// i = i + 1;
// end

//testbench stuff!
//executed only once when simulation starts. Can have many but executed at same time.
// initial begin
	// clk = 0;
	// johndoe = 0;
	// reg1 = 1;
	// reg2;
// end

//always, use of "=" when combinational logic.
// always @ (a or b or sel)
// begin
	// y = 0;
	// if(sel == 0) begin
		// y = a;
	// end else begin
		// y = b;
	// end
// end

//flipflop use of "<=" when sequential logic.
// always @ (posedge clk)
// if (reset == 0) begin
	// y <= 0;
// end else if (sel == 0)
	// y <= a;
// end else begin		
	// y <= b;
// end;

// "#" is for time units
// always begin	
	// #5 clk = ~clk; //invert clk after 5ns.
// end;
	
	
//timescale
//‘timescale 1 ns /  100 ps	

//assign statement is for combinational logic, executes all the time. No sensitivity list.
//assign out = (enable) ? data : 1'bz;
//<- tri-state buffer it is.


//task and function. Task can have delay , function is combinational logic.
// function parity;
// input [31:0] data;
// integer i;
// begin
	// parity = 0;
	// for (i=0;i<32;i=i+1) begin
		// parity = parity ^ data[i];
	// end
// end
// endfunction

// task example
// task load_count;
	// input [3:0] load_value;
	// begin
		// @(negedge clk_50);
		// $display($time, " << Loading the counter with %h >>", load_value);
		// load_1 = 1'b0;
		// count_in = load_value;
		// @(negedge clk_50);
		// load_1 = 1'b1;
	// end
// endtask
















