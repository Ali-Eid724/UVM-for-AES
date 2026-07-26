import AES_package::*;
import uvm_pkg::*;
`include"uvm_macros.svh"
class AES_scoreboard extends uvm_scoreboard;

// registration scope 
`uvm_component_utils(AES_scoreboard)

//construction scope
function new(string name = "AES_scoreboard", uvm_component parent = null);
super.new(name, parent);
endfunction

//build phase creation
function void build_phase(uvm_phase phase);
super.build_phase(phase);
$display("<<<<<<<<<AES_scoreboard is buidling>>>>>>>>>>");
endfunction

//connect phase creation
function void connect_phase(uvm_phase phase);
super.connect_phase(phase);
$display("<<<<<<<<<AES_scoreboard is conncting>>>>>>>>>>");
endfunction

// run phase creation
task run_phase(uvm_phase phase);
super.run_phase(phase);
$display("<<<<<<<<<AES_scoreboard is running>>>>>>>>>>>>");
endtask

endclass