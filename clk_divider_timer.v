`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Module Name:    clk_divider 

//////////////////////////////////////////////////////////////////////////////////
module clk_divider_timer(
	input clk_in,
	output reg divided_clk
    );
	 
	 
parameter toggle_value = 49999999; // 49999999 TODO: Calculate correct value

	 
reg[32:0] cnt;

initial begin
    cnt <= 0;
    divided_clk <= 0;
end

always@(posedge clk_in) begin
    if (cnt==toggle_value) begin
        cnt <= 0;
        divided_clk <= ~divided_clk;
    end
    else begin
        cnt <= cnt +1;
        divided_clk <= divided_clk;		
    end

end
			  
	


endmodule
