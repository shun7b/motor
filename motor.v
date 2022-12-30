
/*Produced by NSL Core(version=20211030), IP ARCH, Inc. Wed Jul 13 18:19:10 2022
 Licensed to :EVALUATION USER*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module motor ( p_reset , m_clock , power );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  output power;
  wire power;
  reg [30:0] count;
  reg pwm;
  wire _net_0;
  wire _net_1;
  wire _net_2;

   assign  _net_0 = (count <= 31'b0000000000000000100010001011100);
   assign  _net_1 = ((count < 31'b0000000000000001000100010111000)&(count > 31'b0000000000000000100010001011100));
   assign  _net_2 = (count==31'b0000000000000001000100010111000);
   assign  power = pwm;
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     count <= 31'b0000000000000000000000000000000;
else 
// synthesis translate_off
// synopsys translate_off
if (((~_net_2)&_net_2))   count <= 31'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((~_net_2))
      count <= (count+31'b0000000000000000000000000000001);
else if (_net_2)
      count <= 31'b0000000000000000000000000000001;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((~_net_2)|_net_2)==1'b1) ||
 (((~_net_2)|_net_2)==1'b0) ) begin
 if (((~_net_2)&_net_2))
 begin $display("Warning: assign collision(motor:count) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(motor:count) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     pwm <= 1'b0;
else 
// synthesis translate_off
// synopsys translate_off
if ((_net_1&_net_0))   pwm <= 1'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if (_net_1)
      pwm <= 1'b0;
else if (_net_0)
      pwm <= 1'b1;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if (((_net_1|_net_0)==1'b1) ||
 ((_net_1|_net_0)==1'b0) ) begin
 if ((_net_1&_net_0))
 begin $display("Warning: assign collision(motor:pwm) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(motor:pwm) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
endmodule

/*Produced by NSL Core(version=20211030), IP ARCH, Inc. Wed Jul 13 18:19:10 2022
 Licensed to :EVALUATION USER*/
