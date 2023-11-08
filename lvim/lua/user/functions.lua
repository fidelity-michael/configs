-- TODO: Change from global to local and call it in which-key.lua
function Change_theme()
  if vim.opt.bg:get() == "dark" then
    vim.opt.background = "light"
  else
    vim.opt.background = "dark"
  end
end
