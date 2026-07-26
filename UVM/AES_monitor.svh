import AES_package::*;
import uvm_pkg::*;
`include"uvm_macros.svh"
class AES_monitor extends uvm_monitor;

// registration scope 
`uvm_component_utils(AES_monitor)

//construction scope
function new(string name = "AES_monitor", uvm_component parent = null);
super.new(name, parent);
endfunction

//build phase creation
function void build_phase(uvm_phase phase);
super.build_phase(phase);
$display("<<<<<<<<<AES_monitor is buidling>>>>>>>>>>");
endfunction

//connect phase creation
function void connect_phase(uvm_phase phase);
super.connect_phase(phase);
$display("<<<<<<<<<AES_monitor is conncting>>>>>>>>>>");
endfunction 

// run phase creation
task run_phase(uvm_phase phase);
super.run_phase(phase);
$display("<<<<<<<<<AES_monitor is running>>>>>>>>>>>>");
endtask

endclass