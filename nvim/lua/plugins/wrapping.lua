--wrapping
return {
  "andrewferrier/wrapping.nvim",
  config = function()
    require("wrapping").get_current_mode("soft")
  end,
}
