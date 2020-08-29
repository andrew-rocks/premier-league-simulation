%% GeneticAlgorithm.m



clear
clc
  
%% initialize 1st generation parents matrix (100 parents)
parents = zeros(300,8);
for i=1:300
    a = [rand(1),rand(1),rand(1),rand(1),rand(1),rand(1),rand(1),rand(1)];
    b = sum(a);
    coeff = a./b;
    parents(i,:) = coeff;
end

stdVals1 = zeros(300,1);
for i=1:300  
    [names,points] = PremSimulation(parents(i,:));
    stdVals1(i) = evaluateTable(points);
end

%% 2nd Generation
% Choose best 9 parents for 2nd generation
[stdVals1Sorted,parentsSorted] = parentSort(stdVals1,parents);
parentsBest = parentsSorted(1:9,:);

% Mutation
a2 = [rand(1),rand(1),rand(1),rand(1),rand(1),rand(1),rand(1),rand(1)];
b2 = sum(a2);
coeff2 = a2./b2;
mutation = coeff2;
parentsBest(10,:) = mutation;

% Create 2nd generation (50 kids) from 9 Gen 1 parents and 1 mutation parent (random)
for i = 1:50
    x = randi(10);
    y = randi(10);
    while x == y % ensure parents aren't the same
        x = randi(10);
        y = randi(10);
    end
    for ic = 1:8 % take random values from each
        z = randi(2);
        if z == 1
            kids(i,ic) = parentsBest(x,ic);
        else
            kids(i,ic) = parentsBest(y,ic);
        end
    end
    a = kids(i,:);
    total = sum(a);
    norm = a./total;
    kids(i,:) = norm;
end

% Calculate standard deviation values for the 2nd generation
stdVals2 = zeros(50,1);
for i=1:50  
    [names,points] = PremSimulation(kids(i,:));
    stdVals2(i) = evaluateTable(points);
end

% Sort the std values
[stdVals2Sorted,kidsSorted] = parentSort(stdVals2,kids);



%% 3rd Generation
% Choose best 9 parents for 3rd generation
parentsBest2 = kidsSorted(1:9,:);

% Mutation
a3 = [rand(1),rand(1),rand(1),rand(1),rand(1),rand(1),rand(1),rand(1)];
b3 = sum(a3);
coeff3 = a3./b3;
mutation2 = coeff3;
parentsBest2(10,:) = mutation2;

% Create 3rd generation (50 kids) from 9 Gen 2 parents and 1 mutation parent (random)
for i = 1:50
    x = randi(10);
    y = randi(10);
    while x == y % ensure parents aren't the same
        x = randi(10);
        y = randi(10);
    end
    for ic = 1:8 % take random values from each
        z = randi(2);
        if z == 1
            kids2(i,ic) = parentsBest2(x,ic);
        else
            kids2(i,ic) = parentsBest2(y,ic);
        end
    end
    a = kids(i,:);
    total = sum(a);
    norm = a./total;
    kids(i,:) = norm;
end

% Calculate standard deviation values for the 3rd generation
stdVals3 = zeros(50,1);
for i=1:50  
    [names,points] = PremSimulation(kids2(i,:));
    stdVals3(i) = evaluateTable(points);
end

% Sort the std values
[stdVals3Sorted,kids2Sorted] = parentSort(stdVals3,kids2);


%% 4th Generation
% Choose best 9 parents for 4th generation
parentsBest3 = kids2Sorted(1:9,:);

% Mutation
a4 = [rand(1),rand(1),rand(1),rand(1),rand(1),rand(1),rand(1),rand(1)];
b4 = sum(a4);
coeff4 = a4./b4;
mutation3 = coeff4;
parentsBest3(10,:) = mutation3;

% Create 4th generation (50 kids) from 9 Gen 3 parents and 1 mutation parent (random)
for i = 1:50
    x = randi(10);
    y = randi(10);
    while x == y % ensure parents aren't the same
        x = randi(10);
        y = randi(10);
    end
    for ic = 1:8 % take random values from each
        z = randi(2);
        if z == 1
            kids3(i,ic) = parentsBest3(x,ic);
        else
            kids3(i,ic) = parentsBest3(y,ic);
        end
    end
    a = kids(i,:);
    total = sum(a);
    norm = a./total;
    kids(i,:) = norm;
end

% Calculate standard deviation values for the 4th generation
stdVals4 = zeros(50,1);
for i=1:50  
    [names,points] = PremSimulation(kids3(i,:));
    stdVals4(i) = evaluateTable(points);
end

% Sort the std values
[stdVals4Sorted,kids3Sorted] = parentSort(stdVals4,kids3);


%% 5th Generation
% Choose best 9 parents for 5th generation
parentsBest4 = kids3Sorted(1:9,:);

% Mutation
a5 = [rand(1),rand(1),rand(1),rand(1),rand(1),rand(1),rand(1),rand(1)];
b5 = sum(a5);
coeff5 = a5./b5;
mutation4 = coeff5;
parentsBest4(10,:) = mutation4;

% Create 5th generation (50 kids) from 9 Gen 4 parents and 1 mutation parent (random)
for i = 1:50
    x = randi(10);
    y = randi(10);
    while x == y % ensure parents aren't the same
        x = randi(10);
        y = randi(10);
    end
    for ic = 1:8 % take random values from each
        z = randi(2);
        if z == 1
            kids4(i,ic) = parentsBest4(x,ic);
        else
            kids4(i,ic) = parentsBest4(y,ic);
        end
    end
    a = kids(i,:);
    total = sum(a);
    norm = a./total;
    kids(i,:) = norm;
end

% Calculate standard deviation values for the 5th generation
stdVals5 = zeros(50,1);
for i=1:50  
    [names,points] = PremSimulation(kids4(i,:));
    stdVals5(i) = evaluateTable(points);
end

% Sort the std values
[stdVals5Sorted,kids4Sorted] = parentSort(stdVals5,kids4);

%% Pick best kid (lowest std value) to run final simulation
[finalNames,finalPoints] = PremSimulation(kids4Sorted(1,:));

% Sort the final simulation to display results
[finalNamesSorted,finalPointsSorted] = tableSort(finalNames,finalPoints);

% Display final results
disp('5 generations yields:')
disp(' ')
for i = 1:20
    disp([num2str(i),'. ',finalNamesSorted{i},': ',num2str(finalPointsSorted(i))]);
end




% % %% Display Final Results
% % % Organize table by point total
% % % Create Cell Array holding names Array and points
% % for i=1:20
% %     teamNames{i} = team(i).name;
% %     teamPoints(i) = team(i).points;
% % end
% % 
% % % Run function that sorts the teams by points value
% % [sortedNames,sortedPoints] = tableSort(teamNames,teamPoints);
% % 
% % 
% % % Display Season Results
% % for i = 1:20
% %     disp([sortedNames{i},': ',num2str(sortedPoints(i))]);
% % end