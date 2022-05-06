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
    
%%%% INSTANCE ------------------------------------------------------------------------- 
    grid(1..3,1..3).
    object(robot,1,1,1). %type,ID,X,Y
    object(robot,2,2,1). %type,ID,X,Y
    object(shelf,1,3,1). %type,ID,X,Y
    object(shelf,2,1,3). %type,ID,X,Y
    
%%%% ALL LEGAL MOVES ---------------------------------------------------------------
    legal_move(X1,Y1,X2,Y2) :- grid(X1,Y1), grid(X2,Y2), move(A,B), X2=A+X1, Y2=B+Y1.
