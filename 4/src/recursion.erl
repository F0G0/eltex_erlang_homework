-module(recursion).
-author("fogo").

-export([tail_fac/1, duplicate/1, tail_duplicate/1]).

tail_fac(N) -> tail_fac(N,1).
tail_fac(0,Acc) -> Acc;
tail_fac(N,Acc) when N > 0 -> tail_fac(N-1,N*Acc).

duplicate([Head|Tail]) -> [Head, Head | duplicate(Tail)];
duplicate([]) -> [].

tail_duplicate(L) -> tail_duplicate(L, []).
tail_duplicate([H | T], Acc) -> tail_duplicate(T, Acc++ [H, H]);
tail_duplicate([], Acc) -> Acc.
