function value = evaluateTable(arrayPoints)
% Evaluates the table by comparing it to the actual table and giving it a
% vlaue based on how closely it resembles this actual table
%
% INPUTS
% arrayPoints - vector containing the points of every team (size 20)
%
% OUTPUTS
% value - numerical value evaluating the table, lower the score, the closer
% it resembles the actual table
 
arrayActual(1) = 63;
arrayActual(2) = 44;
arrayActual(3) = 40;
arrayActual(4) = 54;
arrayActual(5) = 70;
arrayActual(6) = 44;
arrayActual(7) = 49;
arrayActual(8) = 37;
arrayActual(9) = 47;
arrayActual(10) = 75;
arrayActual(11) = 100;
arrayActual(12) = 81;
arrayActual(13) = 44;
arrayActual(14) = 36;
arrayActual(15) = 33;
arrayActual(16) = 33;
arrayActual(17) = 77;
arrayActual(18) = 41;
arrayActual(19) = 31;
arrayActual(20) = 42;
 
sum = 0;
 
for i = 1:20
    sum = sum + (arrayPoints(i)-arrayActual(i))^2;
end
value = sqrt(sum/20);

