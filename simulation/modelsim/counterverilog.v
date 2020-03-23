//counter in verilog
//4 bit counter
module counter(reset,clk,cnt_ena, count, tc);
//inputs
input	reset;
input	clk;
input cnt_ena;

//outputss
output [3:0] count; // ":" gotta remember that!! and the bus length BEFORE!
output tc;//terminal count
reg [3:0] count;
integer yooooooo;

//cannot drive WIRE type but reg, interger.
always @ (posedge clk or posedge reset) // alive all the time.
if(reset) begin
	count <= 0;
end else begin : COUNT //COUNT IS A BLOCK OF CODE
	while(cnt_ena) begin
		count <= count + 1;
		disable COUNT; //disable this block of code.
	end
end

endmodule;

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
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


	
	
	
	
	

