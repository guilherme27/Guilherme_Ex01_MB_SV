module Contador_T1(input logic clock, reset, output logic[3:0] saida);
  	logic fio;
  
  	always @(posedge clock or posedge reset)
    	if(reset) begin
      		saida = 4'd0;
      		fio = 1'b0;
    	end
  		else begin
    		if(fio)
      			saida = saida - 4'd1;
    		else
      			saida = saida + 4'd1;
          
    		if(saida == 4'd15 || saida == 4'd0)
      			fio = ~fio;
  		end
endmodule