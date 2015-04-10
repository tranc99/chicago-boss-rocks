-module(cb_tutorial_greeting_controller, [Req]).
-compile(export_all).

hello('GET', []) ->
	{output, "Hello, world"}.

aerospace('GET', []) ->
	{json, [{name, "Ten"}]}.

study('GET', []) ->
	{ok, [{greeting, "Hello World"}]}.


list('GET', []) ->
	Greetings = boss_db:find(greeting, []),
	{ok, [{greetings, Greetings}]}.