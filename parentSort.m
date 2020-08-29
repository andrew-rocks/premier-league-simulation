function [stdValsNew,parentsNew] = parentSort(stdVals,parents)
% 


vlength = length(stdVals);
swaps = 1;

while swaps ~= 0
    swaps = 0;
    for i = 2:vlength
        if stdVals(i) < stdVals(i-1)
            x = stdVals(i);
            stdVals(i) = stdVals(i-1);
            stdVals(i-1) = x;
            y = parents(i,:);
            parents(i,:) = parents(i-1,:);
            parents(i-1,:) = y;
            swaps = swaps + 1;
        end
    end
end

stdValsNew = stdVals;
parentsNew = parents;
