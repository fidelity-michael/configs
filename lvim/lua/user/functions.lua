-- TODO: Change from global to local and call it in which-key.lua
function Change_bg()
  if vim.opt.bg:get() == "dark" then
    -- lvim.transparent_window = false
    vim.opt.background = "light"
  else
    -- lvim.transparent_window = true
    vim.opt.background = "dark"
  end
end


function Change_theme()
  if lvim.colorscheme == "kanagawa" then
    lvim.colorscheme = "kanagawa-dragon"
  else
    lvim.colorscheme = "kanagawa"
  end
end
