function Colors(color)
  color = color or "catppuccin-frappe"
  lvim.colorscheme = color
  -- lvim.transparent_window = true
end

function Swap_themes()
  if lvim.colorscheme == "catppuccin-frappe" then
    -- vim.colorscheme = "catppuccin-latte"
    vim.cmd.colorscheme("catppuccin-latte")
    lvim.colorscheme = "catppuccin-latte"
  else
    -- vim.colorscheme = "catppuccin-frappe"
    vim.cmd.colorscheme("catppuccin-frappe")
    lvim.colorscheme = "catppuccin-frappe"
  end
end

Colors()
