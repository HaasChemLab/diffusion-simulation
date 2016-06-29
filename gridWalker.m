function matGrid = gridWalker
% make a matrix of some sort with at least two columns, to store x and y values
% also make a random number generator from 1 to 4 to signify left, right, up,
% and down. Store these values that are given in a variable and put them in the
% matrix.
upperRadius = 3;
circleHeight = pi * upperRadius;
upperBound = circleHeight / 2;
lowerBound = -circleHeight / 2;
lowerRadius = 5;
circleWidth = 2 * pi * lowerRadius;
leftBound = circleWidth / 2;
rightBound = -circleWidth / 2;
numSubStep = 10001;
matGrid = zeros(numSubStep,2);

for mover = 1:numSubStep
    position = randi(4);
    % 1 is right 2 is left 3 is up 4 is down.
    if position == 1
        % add one to 1st columns
        matGrid(mover + 1,1) = matGrid(mover,1) + 1;
        matGrid(mover+1, 2) = matGrid(mover, 2);
        if matGrid(mover +1,1) > leftBound
            % move it back to the right side
            matGrid(mover+1,1) = rightBound +1;
            matGrid(mover+1,2) = matGrid(mover+1,2);
        else
        end
    elseif position == 2
        % subtract one from 1st columns
        matGrid(mover + 1 ,1) = matGrid(mover,1) - 1;
        matGrid(mover+1, 2) = matGrid(mover, 2);
        if matGrid(mover +1,1) < rightBound
            % move it back to the left
            matGrid(mover+1,1) = leftBound -1;
            matGrid(mover+1,2) = matGrid(mover,2);
        else
        end
        
    elseif position == 3
        % add to second columns
        matGrid(mover + 1,2) = matGrid(mover,2) + 1;
        matGrid(mover+1, 1) = matGrid(mover, 1);
%         if matGrid(mover+1,2) > upperBound
%             matGrid(mover+1,2) = lowerBound + 1;
%             matGrid(mover+1,1) = matGrid(mover,1);
%         else
%         end
    else
        %subtract from second columns
        matGrid(mover + 1,2) = matGrid(mover,2) - 1;
        matGrid(mover+1, 1) = matGrid(mover, 1);
%         if matGrid(mover+1,2) < lowerBound
%             matGrid(mover+1,2) = upperBound - 1;
%             matGrid(mover+1,1) = matGrid(mover,1);
%         else
%         end
        
    end
end

simulationPlacer = uigetdir;
fileName = [simulationPlacer filesep 'GridWalker Sim ' datestr(now, 'yy-mm-dd HH-MM-SS')];
writer = fopen([fileName '.csv'], 'wt');
if writer == -1
    disp('File not Open Correctly');
else
end
fprintf(writer,'x,y\n');
fprintf(writer, '%d,%d,\n', matGrid');
closeresult = fclose(writer);
if closeresult == -1
    disp('File did not close correctly');
else
end
end
