2> c("src/converter.erl").  
{ok,converter}  
3> converter:to_rub({usd, 100}).  
Convert usd to rub, amount 100  
{ok,7550.0}  
4> converter:to_rub({peso, 12}).  
Convert peso to rub, amount 12  
{ok,36}  
5> converter:to_rub({yene, 30}).  
Unkown currency yene  
ok  
6> converter:to_rub({euro, -15}).  
Negative currency euro  
ok  

2> c("src/converter.erl").  
{ok,converter}  
3> converter:to_rub2({usd, 100}).  
Convert usd to rub, amount 100  
Converted usd to rub, amount 100, Result {ok,7550.0}  
{ok,7550.0}  
4> converter:to_rub3({usd, 100}).  
Convert usd to rub, amount 100  
{ok,7550.0}  
5> converter:to_rub2({peso, 12}).  
Convert peso to rub, amount 12  
Converted peso to rub, amount 12, Result {ok,36}  
{ok,36}  
6> converter:to_rub3({peso, 12}).  
Convert peso to rub, amount 12  
{ok,36}  
7> converter:to_rub2({yene, 30}).  
Can't convert to rub, error {yene,30}  
Converted yene to rub, amount 30, Result {error,badarg}  
{error,badarg}  
8> converter:to_rub3({yene, 30}).  
Can't convert to rub, error {yene,30}  
{error,badarg}  
9> converter:to_rub2({euro, -15}).  
Can't convert to rub, error {euro,-15}  
Converted euro to rub, amount -15, Result {error,badarg}  
{error,badarg}  
10> converter:to_rub3({euro, -15}).  
Can't convert to rub, error {euro,-15}  
{error,badarg}  

