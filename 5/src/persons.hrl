-author("fogo").
-record(person, {id, name, age, gender}).
-define(MALE, male).
-define(FEMALE, female).

-define(PERSONS, [
  #person{id = 1, name = "Bob", age = 23, gender = male},
  #person{id = 2, name = "Kate", age = 20, gender = female},
  #person{id = 3, name = "Jack", age = 34, gender = male},
  #person{id = 4, name = "Nata", age = 54, gender = female}
]).