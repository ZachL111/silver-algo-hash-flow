#use "src/core.ml";;

let expect condition = if not condition then failwith "fixture mismatch";;
let signal_case_1 = { demand = 78; capacity = 106; latency = 16; risk = 24; weight = 7 };;
expect (score signal_case_1 = 114);;
expect (classify signal_case_1 = "review");;
let signal_case_2 = { demand = 64; capacity = 92; latency = 19; risk = 5; weight = 9 };;
expect (score signal_case_2 = 188);;
expect (classify signal_case_2 = "accept");;
let signal_case_3 = { demand = 92; capacity = 71; latency = 15; risk = 8; weight = 10 };;
expect (score signal_case_3 = 217);;
expect (classify signal_case_3 = "accept");;
