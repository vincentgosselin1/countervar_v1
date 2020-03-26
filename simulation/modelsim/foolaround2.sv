//foolaround2.sv is for SystemVerilog!!!!!

//first lesson : integer and logic literals.
//`timescale 1ns/100ps
`timescale 100ps/10ps
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


// real a;
// shortreal b;

// initial begin
	// $monitor ("@ %gns a = %e b = %e", $time, a, b);
	
	// for(int i = 0; i<15; i = i + 1) begin
		// #1 $monitor ("SystemVerilog is cool");
	// end
		
	
	// a = '0;
	// b = 1.0e2;
	// #1 a = 2e5;
	// type casting
	// #1 b = shortreal'(a);
	// #1 a = 2.1E-2;
	// type casting
	// #1 b = shortreal'(a);
	// #5 a = 0;
	// #5 a = 16'haaaa;
	
	// #1 $finish;
	
// end


//another lesson Time Literals
// initial begin
// time a = 55;
// $monitor ("at %g a = %t", $time, a);
	// #1 a = 1ns;
	// #1 a = 300ps;
// end



//string literals
// string a;

// initial begin	
	// $display ("@ %gns a = %s", $time, a);
	// a = "hellooooo vince";
	// $display("a %gns a = %s", $time, a);
	// #1 a = "byebye";
	// $display("a %gns a = %s", $time, a);
// end

//array literals

// byte a [0:1][0:2] = '{'{0,1,2}, '{3{8'h9}}};

	// initial begin
		// for(int i = 0; i<2; i = i+1) begin
			// for(int j = 0; j<3; j = j+1) begin
				// $display ("a[i][j] = %d", a[i][j]);
			// end
		// end
	// end

//end of coding 20200323.



//structure literals
// type define a structure
// typedef struct {
	// byte a;
	// reg b;
	// shortint unsigned c;
// } myStruct;

//module struct_literals ();

// myStruct object = '{10,0,100};

//myStruct objectArray[0:1] = '{'{10,0,100},'{11,1,101}};
// myStruct objectArray[0:1]; //very cool


// initial begin
	// $display ("a = %b b = %b c = %h", object.a, object.b, object.c);
	// object.a = 15;
	// $display ("a = %b b = %b c = %h", object.a, object.b, object.c);
	// object.c = 16'hDEAD;
	// $display ("a = %b b = %b c = %h", object.a, object.b, object.c);
	// $display("printing array objets");
	// $display ("a = %b b = %b c = %h", objectArray[0].a, objectArray[0].b, objectArray[0].c);
	// $display ("a = %b b = %b c = %h", objectArray[1].a, objectArray[1].b, objectArray[1].c);
	// objectArray[0].a = 255;
	// $display ("a = %b b = %b c = %h", objectArray[0].a, objectArray[0].b, objectArray[0].c);
// end





endmodule
	
