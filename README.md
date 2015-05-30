# dailyprogrammer-loopy-robots
A solution to [this](http://www.reddit.com/r/dailyprogrammer/comments/32vlg8/20150417_challenge_210_hard_loopy_robots/) challenge from r/dailyprogrammer in OCaml:

The program accepts a string containing 'L's, 'R's, and 'S's, which correspond to the instructions "turn left", "turn right", and "step" respectively. A robot initially standing at (0, 0) in the Cartesian plane facing North reads the string and executes the instructions in order, and then loops back to the beginning, for eternity. The task is to determine for the given string whether the robot ever returns the starting position.

The code can be built with the command

    corebuild lr.native
