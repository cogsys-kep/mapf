%%clingo 0 -

% Find paths for the robots

% Five constraints:
    % 1. Two robots cannot occupy the same vertex at the same time step
    % 2. Two robots cannot occupy the same edge at the same time step
    % 3. ∴ As a result, no swapping
    % 4. One robot cannot occupy a vertex one time step after another robot occupied this vertex
    % 5. ∴ As a result, no cycles

% Additional rules:
    % 1. Only move one vertex per time step
    % 2. Time step is spent on actions (picking up, putting down)
    
%%%% HELPERS -------------------------------------------------------------------------- 
    move(0,0). move(0,1). move(1,0). move(0,-1). move(-1,0).
    
%%%% INSTANCE -------------------------------------------------------------------------- 
    grid(3,3).
    robot(1,1,1). %ID,X,Y
    robot(2,2,1). %ID,X,Y
    shelf(1,3,1). %ID,X,Y
    shelf(2,1,3). %ID,X,Y
