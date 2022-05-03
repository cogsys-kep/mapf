###### Course: PM3 - Intelligent Logistics Technology

# Multi-agent path finding

## Two Robots
`2022-05-03`

### Context

The preliminary assignment is to create an environment containing multiple robots which operate along a legal path determined by clingo.  A legal path is one that does not violate any multi-agent path finding (MAPF) constraints, such as:
* edge conflicts
* vertex conflicts
* following conflicts
* cycling conflicts
* swapping conflicts

The approach and solution to this assignment must be presented before the class on `2022-05-09`.

### Attempt

The attempt is comprised of three elements:
1. **An instance** `instance.lp` which determines how the grid is arranged
2. **A sample solution** `solution.lp` which offers an example of a potential solution
3. **An encoding** `encoding.lp` which generates an optimal solution using clingo

In this first attempt, a small three-by-three grid has been initiated with two robots and two shelves.  Robot #1 must retrieve Shelf #1, whereas Robot #2 must retrieve Shelf #2.  Each must pick up its shelf and bring it back to the original starting point of the robot while being mindful of MAPF conflicts. 
