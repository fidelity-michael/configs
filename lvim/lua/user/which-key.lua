require("user.functions")

-- Leaderkey is included thus it's a mapping for <leader>sw
lvim.builtin.which_key.mappings["t"] = {
  name = "Theme",
  s = { "<cmd>lua Change_theme()<CR>", "Change Theme" }
}

lvim.builtin.which_key.mappings["sw"] = {
  [[/\<\><Left><Left>]], "Search Word"
}
