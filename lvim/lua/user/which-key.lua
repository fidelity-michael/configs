require("user.functions")

lvim.builtin.which_key.mappings["t"] = {
  name = "Theme",
  s = { "<cmd>lua Change_bg()<CR>", "Change Theme" }
}

-- Leaderkey is included thus it's a mapping for <leader>sw
lvim.builtin.which_key.mappings["sw"] = {
  [[/\<\><Left><Left>]], "Search Word"
}

lvim.builtin.which_key.mappings["p"] = {

}
