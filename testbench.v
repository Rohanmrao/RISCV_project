`timescale 1ns / 1ps
module testbench_tb();
//inputs
   reg [2:1]x;
   reg [12:0] weight; 
//output 
   wire p ;
  perceptron dut (x,weight,p);       
       initial begin                
                //case1 x1=1 , x2=1
                x[1] = 1;
                x[2] = 1;
                // all weigths are 1
                weight[0]=1; 
                weight[1]=0; 
                weight[2]=1; 
                weight[3]=0; 
                weight[4]=1; 
                weight[5]=0; 
                weight[6]=1; 
                weight[7]=0; 
                weight[8]=1; 
                weight[9]=0; 
                weight[10] = 1; 
                weight[11] = 1;
                weight[12] = 1;
               

                //case2 x=1 , x2= 0              
                #10 x[1]=0;
                 x[2]=1;
                 weight[0]=0; 
                 weight[1]=0; 
                 weight[2]=0; 
                 weight[3]=0; 
                 weight[4]=0; 
                 weight[5]=0; 
                 weight[6]=0; 
                 weight[7]=1; 
                 weight[8]=0; 
                 weight[9]=1; 
                weight[10] = 1; 
                weight[11] = 1;
                weight[12] = 1;
               
               
               
                 //case3 x1=0 , x2=1   
                 #10 x[1]=0;
                  x[2]=1 ;
                 weight[0]=1;
                 weight[1]=1;                
                 weight[2]=0;
                 weight[3]=1;
                 weight[4]=0;
                 weight[5]=1; 
                 weight[6]=0;
                 weight[7]=1;
                 weight[8]=0;
                 weight[9]=1;
                weight[10] = 1; 
                weight[11] = 1;
                weight[12] = 1;
                 
                 
                //case4 x1=1 x2 =0
                #10 x[1]=1;           
                 x[2]=0 ;          
                weight[0]=1;          
                weight[1]=1;        
                weight[2]=0;                   
                weight[3]=1;      
                weight[4]=0;      
                weight[5]=1;      
                weight[6]=0;      
                weight[7]=1;      
                weight[8]=0;      
                weight[9]=1; 
                 weight[10] = 1; 
                weight[11] = 1;
                weight[12] = 1;
                    
 
                 //case5 x1=0 x2 =0     
                 #10 x[1]=0;            
                  x[2]=0 ;              
                 weight[0]=1;           
                 weight[1]=1;           
                 weight[2]=0;              
                 weight[3]=1;           
                 weight[4]=0;           
                 weight[5]=1;           
                 weight[6]=0;           
                 weight[7]=1;           
                 weight[8]=0;           
                 weight[9]=1;    
                    weight[10] = 1; 
                weight[11] = 1;
                weight[12] = 1;      

                 // case 6 x1=1 x2=1  
                     
                 #10 x[1]=1;            
                  x[2]=1 ;              
                 weight[0]=1;           
                 weight[1]=1;           
                 weight[2]=1;           
                 weight[3]=1;           
                 weight[4]=1;           
                 weight[5]=1;           
                 weight[6]=0;           
                 weight[7]=0;           
                 weight[8]=0;           
                 weight[9]=0;    
                 weight[10] = 1; 
                weight[11] = 1;
                weight[12] = 1;
                      

                // case7 x1=1 x2=0
                  #10 x[1]=1;   
                   x[2]=1 ;     
                  weight[0]=1;       
                  weight[1]=1;       
                  weight[2]=1;                                 
                  weight[3]=1;  
                  weight[4]=1;  
                  weight[5]=1;  
                  weight[6]=1;  
                  weight[7]=1;  
                  weight[8]=1;  
                  weight[9]=1;  
                  weight[10] = 1; 
                  weight[11] = 1;
                  weight[12] = 1;
                
             $stop;
             
             end
 endmodule      