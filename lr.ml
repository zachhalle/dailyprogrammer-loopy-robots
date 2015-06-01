open Core.Std

type dir = N | E | S | W

let left d = match d with | N -> W | W -> S | S -> E | E -> N
let right d = match d with | N -> E | E -> S | S -> W | W -> N

let step ((x, y), d) c = match c, d with
  | 'S', N -> ((x, y+1), d) | 'S', S -> ((x, y-1), d)
  | 'S', E -> ((x+1, y), d) | 'S', W -> ((x-1, y), d)
  | 'L', _ -> ((x,y), left d) | 'R', _ -> ((x,y), right d)
  | _      -> failwith "Invalid input"

let go s = match String.fold s ~init:((0,0), N) ~f:step with
  | a, b, N, when (a,b) <> (0,0) -> "No cycle."
  | _ -> "Cycle detected."

let _ = read_line () |> go |> print_endline
