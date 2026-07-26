interface AES_intf;
// signals
bit clk;
bit Rst_n;
logic [127:0] AES_key;
logic [127:0] cipher_text;
logic [127:0] plain_text;

// create a modport to connect it with the dut for the driver and monitor and top of the test
modport Dut_mod(input clk, Rst_n, AES_key, plain_text, output cipher_text);

//clocking block
/*make a clocking block for driver because we want to drive the inputs after the clock edge 
so w will care about the 2nd clock cycle because the monitor come first in the first clock cycle because 
we make the the signals for the monitor as inputs and we care about the signals that the driver will 
driving it to the dut so after do that we will not have a race condition for the driver and the dut 
and the monitor because we will keep delay for the monitor waiting the dut finish and same for driver
we keep delay between the dut and drivr the dut will waiting the driver and it will not calculate anything
and make the logic and functionality till the driver finish driving all signlas to the dut*/

clocking cb_drv @(posedge clk);
        default output #1;
        output clk, Rst_n, plain_text, AES_key;
    endclocking

    clocking cb_mon @(posedge clk);
        default input #1;
        input clk, Rst_n, plain_text, AES_key, cipher_text;
    endclocking

endinterface