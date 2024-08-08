require("luasnip.session.snippet_collection").clear_snippets "lua"

local ls = require "luasnip"

local s = ls.snippet
local i = ls.insert_node

local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("lua", {
    s("fn", fmt("function {}({})" .. "\n\t{}" .. "\nend{}", {i(1), i(2), i(3), i(4)})),
    s("lfn", fmt("local function {}({})" .. "\n\t{}" .. "\nend{}", {i(1), i(2), i(3), i(4)})),
})
