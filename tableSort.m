function [newNames,newRatings] = tableSort(teamNames,teamRatings)
% 


vlength = 20;
swaps = 1;

while swaps ~= 0
    swaps = 0;
    for i = 2:vlength
        if teamRatings(i) > teamRatings(i-1)
            x = teamRatings(i);
            teamRatings(i) = teamRatings(i-1);
            teamRatings(i-1) = x;
            y = teamNames{i};
            teamNames{i} = teamNames{i-1};
            teamNames{i-1} = y;
            swaps = swaps + 1;
        end
    end
end

newRatings = teamRatings;
newNames = teamNames;
