%% test.m
% Simulates a game between two teams
%
% INPUTS
% index1 - index of first team to play in game
% index2 - index of second team to play in game
 
index1 = 60;
index2 = 40;
number = randi(100);

if index1 <= index2
    tieProb = 52*(index1/index2);
else
    tieProb = 52*(index2/index1);
end
 
team1Prob = (index1/(index1+index2))*(100-tieProb);
team2Prob = (index2/(index1+index2))*(100-tieProb);
 
if number <= team1Prob 
    a = 3;
    b = 0;
elseif number > team1Prob && number <= team1Prob+team2Prob
    b = 3;
    a = 0;
else
    a = 1;
    b = 1;
end

