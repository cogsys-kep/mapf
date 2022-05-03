%% %% %% RIGHT ( 1,  0)
%% %% %% LEFT  (-1,  0)
%% %% %% UP    ( 0, -1)
%% %% %% DOWN  ( 0,  1)



%% Time Step 01
occurs(object(robot, 2), action(move, (0,1)), 1).


%% Time Step 02
occurs(object(robot, 1), action(move, (1,0)), 2).
occurs(object(robot, 2), action(move, (0,1)), 2).


%% Time Step 03
occurs(object(robot, 1), action(move, (1,0)), 3).
occurs(object(robot, 2), action(move, (-1,0)), 3).


%% Time Step 04
occurs(object(robot, 1), action(pickup, ()), 4).
occurs(object(robot, 2), action(pickup, ()), 4).


%% Time Step 05
occurs(object(robot, 1), action(move, (-1,0)), 5).
occurs(object(robot, 2), action(move, (1,0)), 5).


%% Time Step 06
occurs(object(robot, 1), action(move, (-1,0)), 6).
occurs(object(robot, 2), action(move, (0,-1)), 6).


%% Time Step 07
occurs(object(robot, 2), action(move, (0,-1)), 7).


%% Time Step 08
occurs(object(robot, 1), action(putdown, ()), 8).
occurs(object(robot, 2), action(putdown, ()), 8).
