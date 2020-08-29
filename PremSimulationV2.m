function [teamNames,teamPoints, value] = PremSimulationV2(c)
% PremSimulationV2
% Simulate the Premier League
% key for team numbers
% 1 = arsenal
% 2 = bournemouth
% 3 = brighton
% 4 = burnley
% 5 = chelsea
% 6 = palace
% 7 = everton
% 8 = huddersfield
% 9 = leicester
% 10 = liverpool
% 11 = mancity
% 12 = manutd
% 13 = newcastle
% 14 = southampton
% 15 = stoke
% 16 = swansea
% 17 = tottenham
% 18 = watford
% 19 = westbrom
% 20 = westham


clear
clc

%% set team parameters
% Data for all teams will be stored in data structures
% Initialize the points of all teams to 0
for i=1:20
    team(i).points = 0;
end

team(1).name = 'Arsenal';
team(2).name = 'Bournemouth';
team(3).name = 'Brighton and Hove Albion';
team(4).name = 'Burnley';
team(5).name = 'Chelsea';
team(6).name = 'Crystal Palace';
team(7).name = 'Everton';
team(8).name = 'Huddersfield Town';
team(9).name = 'Leicester City';
team(10).name = 'Liverpool';
team(11).name = 'Manchester City';
team(12).name = 'Manchester United';
team(13).name = 'Newcastle United';
team(14).name = 'Southampton';
team(15).name = 'Stoke City';
team(16).name = 'Swansea City';
team(17).name = 'Tottenham Hotspurs';
team(18).name = 'Watford';
team(19).name = 'West Bromwich Albion';
team(20).name = 'West Ham United';

%% determining team ratings
% The offensive and defensive stat ratings will be calculated
% Shots calculation
stat(1).shots = 594;
stat(2).shots = 465;
stat(3).shots = 384;
stat(4).shots = 378;
stat(5).shots = 606;
stat(6).shots = 476;
stat(7).shots = 359;
stat(8).shots = 362;
stat(9).shots = 423;
stat(10).shots = 638;
stat(11).shots = 665;
stat(12).shots = 512;
stat(13).shots = 451;
stat(14).shots = 450;
stat(15).shots = 384;
stat(16).shots = 338;
stat(17).shots = 623;
stat(18).shots = 440;
stat(19).shots = 378;
stat(20).shots = 372;

% for loop to calculate shot rating
for in = 1:20
    team(in).shots = ((stat(in).shots - stat(16).shots) ./ (stat(11).shots - stat(16).shots)) .* 100;
end

%pass calculation
stat(1).pass = 23524;
stat(2).pass = 16131;
stat(3).pass = 14675;
stat(4).pass = 13572;
stat(5).pass = 21264;
stat(6).pass = 14372;
stat(7).pass = 14749;
stat(8).pass = 14960;
stat(9).pass = 15200;
stat(10).pass = 22962;
stat(11).pass = 28241;
stat(12).pass = 20064;
stat(13).pass = 14028;
stat(14).pass = 17174;
stat(15).pass = 12892;
stat(16).pass = 15721;
stat(17).pass = 21660;
stat(18).pass = 15654;
stat(19).pass = 13218;
stat(20).pass = 14369;

% for loop to calculate pass rating
for in = 1:20
    team(in).pass = ((stat(in).pass - stat(15).pass) ./ (stat(11).pass - stat(15).pass)) .* 100;
end

%cross calculation
stat(1).cross = 572;
stat(2).cross = 707;
stat(3).cross = 680;
stat(4).cross = 707;
stat(5).cross = 755;
stat(6).cross = 703;
stat(7).cross = 629;
stat(8).cross = 765;
stat(9).cross = 744;
stat(10).cross = 764;
stat(11).cross = 691;
stat(12).cross = 753;
stat(13).cross = 616;
stat(14).cross = 800;
stat(15).cross = 598;
stat(16).cross = 694;
stat(17).cross = 825;
stat(18).cross = 713;
stat(19).cross = 784;
stat(20).cross = 732;

% for loop to calculate crosses rating
for in = 1:20
    team(in).cross = ((stat(in).cross - stat(1).cross) ./ (stat(17).cross - stat(1).cross)) .* 100;
end


%shots on target calculation
stat(1).sotp = 39.39;
stat(2).sotp = 33.98;
stat(3).sotp = 30.99;
stat(4).sotp = 33.86;
stat(5).sotp = 36.30;
stat(6).sotp = 31.72;
stat(7).sotp = 33.70;
stat(8).sotp = 30.11;
stat(9).sotp = 35.22;
stat(10).sotp = 36.52;
stat(11).sotp = 39.85;
stat(12).sotp = 34.77;
stat(13).sotp = 33.04;
stat(14).sotp = 32.22;
stat(15).sotp = 34.38;
stat(16).sotp = 30.47;
stat(17).sotp = 34.67;
stat(18).sotp = 30.00;
stat(19).sotp = 30.16;
stat(20).sotp = 35.75;

