%% Test File

index1=1;
index2=2;

team(1).rating = 87;
team(2).rating = 60;

if team(index1).rating <= team(index2).rating
    tieProb = 26*((team(index1).rating/team(index2).rating)*2);
else
    tieProb = 26*((team(index2).rating/team(index1).rating)*2);
end

team1Prob = ((team(index1).rating/(team(index1).rating+team(index2).rating))*(100-tieProb))/100;
team2Prob = ((team(index2).rating/(team(index1).rating+team(index2).rating))*(100-tieProb))/100;

team1Win = false;
team2Win = false;
tie = false;

team1Percent = round(team1Prob*100);
team2Percent = round(team2Prob*100);
tiePercent = round(tieProb*100);

while team1Percent+team2Percent+tiePercent ~= 100
    tiePercent = tiePercent-1;
end

probArray = zeros(1,100);
for i=1:100
    probArray(i) = i;
end

team1NumMax = team1Percent;
team2NumMax = team1NumMax+team2Percent;
tieNumMax = team2NumMax+tiePercent; % should be 100

result = randi(100);

if result <= team1NumMax
    disp('Team 1 wins')
elseif result <= team2NumMax
    disp('Team 2 wins')
elseif result <= tieNumMax
    disp('The match resulted in a tie')
end
    