#use "core.ml";;

let expect condition = if not condition then failwith "fixture mismatch";;
let signal_case_1 = { demand = 57; capacity = 102; latency = 22; risk = 22; weight = 7 };;
expect (score signal_case_1 = 61);;
expect (classify signal_case_1 = "review");;
let signal_case_2 = { demand = 93; capacity = 104; latency = 13; risk = 8; weight = 4 };;
expect (score signal_case_2 = 218);;
expect (classify signal_case_2 = "accept");;
let signal_case_3 = { demand = 71; capacity = 98; latency = 15; risk = 7; weight = 11 };;
expect (score signal_case_3 = 185);;
expect (classify signal_case_3 = "accept");;

#use "review.ml";;
let domain_review = { signal = 43; slack = 40; drag = 32; confidence = 81 };;
expect (review_score domain_review = 111);;
expect (review_lane domain_review = "watch");;
