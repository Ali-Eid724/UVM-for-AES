import AES_package::*;
import uvm_pkg::*;
`include"uvm_macros.svh"
class AES_sequence_item extends uvm_sequence_item;
// registration scope 
`uvm_object_utils(AES_sequence_item)

//construction scope
function new(string name = "AES_sequence_item");
super.new(name);
endfunction
endclass