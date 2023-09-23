local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("fennel", {
	s({
		trig = "(l",
		dscr = "expand (l into (λ )",
	}, fmt("(λ <funcname> [<params>] <body>)", { funcname = i(1), params = i(2), body = i(3) }, { delimiters = "<>" })),
	s({
		trig = "(",
		dscr = "expand ( into ()",
	}, fmt("(<>)", { i(1) }, { delimiters = "<>" })),
	s(
		{ trig = "(if", dscr = "expand (if into (if () )" },
		fmt("(if (<cond>) <iff> <els>)", { cond = i(1), iff = i(2), els = i(3) }, { delimiters = "<>" })
	),
})