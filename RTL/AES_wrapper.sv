module AES_wrapper(AES_intf.Dut_mod dut_signals);
// signals
logic [127:0] plain_text;
logic [127:0] AES_key;
logic [127:0] cipher_text;

/* we want to modify the AES module to add a Reset and clock for it so we will modify it by using the 
AES_encrypt module we will instantiate it and add a reset state and clock state  to it*/

AES_Encrypt  aes_encrypt(
    .in(plain_text),
    .key(AES_key),
    .out(cipher_text)
);

// modify the module for clock and reset
/* we use the interface to connect the dut with the top of test directly without using the signals 
so in interface we use modport with a specific direction as inputs is plain text and the key
the output is cipher text so in the procedure block we use the cipher text as output so we will deal
eith it normally in the dut but inputs we will dill with them as the module can't write in inputs
because these inputs come from out like from driver or testbench so we make a internals signals for inputs
so we will read these inputs from interface but in module we can write in output so we use it directly
from interface because this output come directly from module as we mension first these inputs come from driver or 
test se we need to assign them to the internal signals so the dut will make the functionality on them 
*/
always@(posedge dut_signals.clk, negedge dut_signals.Rst_n) begin
    if(!dut_signals.Rst_n) begin
        plain_text <= 0;
        AES_key <= 0;
        dut_signals.cipher_text = 0;
    end
    else begin
        plain_text <= dut_signals.plain_text;
        dut_signals.cipher_text <= cipher_text;
        AES_key <= dut_signals.AES_key;
    end
end
endmodule