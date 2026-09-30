local function set_transparency()
  vim.cmd([[
    hi Normal guibg=NONE ctermbg=NONE
    hi NormalNC guibg=NONE ctermbg=NONE
    hi SignColumn guibg=NONE ctermbg=NONE
    hi StatusLine guibg=NONE ctermbg=NONE
    hi StatusLineNC guibg=NONE ctermbg=NONE
    hi VertSplit guibg=NONE ctermbg=NONE
    hi SnacksNormal guibg=NONE ctermbg=NONE
    hi SnacksNormalNC guibg=NONE ctermbg=NONE
    hi SnacksWinBar guibg=NONE ctermbg=NONE
    hi SnacksPicker guibg=NONE ctermbg=NONE
    hi SnacksPickerNormal guibg=NONE ctermbg=NONE
    hi SnacksPickerBorder guibg=NONE ctermbg=NONE
    hi SnacksPickerList guibg=NONE ctermbg=NONE
    hi SnacksPickerListTitle guibg=NONE ctermbg=NONE
    hi SnacksPickerBox guibg=NONE ctermbg=NONE
  ]])
end

vim.api.nvim_create_autocmd({ "ColorScheme", "VimEnter" }, {
  callback = set_transparency,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "snacks_picker_list", "snacks_picker_input", "snacks_layout_box" },
  callback = function()
    vim.defer_fn(set_transparency, 10)
  end,
})

set_transparency()
