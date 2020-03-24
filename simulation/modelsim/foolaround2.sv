//foolaround2.sv is for SystemVerilog!!!!!

//first lesson : integer and logic literals.
`timescale 1ns/100ps
module foolaround2 ();

// integer a;

// initial begin
	// $monitor ("@ %gns a = %h", $time, a);
	// a = '0;
	// #1 a = 'x;
	// #1 a = '1;
	// #1 a = 'z;
	// #1 a = 'b0;
	// #1 a = 'bx;
	// #1 a = 'b1;
	// #1 a = 'bz;
	//#1 $finish;
// end


real a;
shortreal b;

initial begin
	$monitor ("@ %gns a = %e b = %e", $time, a, b);
	
	for(int i = 0; i<15; i = i + 1) begin
		#1 $monitor ("SystemVerilog is cool");
	end
		
	
	// a = '0;
	// b = 1.0e2;
	// #1 a = 2e5;
	//type casting
	// #1 b = shortreal'(a);
	// #1 a = 2.1E-2;
	//type casting
	// #1 b = shortreal'(a);
	// #5 a = 0;
	// #5 a = 16'haaaa;
	
	// #1 $finish;
	
end



endmodule
	
