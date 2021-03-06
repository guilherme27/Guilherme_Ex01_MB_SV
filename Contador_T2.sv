module Contador_T2(input logic clock, reset, output logic[3:0] saida);
  	logic fio;
  
  	always @(posedge clock or posedge reset)
    	if(reset) begin
      		saida = 4'd0;
      		fio = 1'b0;
    	end
  		else begin
    		if(fio)
				if (saida == 4'd0)
					fio <= 1'b0;
				else
					saida = saida - 4'd1;
    		else
				if (saida == 4'd15)
					fio <= 1'b1;
				else
					saida = saida + 4'd1;
          
    		
  		end
endmodule