-module(converter).
-author("fogo").
-export([rec_to_rub/1, map_to_rub/1]).
-record(conv_info, {type, amount, commission}).

rec_to_rub(#conv_info{type = usd, amount = Amount, commission = Commission}) when is_integer(Amount), Amount > 0 ->
  {ok, Amount * 75.5 * (1 - Commission)};
rec_to_rub(#conv_info{type = euro, amount = Amount, commission = Commission}) when is_integer(Amount), Amount > 0 ->
  {ok, Amount * 80 * (1 - Commission)};
rec_to_rub(#conv_info{type = lari, amount = Amount, commission = Commission}) when is_integer(Amount), Amount > 0 ->
  {ok, Amount * 29 * (1 - Commission)};
rec_to_rub(#conv_info{type = peso, amount = Amount, commission = Commission}) when is_integer(Amount), Amount > 0 ->
  {ok, Amount * 3 * (1 - Commission)};
rec_to_rub(#conv_info{type = krone, amount = Amount, commission = Commission}) when is_integer(Amount), Amount > 0 ->
  {ok, Amount * 10 * (1 - Commission)};
rec_to_rub(#conv_info{type = _, amount = _, commission = _}) ->
  {error, badarg}.

map_to_rub(#{type := usd, amount := Amount, commission := Commission}) when is_integer(Amount), Amount > 0 ->
  {ok, Amount * 75.5 * (1 - Commission)};
map_to_rub(#{type := euro, amount := Amount, commission := Commission}) when is_integer(Amount), Amount > 0 ->
  {ok, Amount * 80 * (1 - Commission)};
map_to_rub(#{type := lari, amount := Amount, commission := Commission}) when is_integer(Amount), Amount > 0 ->
  {ok, Amount * 29 * (1 - Commission)};
map_to_rub(#{type := peso, amount := Amount, commission := Commission}) when is_integer(Amount), Amount > 0 ->
  {ok, Amount * 3 * (1 - Commission)};
map_to_rub(#{type := krone, amount := Amount, commission := Commission}) when is_integer(Amount), Amount > 0 ->
  {ok, Amount * 10 * (1 - Commission)};
map_to_rub(#{type := _, amount := _, commission := _}) ->
  {error, badarg}.


