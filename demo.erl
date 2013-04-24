-module(demo).
-export ([tail_factorial/1, tail_factorial/2]).

tail_factorial(N) -> tail_factorial(N, 1).

tail_factorial(0, Acc) -> Acc;
tail_factorial(N, Acc) -> tail_factorial(N-1, N*Acc).
