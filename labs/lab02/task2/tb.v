// tb.v
// Starter testbench template -- YOU complete this file.

module tb;

  // TODO: declare the inputs and outputs
  parameter WIDTH = 8;
  parameter DEPTH = 16;

  red [$clog2(DEPTH)-1:0] t_addr;
  wire [WIDTH-1:0] t_dout;
  // TODO: instantiate DUT here
  lut #(.WIDTH(WIDTH), .DEPTH(DEPTH)) DUT (
    .addr (t_addr),
    .dout (t_dout)
  );
  // Waveform dump configuration (DO NOT CHANGE)
  string vcd_file;
  initial begin
    if ($value$plusargs("vcd=%s", vcd_file)) begin
      $dumpfile(vcd_file);
      $dumpvars(0, DUT);
    end
  end

  initial begin
    // TODO: apply different input combinations
    integer i;
    for (i = 0; i<DEPTH; i= i+1) begin 
      t_addr = i;
      #5;
    end 
    $finish;
  end

  initial
    $monitor($time, " addr=%0d dout=%0d", t_addr, t_dout; // change as required

endmodule
