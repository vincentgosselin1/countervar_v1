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