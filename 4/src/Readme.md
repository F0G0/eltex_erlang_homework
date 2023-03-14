11> converter:rec_to_rub(#conv_info{type = usd, amount = 100, commission = 0.01}).  
{ok,7474.5}  
12> converter:rec_to_rub(#conv_info{type = peso, amount = 12, commission = 0.02}).  
{ok,35.28}  
13> converter:rec_to_rub(#conv_info{type = yene, amount = 30, commission = 0.02}).  
{error,badarg}  
14> converter:rec_to_rub(#conv_info{type = euro, amount = -15, commission = 0.02}).  
{error,badarg}  
15> converter: map_to_rub(#{type => usd, amount => 100, commission => 0.01}).  
{ok,7474.5}  
16> converter: map_to_rub(#{type => peso, amount => 12, commission => 0.02}).  
{ok,35.28}  
17> converter: map_to_rub(#{type => yene, amount => 30, commission => 0.02}).  
{error,badarg}  
18> converter: map_to_rub(#{type => euro, amount => -15, commission => 0.02}).  
{error,badarg}  
21> recursion:tail_fac(4).  
24  
22> recursion:tail_fac(0).  
1  
24> recursion:duplicate([1, 2, 3]).  
[1,1,2,2,3,3]  
25> recursion:tail_duplicate([1, 2, 3]).  
[1,1,2,2,3,3]  
26> recursion:duplicate([]).  
[]  
27> recursion:tail_duplicate([]).  
[]  
Не получается создать анонимную функцию без обертывания её в другую функцию
