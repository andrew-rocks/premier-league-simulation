function [newRatings,newPoints] = pointSort(ratings, points)
% Sorts a vector by using a bubble sort.
% Bubble sort - Examine in turn each element of the vector and its neighbor
% to the right. If they're in the wrong order, swap them. Continue going
% repeatedly through the vector in this way until the whole vector has been
% traversed once with no swaps.
%
% INPUTS
% v - the vector to be sorted
%
% OUTPUTS
% vout - the sorted vector

len=length(v);
run = true;
numSwitches = 0;
vout=v;

while run
    for i=1:len        
        if i==len
            v1=vout(i);
            v2=vout(i);
        else
            v1=vout(i);
            v2=vout(i+1);
        end
        if v1 > v2
            vout(i)=v2;
            vout(i+1)=v1;
            numSwitches=numSwitches+1;
        end
    end
    if numSwitches == 0
        run = false;
    end 
    numSwitches=0;
end


