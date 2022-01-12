-- colorscheme
vim.cmd [[
try
  colorscheme darkplus
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]

-- undercurl
vim.cmd [[
hi SpellBad guifg=undercurl cterm=undercurl
let &t_Cs = "\e[4:3m"
let &t_Ce = "\e[4:0m"
]]

-- Lsp Colors
vim.cmd [[
hi DiagnosticError guifg=#db4b4b
hi DiagnosticWarn  guifg=#e0af68
hi DiagnosticInfo  guifg=#0db9d7
hi DiagnosticHint  guifg=#10B981
]]