% for loop to calculate shots on target rating
for in = 1:20
    team(in).sotp = ((stat(in).sotp - stat(18).sotp) ./ (stat(11).sotp - stat(18).sotp)) .* 100;
end

%blocks calculation
stat(1).block = 104;
stat(2).block = 160;
stat(3).block = 190;
stat(4).block = 191;
stat(5).block = 107;
stat(6).block = 117;
stat(7).block = 160;
stat(8).block = 118;
stat(9).block = 130;
stat(10).block = 71;
stat(11).block = 53;
stat(12).block = 112;
stat(13).block = 117;
stat(14).block = 128;
stat(15).block = 142;
stat(16).block = 124;
stat(17).block = 74;
stat(18).block = 98;
stat(19).block = 148;
stat(20).block = 154;

% for loop to calculate blocks rating
for in = 1:20
    team(in).block = ((stat(in).block - stat(11).block) ./ (stat(4).block - stat(11).block)) .* 100;
end

%interceptions calculation
stat(1).int = 427;
stat(2).int = 367;
stat(3).int = 449;
stat(4).int = 401;
stat(5).int = 423;
stat(6).int = 552;
stat(7).int = 514;
stat(8).int = 519;
stat(9).int = 413;
stat(10).int = 379;
stat(11).int = 346;
stat(12).int = 481;
stat(13).int = 441;
stat(14).int = 462;
stat(15).int = 461;
stat(16).int = 390;
stat(17).int = 380;
stat(18).int = 467;
stat(19).int = 469;
stat(20).int = 482;

% for loop to calculate interceptions rating
for in = 1:20
    team(in).int = ((stat(in).int - stat(11).int) ./ (stat(6).int - stat(11).int)) .* 100;
end

%save percentage calculation
stat(1).save = 66.23;
stat(2).save = 64.53;
stat(3).save = 69.66;
stat(4).save = 75.78;
stat(5).save = 68.60;
stat(6).save = 68.93;
stat(7).save = 67.60;
stat(8).save = 63.98;
stat(9).save = 64.07;
stat(10).save = 63.81;
stat(11).save = 69.66;
stat(12).save = 80.82;
stat(13).save = 69.08;
stat(14).save = 66.27;
stat(15).save = 69.09;
stat(16).save = 70.98;
stat(17).save = 72.09;
stat(18).save = 59.75;
stat(19).save = 64.56;
stat(20).save = 64.21;

% for loop to calculate save percentage rating
for in = 1:20
    team(in).save = ((stat(in).save - stat(18).save) ./ (stat(12).save - stat(18).save)) .* 100;
end

%shots surrendered calculation
stat(1).ss = 151;
stat(2).ss = 172;
stat(3).ss = 178;
stat(4).ss = 161;
stat(5).ss = 121;
stat(6).ss = 177;
stat(7).ss = 179;
stat(8).ss = 161;
stat(9).ss = 167;
stat(10).ss = 105;
stat(11).ss = 89;
stat(12).ss = 146;
stat(13).ss = 152;
stat(14).ss = 166;
stat(15).ss = 220;
stat(16).ss = 193;
stat(17).ss = 129;
stat(18).ss = 159;
stat(19).ss = 158;
stat(20).ss = 190;

% for loop to calculate shots surrendered rating
for in = 1:20
    team(in).ss = ((stat(in).ss - stat(11).ss) ./ (stat(15).ss - stat(11).ss)) .* 100;
    team(in).ss = 100 - team(in).ss;
end

% Initialize Coefficients (all have even weights at the beginning before
% Genetic Algorithm is used)
c = [0.125,0.125,0.125,0.125,0.125,0.125,0.125,0.125];

% Initialize Ratings
for i=1:20
    team(i).rating = (c(1))*(team(i).shots) + (c(2))*(team(i).pass) + (c(3))*(team(i).cross)...
        + (c(4))*(team(i).sotp) + (c(5))*(team(i).block) + (c(6))*(team(i).int)...
        + (c(7))*(team(i).save) + (c(8))*(team(i).ss);
end

%% Season
% Assigns the points to each team
for home = 1:20
    for away = 1:20
        if home ~= away
            rng shuffle
            number = randi(100);
            [a,b] = playGame(team(home).rating,team(away).rating,number);
            team(home).points = team(home).points + a;
            team(away).points = team(away).points + b;
        end
    end
end

% Organize table by point total
% Create Cell Array holding names Array and points
for i=1:20
    teamNames{i} = team(i).name;
    teamPoints(i) = team(i).points;
end

% Run function that sorts the teams by points value
[sortedNames,sortedPoints] = tableSort(teamNames,teamPoints);


% Display Season Results
for i = 1:20
    disp([sortedNames{i},': ',num2str(sortedPoints(i))]);
end











