function Colors(color)
  color = color or "kanagawa"
  -- vim.cmd.colorscheme(color)
  lvim.colorscheme = color
  lvim.transparent_window = true
end

Colors()
