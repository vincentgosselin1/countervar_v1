//counter in verilog
//4 bit counter
module counterverilog (
reset,
clk,
cnt_ena,
 count,
 tc
 );
 
//inputs
input	reset;
input	clk;
input cnt_ena;

//outputss
output [15:0] count; // ":" gotta remember that!! and the bus length BEFORE!
output tc;//terminal count
reg [15:0] count;
reg tc;
integer yooooooo;

//cannot drive WIRE type but reg, interger.
always @ (posedge clk or posedge reset) // alive all the time.
if(reset) begin
	count <= 0;
	tc <= 0; //for now.
end else begin : COUNT //COUNT IS A BLOCK OF CODE
	while(cnt_ena) begin
		count <= count + 1;
		disable COUNT; //disable this block of code.
	end
end

endmodule


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


	
	
	
	
	

