// Code your design here
module mux_m #(parameter WIDTH = 8)(data_a,data_b,out,sel_a);  
 
//   localparam time WIDTH  =  8 ;
 
 
  input  logic [WIDTH-1:0] data_a ; 
  input  logic [WIDTH-1:0] data_b ; 
  output logic [WIDTH-1:0] out    ;
  input  logic             sel_a  ; 
 
  timeunit        1ns ;
  timeprecision 100ps ;
 
  always_comb begin
    unique case (sel_a)      
      0: out <= data_b;
      1: out <= data_a;
      default: out <= out; // caso de surto ou efeitos externos, mantemos a saída
    endcase
  end
   
endmodule