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

#use "src/review.ml";;
let domain_review = { signal = 53; slack = 44; drag = 22; confidence = 54 };;
expect (review_score domain_review = 138);;
expect (review_lane domain_review = "watch");;
