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



