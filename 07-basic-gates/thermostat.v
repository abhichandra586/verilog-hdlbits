// HDLBits: Thermostat
// https://hdlbits.01xz.net/wiki/Thermostat

module top_module (
    input too_cold,
    input too_hot,
    input mode,
    input fan_on,
    output heater,
    output aircon,
    output fan
); 
    
    assign heater = too_cold? mode:0;
    assign aircon = too_hot? ~mode:0;
    assign fan = (fan_on | heater | aircon)? 1:0;

endmodule