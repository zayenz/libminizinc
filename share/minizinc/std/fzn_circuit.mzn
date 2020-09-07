include "all_different.mzn";
include "arg_max.mzn";

predicate fzn_circuit(array[int] of var int: x) = 
    let { set of int: S = index_set(x),
          int: l = min(S),
	  int: n = card(S),
	  array[S] of var 1..n: order,
	  var 1..n: max_pos = arg_max(order)
        } in
    all_different(x) /\	
    all_different(order) /\
    forall(i in S)(x[i] != i) /\ 
    order[l] = 1 /\
    forall(i in S)(i != max_pos -> order[x[i]] = order[i] + 1) /\
    x[max_pos] = l;

%-----------------------------------------------------------------------------%
