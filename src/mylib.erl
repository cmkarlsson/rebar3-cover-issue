-module(mylib).

-export([tst_ct/1, tst_eunit/1]).

tst_ct(1) -> ok;
tst_ct(2) -> not_ok;
tst_ct(_X) -> other.

tst_eunit(1) -> ok;
tst_eunit(2) -> not_ok;
tst_eunit(_X) -> other.

-ifdef(TEST).
-compile(export_all).
one_test() ->
    ok = tst_eunit(1).
-endif.

