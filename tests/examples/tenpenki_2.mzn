% RUNS ON mzn20_fd
% RUNS ON mzn-fzn_fd
% RUNS ON mzn20_fd_linear
% RUNS ON mzn20_mip
include "tenpenki.mzn.model";

nrows = 6;
ncols = 14;

constraint row_constraint(1, [2, 2, 3]);
constraint row_constraint(2, [1, 1, 1, 1, 1, 1]);
constraint row_constraint(3, [1, 1, 1, 1]);
constraint row_constraint(4, [1, 1, 3]);
constraint row_constraint(5, [1, 1, 1, 1, 1]);
constraint row_constraint(6, [2, 2, 1]);

constraint col_constraint( 1, [4]);
constraint col_constraint( 2, [1, 1]);
constraint col_constraint( 3, [1, 1]);
constraint col_constraint( 4, [1, 1]);
constraint col_constraint( 5, []);
constraint col_constraint( 6, [1, 1]);
constraint col_constraint( 7, [1, 1, 1]);
constraint col_constraint( 8, [1, 1, 1]);
constraint col_constraint( 9, [1, 1]);
constraint col_constraint(10, []);
constraint col_constraint(11, [6]);
constraint col_constraint(12, [1, 1]);
constraint col_constraint(13, [1, 1]);
constraint col_constraint(14, [2]);

% Solution:
%
%   . # # . . . # # . . # # # . 
%   # . . # . # . . # . # . . # 
%   # . . . . . # . . . # . . # 
%   # . . . . . . # . . # # # . 
%   # . . # . # . . # . # . . . 
%   . # # . . . # # . . # . . . 
