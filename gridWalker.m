% make a matrix of some sort with at least two columns, to store x and y values% also make a random number generator from 1 to 4 to signify left, right, up,% and down. Store these values that are given in a variable and put them in the% matrix.matGrid = zeros(10,2);  for mover = 1:10    position = randi(4);    % 1 is right 2 is left 3 is up 4 is down.      if position == 1      % add one to 1st columns      matGrid(mover + 1,1) = matGrid(mover,1) + 1;      matGrid(mover+1, 2) = matGrid(mover, 2);      elseif position == 2      % subtract one from 1st columns       matGrid(mover + 1 ,1) = matGrid(mover,1) - 1;       matGrid(mover+1, 2) = matGrid(mover, 2);      elseif position == 3      % add to second columns       matGrid(mover + 1,2) = matGrid(mover,2) + 1;       matGrid(mover+1, 1) = matGrid(mover, 1);      else      %subtract from second columns       matGrid(mover + 1,2) = matGrid(mover,2) - 1;       matGrid(mover+1, 1) = matGrid(mover, 1);      end  end    %% checking that saves go to the correct branch