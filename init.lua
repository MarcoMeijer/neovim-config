require("remap")
require("plugin")
require("set")

if vim.g.neovide then
  vim.g.neovide_floating_blur_amount_x = 2.0
  vim.g.neovide_floating_blur_amount_y = 2.0
  vim.g.neovide_scroll_animation_length = 0.3
  vim.g.neovide_cursor_vfx_mode = "wireframe"
  vim.opt.winblend = 20
  vim.opt.pumblend = 20
end
