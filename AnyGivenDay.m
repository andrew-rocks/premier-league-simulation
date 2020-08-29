function [a,b] = AnyGivenDay(index1,index2)
% Takes the ratings of the two teams and outputs what their rating will be
% on the given game day
%
% INPUTS
% index1 - home team rating
% index2 - away team rating
%
% OUTPUTS
% a - home team's new rating
% b - away team's new rating
 
c1 = 85 + randi(15);
c2 = 85 + randi(15);
 
a = index1 * (c1/100);
b = index2 * (c2/100);
