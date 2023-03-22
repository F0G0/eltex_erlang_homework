-module(persons).
-author("fogo").
-include("persons.hrl").
-export([filter/2, all/2, any/2, update/2, get_average_age/1]).

filter(Fun, Persons) ->
  lists:filter(Fun, Persons).
all(Fun, Persons) ->
  lists:all(Fun, Persons).
any(Fun, Persons) ->
  lists:any(Fun, Persons).
update(Fun, Persons) ->
  lists:map(Fun, Persons).
get_average_age(Persons) when is_list(Persons) ->
  get_average_age(Persons, {0, 0}).
get_average_age([H | T], {AgeSum, PersonsCount}) ->
  get_average_age(T, {AgeSum + H#person.age, PersonsCount + 1});
get_average_age([], {AgeSum, PersonsCount}) when PersonsCount > 0 ->
  AgeSum/PersonsCount;
get_average_age([], _) ->
  undefined.