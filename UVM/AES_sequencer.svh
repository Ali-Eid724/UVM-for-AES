import AES_package::*;
import uvm_pkg::*;
`include"uvm_macros.svh"
class AES_sequencer extends uvm_sequencer#(AES_sequence_item);

// registration scope 
`uvm_component_utils(AES_sequencer)

//construction scope
function new(string name = "AES_sequencer)", uvm_component parent = null);
super.new(name, parent);
endfunction

// run phase creation
task run_phase(uvm_phase phase);
super.run_phase(phase);
$display("<<<<<<<<<AES_sequencer is running>>>>>>>>>>>>");
endtask

endclass