module AES_top;
import AES_package::*;
import uvm_pkg::*;
`include"uvm_macros.svh"

AES_intf my_intf();

// clock generation
initial begin
forever begin
    #5 my_intf.clk = ~(my_intf.clk);
end
end

//reset geneartion
initial begin
    my_intf.Rst_n = 0;
    #20 my_intf.Rst_n = 1;
end

//instantiate ther DUT
AES_wrapper my_AES(my_intf.Dut_mod);

//virtual interface generation


endmodule