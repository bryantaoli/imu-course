fidanswer=fopen('Data1_PureINS.bin');
FidResultRefer=fopen('Data1_PureINS.txt','wt');
while(~feof(fidanswer))
     answer=fread(fidanswer, 10, 'double');
    if(answer(1,1)<91620)
    else if(answer(1,1))
        fprintf(FidResultRefer,'%20.10g\t',answer');
        fprintf(FidResultRefer,'\n');
        else
         fprintf(FidResultRefer,'%g\t',answer');
        end
    end   
end