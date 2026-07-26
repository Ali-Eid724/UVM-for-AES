import AES_package::*;
import uvm_pkg::*;
`include"uvm_macros.svh"
class AES_env extends uvm_env;

// registration scope 
`uvm_component_utils(AES_env)

//construction scope
function new(string name = "AES_env", uvm_component parent = null);
super.new(name, parent);
endfunction

//build phase creation
function void build_phase(uvm_phase phase);
super.build_phase(phase);
$display("<<<<<<<<<AES_env is buidling>>>>>>>>>>");
endfunction

//connect phase creation
function void connect_phase(uvm_phase phase);
super.connect_phase(phase);
$display("<<<<<<<<<AES_env is conncting>>>>>>>>>>");
endfunction

// run phase creation
task run_phase(uvm_phase phase);
super.run_phase(phase);
$display("<<<<<<<<<AES_env is running>>>>>>>>>>>>");
endtask
endclass