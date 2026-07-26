import AES_package::*;
import uvm_pkg::*;
`include"uvm_macros.svh"
class AES_sequence extends uvm_sequence;


// registration scope 
`uvm_object_utils(AES_sequence)

//construction scope
function new(string name = "AES_sequence");
super.new(name);
endfunction


endclass