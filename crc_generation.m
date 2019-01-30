function y =generate(dataword,generator)    
    dataword=[1 0 1 0 0 0 1 1 0 1]
    generator=[1 1 0 1 0 1]
    lenDW = length(dataword);   
    x = [ones(1,lenDW)*0];    
    lenGW = length(generator);  
    z = [dataword ones(1,lenGW-1)*0];    
    i = 1;
    while ~isequal(z(1:lenDW),x)        
        if z(1,i) == 1
            z(1,i:i+lenGW-1) =  bitxor(z(1,i:i+lenGW-1),generator);
        end
        i = i+1;
    end
    y = [dataword z(1, lenDW+1:lenGW+lenDW-1)];     
 end 
    
