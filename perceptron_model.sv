`timescale 1ns / 1ps
module perceptron_model(input logic[2:1]x, input logic [12:0] weight, output logic p, output logic y);

    int v11 = x[1]*weight[0] + x[2]*weight[2];
    int v12 = x[1]*weight[1] + x[2]*weight[3];
    int v21 = v11*weight[4] + v12*weight[5];
    int v22 = v11*weight[6] + v12*weight[7];
    int v23 = v11*weight[8] + v12*weight[9]; // creating intermediate results
   
    assign y = ((x[1]*weight[0] + x[2]*weight[2])*weight[4] + (x[1]*weight[1] + x[2]*weight[3])*weight[5])*weight[10] + ((x[1]*weight[0] + x[2]*weight[2])*weight[6] + (x[1]*weight[1] + x[2]*weight[3])*weight[7])*weight[11] + ((x[1]*weight[0] + x[2]*weight[2])*weight[8] + (x[1]*weight[1] + x[2]*weight[3])*weight[9])*weight[12];
    // v21*weight[10] + v22*weight[11] + v23*weight[12]
    
    always@* begin // sin activation fucntion 
        
      if(y > 0) begin 
            p = 1 ;  end
            
      else begin
            p = 0;   end    
     end
    
endmodule
