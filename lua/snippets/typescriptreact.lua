require('luasnip.session.snippet_collection').clear_snippets 'typescriptreact'

local ls = require 'luasnip'
local snippet = ls.snippet
local text_node = ls.text_node
local fmt = require('luasnip.extras.fmt').fmt
local insert_node = ls.insert_node
local function_node = ls.function_node
local luasnip_rep = require('luasnip.extras').rep

return {
  snippet('arf', {
    text_node 'const ',
    insert_node(1),
    text_node '= (',
    insert_node(2),
    text_node { ') => {', '\t' },
    insert_node(0),
    text_node { '\t', '}' },
  }),
  snippet('arr', {
    text_node '(',
    insert_node(1),
    text_node { ') => {', '\t' },
    insert_node(0),
    text_node { '\t', '}' },
  }),
}
