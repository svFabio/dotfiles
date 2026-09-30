vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end
vim.o.background = "dark"
vim.g.colors_name = "brasa"

local c = {
  bg = "#0D0D0D",
  bg_soft = "#1A1A1A",
  bg_float = "#141414",
  fg = "#F5E6D3",
  fg_dim = "#a89f91",
  gray = "#444444",
  gray_dark = "#2a2a2a",
  red = "#E00000",
  red_dim = "#9B1111",
  ember = "#F3AE35",
}

local hl = vim.api.nvim_set_hl

hl(0, "Normal", { fg = c.fg, bg = "NONE" })
hl(0, "NormalFloat", { fg = c.fg, bg = c.bg_float })
hl(0, "FloatBorder", { fg = c.red, bg = c.bg_float })
hl(0, "CursorLine", { bg = c.bg_soft })
hl(0, "CursorLineNr", { fg = c.red, bold = true })
hl(0, "LineNr", { fg = c.gray })
hl(0, "Visual", { bg = c.gray_dark })
hl(0, "Search", { fg = c.bg, bg = c.red })
hl(0, "IncSearch", { fg = c.bg, bg = c.ember })
hl(0, "Pmenu", { fg = c.fg, bg = c.bg_soft })
hl(0, "PmenuSel", { fg = c.bg, bg = c.red })
hl(0, "VertSplit", { fg = c.gray_dark })
hl(0, "WinSeparator", { fg = c.gray_dark })
hl(0, "StatusLine", { fg = c.fg, bg = c.bg_soft })
hl(0, "SignColumn", { bg = "NONE" })

hl(0, "Comment", { fg = c.gray, italic = true })
hl(0, "Constant", { fg = c.ember })
hl(0, "String", { fg = c.fg_dim })
hl(0, "Identifier", { fg = c.fg })
hl(0, "Function", { fg = c.red, bold = true })
hl(0, "Statement", { fg = c.red })
hl(0, "Keyword", { fg = c.red, bold = true })
hl(0, "PreProc", { fg = c.ember })
hl(0, "Type", { fg = c.fg, bold = true })
hl(0, "Special", { fg = c.ember })
hl(0, "Error", { fg = c.bg, bg = c.red, bold = true })
hl(0, "Todo", { fg = c.bg, bg = c.ember, bold = true })

hl(0, "DiagnosticError", { fg = c.red })
hl(0, "DiagnosticWarn", { fg = c.ember })
hl(0, "DiagnosticInfo", { fg = c.fg_dim })
hl(0, "DiagnosticHint", { fg = c.gray })

hl(0, "GitSignsAdd", { fg = c.ember })
hl(0, "GitSignsChange", { fg = c.fg_dim })
hl(0, "GitSignsDelete", { fg = c.red })

-- Fix ligaduras PHP: unificar color de -> para que Kitty los fusione
hl(0, "phpMethodsVar", { fg = c.fg })
hl(0, "phpMemberSelector", { fg = c.fg })

-- Colores estándar para la barra de pestañas de Neovim
hl(0, "TabLineFill", { bg = c.bg_soft }) -- El fondo donde no hay pestañas
hl(0, "TabLine", { fg = c.gray, bg = c.bg_soft }) -- Pestañas inactivas
hl(0, "TabLineSel", { fg = c.fg, bg = c.bg, bold = true }) -- Pestaña activa

-- Colores específicos para Bufferline (el plugin de LazyVim)
hl(0, "BufferLineFill", { bg = c.bg_soft })
hl(0, "BufferLineBackground", { fg = c.gray, bg = c.bg_soft })
hl(0, "BufferLineSelected", { fg = c.fg, bg = c.bg, bold = true })
hl(0, "BufferLineSeparator", { fg = c.bg, bg = c.bg_soft })
hl(0, "BufferLineSeparatorSelected", { fg = c.bg, bg = c.bg })
