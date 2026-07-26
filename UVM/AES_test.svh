import AES_package::*;
import uvm_pkg::*;
`include"uvm_macros.svh"
class AES_test extends uvm_test;

virtual AES_intf my_intf;

// registration scope 
`uvm_component_utils(AES_test)

//construction scope
function new(string name = "AES_test", uvm_component parent = null);
super.new(name, parent);
endfunction

//build phase creation
function void build_phase(uvm_phase phase);
super.build_phase(phase);
$display("<<<<<<<<<AES_test is buidling>>>>>>>>>>");
// get the vif from the top module
if (!uvm_config_db#(virtual AES_intf)::get(this, "", "vif", my_intf)) begin
        `uvm_error("TEST", "Failed to get virtual interface from config DB")
      end
// passing the vif to the env for the rest of the testbench classes
      uvm_config_db#(virtual AES_intf)::set(this, "env", "vif", my_intf);
endfunction

//connect phase creation
function void connect_phase(uvm_phase phase);
super.connect_phase(phase);
$display("<<<<<<<<<AES_test is conncting>>>>>>>>>>");
endfunction

// run phase creation
task run_phase(uvm_phase phase);
super.run_phase(phase);
$display("<<<<<<<<<AES_test is running>>>>>>>>>>>>");
endtask



endclass