-module(demo).
-export ([tail_factorial/1, tail_factorial/2, factorial/1]).

factorial(0) -> 1;
factorial(N) -> N * factorial(N-1).

tail_factorial(N) -> tail_factorial(N, 1).

tail_factorial(0, Acc) -> Acc;
tail_factorial(N, Acc) -> tail_factorial(N-1, N*Acc).
