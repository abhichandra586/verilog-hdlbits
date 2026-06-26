// HDLBits: Ring or Vibrate
// https://hdlbits.01xz.net/wiki/Ringer

module top_module (
    input ring,
    input vibrate_mode,
    output ringer,
    output motor
);
    
    assign ringer = ring ? ~vibrate_mode: 0;
    assign motor = ring ? vibrate_mode: 0;

endmodule