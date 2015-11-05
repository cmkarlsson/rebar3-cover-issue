-module(mylib_SUITE).

-export([init_per_suite/1, end_per_suite/1,
         init_per_testcase/2, end_per_testcase/2, all/0]).

-export([one/1]).

all() ->
    [one].

init_per_suite(Config) ->
    Config.

end_per_suite(_) -> ok.

init_per_testcase(_, Config) ->
    Config.

end_per_testcase(_, _) -> ok.

one(_Config) ->
    mylib:tst_ct(1).
