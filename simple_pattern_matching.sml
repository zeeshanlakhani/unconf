datatype sometype = Pair of int * int
                  | Str of string
                  | Float of real
                  | Int of int
                  | Uncool

fun f x =
    case x of
        Pair (i1,i2) => i1 + i2
      | Float foo => 99
      | Str s => 8
      | Int i1 => i1
      | _ => ~1
