-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/marco/.cache/nvim/packer_hererocks/2.1.1692716794/share/lua/5.1/?.lua;/home/marco/.cache/nvim/packer_hererocks/2.1.1692716794/share/lua/5.1/?/init.lua;/home/marco/.cache/nvim/packer_hererocks/2.1.1692716794/lib/luarocks/rocks-5.1/?.lua;/home/marco/.cache/nvim/packer_hererocks/2.1.1692716794/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/marco/.cache/nvim/packer_hererocks/2.1.1692716794/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/marco/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  catppuccin = {
    config = { "\27LJ\2\n⁄\23\0\1\4\0≠\1\0æ\0025\1\a\0005\2\1\0009\3\0\0=\3\2\0026\3\3\0\15\0\3\0X\4\3Ä9\3\4\0\14\0\3\0X\4\1Ä9\3\5\0=\3\6\2=\2\b\0015\2\n\0009\3\t\0=\3\2\2=\2\v\0015\2\r\0009\3\f\0=\3\6\0029\3\14\0=\3\2\0025\3\15\0=\3\16\2=\2\17\0015\2\18\0009\3\14\0=\3\6\0029\3\f\0=\3\2\2=\2\19\0015\2\20\0009\3\14\0=\3\2\2=\2\21\0015\2\23\0009\3\22\0=\3\2\2=\2\24\0015\2\26\0009\3\25\0=\3\2\2=\2\27\0015\2\29\0009\3\28\0=\3\2\0025\3\30\0=\3\16\2=\2\31\0015\2 \0009\3\4\0=\3\6\2=\2!\0015\2\"\0009\3\4\0=\3\6\2=\2#\0015\2$\0009\3\4\0=\3\6\2=\2%\0015\2'\0009\3&\0=\3\2\0029\3\4\0=\3\6\2=\2(\0015\2)\0009\3&\0=\3\2\2=\2*\0015\2+\0009\3&\0=\3\2\2=\2,\0015\2-\0009\3&\0=\3\2\2=\2.\0015\2/\0009\3&\0=\3\2\2=\0020\0015\0021\0009\3&\0=\0032\2=\0023\0015\0024\0009\3\4\0=\3\6\0029\0035\0=\3\2\2=\0026\0015\0027\0009\3\22\0=\3\2\0025\0038\0=\3\16\2=\0029\0015\2:\0006\3\3\0\15\0\3\0X\4\3Ä9\3\4\0\14\0\3\0X\4\1Ä9\3\5\0=\3\6\2=\2;\0015\2=\0009\3<\0=\3\2\2=\2>\0015\2?\0=\2@\0015\2A\0=\2B\0015\2C\0=\2D\0015\2E\0009\3\22\0=\3\2\0025\3F\0=\3\16\2=\2G\0015\2H\0009\3\22\0=\3\2\0025\3I\0=\3\16\2=\2J\0015\2K\0009\3\22\0=\3\2\0025\3L\0=\3\16\2=\2M\0015\2N\0=\2O\0015\2Q\0009\3P\0=\3\2\2=\2R\0015\2S\0009\3&\0=\3\2\2=\2T\0015\2U\0009\3\25\0=\3\2\2=\2V\0015\2X\0009\3W\0=\3\2\2=\2Y\0015\2[\0009\3Z\0=\3\2\2=\2\\\0015\2^\0009\3]\0=\3\2\2=\2_\0015\2a\0009\3`\0=\3\2\2=\2b\0015\2d\0009\3c\0=\3\2\2=\2e\0015\2f\0009\3`\0=\3\2\2=\2g\0015\2h\0=\2i\0015\2j\0009\3\28\0=\3\2\0025\3k\0=\3\16\2=\2l\0015\2m\0009\3\28\0=\3\2\0024\3\0\0=\3\16\2=\2n\0015\2o\0009\3&\0=\3\2\2=\2p\0015\2q\0009\3\28\0=\3\2\0025\3r\0=\3\16\2=\2s\0015\2t\0009\3]\0=\3\2\2=\2u\0015\2v\0009\3\14\0=\3\2\0024\3\0\0=\3\16\2=\2w\0015\2x\0009\3\22\0=\3\2\0025\3y\0=\3\16\2=\2z\0015\2{\0009\3&\0=\3\2\0024\3\0\0=\3\16\2=\2|\0015\2}\0009\3W\0=\3\2\2=\2~\0015\2Ä\0009\3\127\0=\3\2\2=\2Å\0015\2Ç\0009\3\25\0=\3\2\2=\2É\0015\2Ñ\0009\3\0\0=\3\2\2=\2Ö\0015\2á\0009\3Ü\0=\3\2\0025\3à\0=\3\16\2=\2â\0015\2ä\0009\3c\0=\3\2\2=\2ã\0015\2å\0009\3]\0=\3\2\2=\2ç\0015\2é\0009\3\0\0=\3\2\2=\2è\0015\2ê\0009\3\28\0=\3\2\0025\3ë\0=\3\16\2=\2í\0015\2ì\0009\3\25\0=\3\2\0025\3î\0=\3\16\2=\2ï\0015\2ñ\0009\3`\0=\3\2\2=\2ó\0015\2ò\0009\3P\0=\3\2\2=\2ô\0015\2ö\0009\3P\0=\3\2\0025\3õ\0=\3\16\2=\2ú\0015\2ù\0009\3W\0=\3\2\2=\2û\0015\2ü\0009\3`\0=\3\2\0025\3†\0=\3\16\2=\2°\0015\2¢\0009\3`\0=\3\2\2=\2£\0015\2§\0009\3\25\0=\3\2\0025\3•\0=\3\16\2=\2¶\0015\2ß\0009\3\25\0=\3\2\0024\3\0\0=\3\16\2=\2®\0015\2©\0009\3\0\0=\3\2\2=\2™\0015\2´\0009\3\25\0=\3\2\0024\3\0\0=\3\16\2=\2¨\1L\1\2\0\22@type.builtin.cpp\1\0\0\18@property.cpp\1\0\0\20@type.builtin.c\1\0\0\18@property.css\1\2\0\0\vitalic\1\0\0\14@type.css\1\0\0\25@property.typescript\1\2\0\0\vitalic\1\0\0\19@constant.java\1\0\0\26@variable.builtin.lua\1\2\0\0\vitalic\1\0\0\21@constructor.lua\1\0\0\15@field.lua\1\0\0\20@parameter.bash\1\2\0\0\vitalic\1\0\0\27@function.builtin.bash\1\2\0\0\vitalic\1\0\0\n@text\1\0\0\19@tag.delimiter\1\0\0\t@tag\1\0\0\19@tag.attribute\1\2\0\0\vitalic\1\0\0\nmauve\14@variable\1\0\0\n@type\1\0\0\25@punctuation.bracket\1\0\0\roverlay2\27@punctuation.delimiter\1\0\0\15@namespace\1\0\0\f@method\1\2\0\0\vitalic\1\0\0\20@keyword.return\1\0\0\22@keyword.function\1\0\0\r@keyword\1\2\0\0\vitalic\1\0\0\15@parameter\1\0\0\20@function.macro\1\0\0\22@variable.builtin\1\2\0\0\vitalic\1\0\0\20@type.qualifier\1\0\1\tlink\r@keyword\22@constant.builtin\1\0\0\15@exception\1\0\0\npeach\17@constructor\1\0\0\rlavender\25@punctuation.special\1\0\0\vmaroon\22@keyword.operator\1\0\0\bsky\r@include\1\0\0\tteal\14@property\1\0\0\v@field\1\0\0)@lsp.typemod.variable.defaultLibrary\1\0\0\rflamingo'@lsp.typemod.method.defaultLibrary\1\0\1\tlink)@lsp.typemod.function.defaultLibrary-@lsp.typemod.function.defaultLibrary.cpp\1\2\0\0\tbold\1\0\0+@lsp.typemod.function.defaultLibrary.c\1\2\0\0\tbold\1\0\0)@lsp.typemod.function.defaultLibrary\1\3\0\0\tbold\vitalic\1\0\0\20@lsp.type.macro\1\0\1\tlink\14@constant\23@lsp.type.property\1\0\1\tlink\14@property\19@lsp.type.enum\1\0\1\tlink\n@type\22@lsp.type.comment\1\0\0\roverlay0\18TroubleNormal\1\0\0\16FidgetTitle\1\2\0\0\tbold\1\0\0\15FidgetTask\rsurface2\1\0\0 LspDiagnosticsUnderlineHint\asp\1\0\0\"LspDiagnosticsVirtualTextHint\1\0\0\23LspDiagnosticsHint\1\0\0\30LspDiagnosticsDefaultHint\1\0\0\19DiagnosticHint\1\0\0\30DiagnosticVirtualTextHint\1\0\0\14rosewater\30DiagnosticVirtualTextInfo\1\0\0\30DiagnosticVirtualTextWarn\1\0\0\31DiagnosticVirtualTextError\1\0\0\17StorageClass\1\2\0\0\vitalic\1\0\0\bred\fTypedef\1\0\0\vyellow\tType\1\0\0\tblue\fKeyword\1\0\0\14IncSearch\1\0\0\vSearch\nstyle\1\2\0\0\tbold\tpink\1\0\0\rsurface1\17CursorLineNr\1\0\0\ngreen\16NormalFloat\1\0\0\abg\tbase\tnone\27transparent_background\afg\1\0\0\ttextÅ\15\1\0\a\0G\0U6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0026\3\b\0009\3\t\0039\3\n\3'\5\v\0B\3\2\2'\4\f\0&\3\4\3=\3\r\0025\3\15\0005\4\14\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\0035\4\21\0=\4\22\0035\4\23\0=\4\24\0035\4\25\0=\4\26\0035\4\27\0=\4\28\0035\4\29\0=\4\30\0034\4\0\0=\4\31\0034\4\0\0=\4 \0034\4\0\0=\4!\0034\4\0\0=\4\"\3=\3#\0025\3$\0005\4%\0005\5'\0005\6&\0=\6(\0055\6)\0=\6*\0055\6+\0=\6,\0055\6-\0=\6.\5=\5/\0045\0051\0005\0060\0=\6(\0055\0062\0=\6*\0055\0063\0=\6,\0055\0064\0=\6.\5=\0055\4=\0046\0035\0047\0=\0048\0035\0049\0=\4:\0035\4;\0=\4<\0035\4=\0=\4>\3=\3?\0025\3A\0005\4@\0=\4B\3=\3C\0025\3E\0003\4D\0=\4B\3=\3F\2B\0\2\1K\0\1\0\24highlight_overrides\1\0\0\0\20color_overrides\nmocha\1\0\0\1\0\25\rsurface0\f#302D41\bred\f#F28FAD\rsurface1\f#575268\tpink\f#F5C2E7\roverlay0\f#6E6C7E\nmauve\f#DDB6F2\rsurface2\f#6E6C7E\rflamingo\f#F2CDCD\roverlay1\f#988BA2\14rosewater\f#F5E0DC\roverlay2\f#C3BAC6\rsubtext0\f#A6ADC8\rsubtext1\f#BAC2DE\ttext\f#D9E0EE\rlavender\f#C9CBFF\tteal\f#B5E8E0\bsky\f#89DCEB\tblue\f#96CDFB\ngreen\f#ABE9B3\ncrust\f#161320\vyellow\f#FAE3B0\vmantle\f#1A1826\npeach\f#F8BD96\tbase\f#1E1E2E\vmaroon\f#E8A2AF\17integrations\fneotree\1\0\3\fenabled\1\14show_root\2\22transparent_panel\1\nnavic\1\0\1\fenabled\1\21indent_blankline\1\0\2\fenabled\2\26colored_indent_levels\1\bdap\1\0\2\fenabled\2\14enable_ui\2\15native_lsp\15underlines\1\2\0\0\14underline\1\2\0\0\14underline\1\2\0\0\14underline\1\0\0\1\2\0\0\14underline\17virtual_text\16information\1\2\0\0\vitalic\rwarnings\1\2\0\0\vitalic\nhints\1\2\0\0\vitalic\verrors\1\0\0\1\2\0\0\vitalic\1\0\1\fenabled\2\1\0&\15treesitter\2\14which_key\2\fvimwiki\1\14vim_sneak\1\15ts_rainbow\2\23treesitter_context\1\14telescope\2\15telekasten\1\20symbols_outline\1\20semantic_tokens\2\vpounce\1\roverseer\1\rnvimtree\2\nnoice\1\vnotify\2\fneotest\1\vneogit\1\tmini\1\nmason\2\rmarkdown\2\16lsp_trouble\2\rlsp_saga\2\15lightspeed\1\tleap\1\15illuminate\2\bhop\2\fharpoon\1\14gitgutter\1\vfidget\2\tfern\1\14dashboard\1\rcoc_nvim\1\bcmp\2\vbeacon\1\vbarbar\1\nalpha\1\vaerial\1\rgitsigns\2\vstyles\14variables\fstrings\ntypes\fnumbers\rbooleans\1\3\0\0\tbold\vitalic\nloops\1\2\0\0\tbold\17conditionals\1\2\0\0\tbold\14operators\1\2\0\0\tbold\rkeywords\1\2\0\0\vitalic\14functions\1\2\0\0\tbold\15properties\1\2\0\0\vitalic\rcomments\1\0\0\1\2\0\0\vitalic\17compile_path\16/catppuccin\ncache\fstdpath\afn\bvim\17dim_inactive\1\0\3\fenabled\1\15percentage\4≥ÊÃô\3≥Êå˛\3\nshade\tdark\15background\1\0\2\nlight\nlatte\tdark\nmocha\1\0\3\23show_end_of_buffer\1\16term_colors\2\fflavour\nmocha\nsetup\15catppuccin\frequire\0" },
    loaded = true,
    path = "/home/marco/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/marco/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["color-picker.nvim"] = {
    config = { "\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17color-picker\frequire\0" },
    loaded = true,
    path = "/home/marco/.local/share/nvim/site/pack/packer/start/color-picker.nvim",
    url = "https://github.com/ziontee113/color-picker.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/marco/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  harpoon = {
    loaded = true,
    path = "/home/marco/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/marco/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lazygit.nvim"] = {
    loaded = true,
    path = "/home/marco/.local/share/nvim/site/pack/packer/start/lazygit.nvim",
    url = "https://github.com/kdheepak/lazygit.nvim"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/home/marco/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/marco/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/marco/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/marco/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/marco/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-jenkinsfile-linter"] = {
    loaded = true,
    path = "/home/marco/.local/share/nvim/site/pack/packer/start/nvim-jenkinsfile-linter",
    url = "https://github.com/ckipp01/nvim-jenkinsfile-linter"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/marco/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/marco/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/marco/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/marco/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/marco/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rust-tools.nvim"] = {
    loaded = true,
    path = "/home/marco/.local/share/nvim/site/pack/packer/start/rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["statusline.lua"] = {
    loaded = true,
    path = "/home/marco/.local/share/nvim/site/pack/packer/start/statusline.lua",
    url = "https://github.com/beauwilliams/statusline.lua"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/marco/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/home/marco/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["vim-be-good"] = {
    loaded = true,
    path = "/home/marco/.local/share/nvim/site/pack/packer/start/vim-be-good",
    url = "https://github.com/ThePrimeagen/vim-be-good"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: color-picker.nvim
time([[Config for color-picker.nvim]], true)
try_loadstring("\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17color-picker\frequire\0", "config", "color-picker.nvim")
time([[Config for color-picker.nvim]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: catppuccin
time([[Config for catppuccin]], true)
try_loadstring("\27LJ\2\n⁄\23\0\1\4\0≠\1\0æ\0025\1\a\0005\2\1\0009\3\0\0=\3\2\0026\3\3\0\15\0\3\0X\4\3Ä9\3\4\0\14\0\3\0X\4\1Ä9\3\5\0=\3\6\2=\2\b\0015\2\n\0009\3\t\0=\3\2\2=\2\v\0015\2\r\0009\3\f\0=\3\6\0029\3\14\0=\3\2\0025\3\15\0=\3\16\2=\2\17\0015\2\18\0009\3\14\0=\3\6\0029\3\f\0=\3\2\2=\2\19\0015\2\20\0009\3\14\0=\3\2\2=\2\21\0015\2\23\0009\3\22\0=\3\2\2=\2\24\0015\2\26\0009\3\25\0=\3\2\2=\2\27\0015\2\29\0009\3\28\0=\3\2\0025\3\30\0=\3\16\2=\2\31\0015\2 \0009\3\4\0=\3\6\2=\2!\0015\2\"\0009\3\4\0=\3\6\2=\2#\0015\2$\0009\3\4\0=\3\6\2=\2%\0015\2'\0009\3&\0=\3\2\0029\3\4\0=\3\6\2=\2(\0015\2)\0009\3&\0=\3\2\2=\2*\0015\2+\0009\3&\0=\3\2\2=\2,\0015\2-\0009\3&\0=\3\2\2=\2.\0015\2/\0009\3&\0=\3\2\2=\0020\0015\0021\0009\3&\0=\0032\2=\0023\0015\0024\0009\3\4\0=\3\6\0029\0035\0=\3\2\2=\0026\0015\0027\0009\3\22\0=\3\2\0025\0038\0=\3\16\2=\0029\0015\2:\0006\3\3\0\15\0\3\0X\4\3Ä9\3\4\0\14\0\3\0X\4\1Ä9\3\5\0=\3\6\2=\2;\0015\2=\0009\3<\0=\3\2\2=\2>\0015\2?\0=\2@\0015\2A\0=\2B\0015\2C\0=\2D\0015\2E\0009\3\22\0=\3\2\0025\3F\0=\3\16\2=\2G\0015\2H\0009\3\22\0=\3\2\0025\3I\0=\3\16\2=\2J\0015\2K\0009\3\22\0=\3\2\0025\3L\0=\3\16\2=\2M\0015\2N\0=\2O\0015\2Q\0009\3P\0=\3\2\2=\2R\0015\2S\0009\3&\0=\3\2\2=\2T\0015\2U\0009\3\25\0=\3\2\2=\2V\0015\2X\0009\3W\0=\3\2\2=\2Y\0015\2[\0009\3Z\0=\3\2\2=\2\\\0015\2^\0009\3]\0=\3\2\2=\2_\0015\2a\0009\3`\0=\3\2\2=\2b\0015\2d\0009\3c\0=\3\2\2=\2e\0015\2f\0009\3`\0=\3\2\2=\2g\0015\2h\0=\2i\0015\2j\0009\3\28\0=\3\2\0025\3k\0=\3\16\2=\2l\0015\2m\0009\3\28\0=\3\2\0024\3\0\0=\3\16\2=\2n\0015\2o\0009\3&\0=\3\2\2=\2p\0015\2q\0009\3\28\0=\3\2\0025\3r\0=\3\16\2=\2s\0015\2t\0009\3]\0=\3\2\2=\2u\0015\2v\0009\3\14\0=\3\2\0024\3\0\0=\3\16\2=\2w\0015\2x\0009\3\22\0=\3\2\0025\3y\0=\3\16\2=\2z\0015\2{\0009\3&\0=\3\2\0024\3\0\0=\3\16\2=\2|\0015\2}\0009\3W\0=\3\2\2=\2~\0015\2Ä\0009\3\127\0=\3\2\2=\2Å\0015\2Ç\0009\3\25\0=\3\2\2=\2É\0015\2Ñ\0009\3\0\0=\3\2\2=\2Ö\0015\2á\0009\3Ü\0=\3\2\0025\3à\0=\3\16\2=\2â\0015\2ä\0009\3c\0=\3\2\2=\2ã\0015\2å\0009\3]\0=\3\2\2=\2ç\0015\2é\0009\3\0\0=\3\2\2=\2è\0015\2ê\0009\3\28\0=\3\2\0025\3ë\0=\3\16\2=\2í\0015\2ì\0009\3\25\0=\3\2\0025\3î\0=\3\16\2=\2ï\0015\2ñ\0009\3`\0=\3\2\2=\2ó\0015\2ò\0009\3P\0=\3\2\2=\2ô\0015\2ö\0009\3P\0=\3\2\0025\3õ\0=\3\16\2=\2ú\0015\2ù\0009\3W\0=\3\2\2=\2û\0015\2ü\0009\3`\0=\3\2\0025\3†\0=\3\16\2=\2°\0015\2¢\0009\3`\0=\3\2\2=\2£\0015\2§\0009\3\25\0=\3\2\0025\3•\0=\3\16\2=\2¶\0015\2ß\0009\3\25\0=\3\2\0024\3\0\0=\3\16\2=\2®\0015\2©\0009\3\0\0=\3\2\2=\2™\0015\2´\0009\3\25\0=\3\2\0024\3\0\0=\3\16\2=\2¨\1L\1\2\0\22@type.builtin.cpp\1\0\0\18@property.cpp\1\0\0\20@type.builtin.c\1\0\0\18@property.css\1\2\0\0\vitalic\1\0\0\14@type.css\1\0\0\25@property.typescript\1\2\0\0\vitalic\1\0\0\19@constant.java\1\0\0\26@variable.builtin.lua\1\2\0\0\vitalic\1\0\0\21@constructor.lua\1\0\0\15@field.lua\1\0\0\20@parameter.bash\1\2\0\0\vitalic\1\0\0\27@function.builtin.bash\1\2\0\0\vitalic\1\0\0\n@text\1\0\0\19@tag.delimiter\1\0\0\t@tag\1\0\0\19@tag.attribute\1\2\0\0\vitalic\1\0\0\nmauve\14@variable\1\0\0\n@type\1\0\0\25@punctuation.bracket\1\0\0\roverlay2\27@punctuation.delimiter\1\0\0\15@namespace\1\0\0\f@method\1\2\0\0\vitalic\1\0\0\20@keyword.return\1\0\0\22@keyword.function\1\0\0\r@keyword\1\2\0\0\vitalic\1\0\0\15@parameter\1\0\0\20@function.macro\1\0\0\22@variable.builtin\1\2\0\0\vitalic\1\0\0\20@type.qualifier\1\0\1\tlink\r@keyword\22@constant.builtin\1\0\0\15@exception\1\0\0\npeach\17@constructor\1\0\0\rlavender\25@punctuation.special\1\0\0\vmaroon\22@keyword.operator\1\0\0\bsky\r@include\1\0\0\tteal\14@property\1\0\0\v@field\1\0\0)@lsp.typemod.variable.defaultLibrary\1\0\0\rflamingo'@lsp.typemod.method.defaultLibrary\1\0\1\tlink)@lsp.typemod.function.defaultLibrary-@lsp.typemod.function.defaultLibrary.cpp\1\2\0\0\tbold\1\0\0+@lsp.typemod.function.defaultLibrary.c\1\2\0\0\tbold\1\0\0)@lsp.typemod.function.defaultLibrary\1\3\0\0\tbold\vitalic\1\0\0\20@lsp.type.macro\1\0\1\tlink\14@constant\23@lsp.type.property\1\0\1\tlink\14@property\19@lsp.type.enum\1\0\1\tlink\n@type\22@lsp.type.comment\1\0\0\roverlay0\18TroubleNormal\1\0\0\16FidgetTitle\1\2\0\0\tbold\1\0\0\15FidgetTask\rsurface2\1\0\0 LspDiagnosticsUnderlineHint\asp\1\0\0\"LspDiagnosticsVirtualTextHint\1\0\0\23LspDiagnosticsHint\1\0\0\30LspDiagnosticsDefaultHint\1\0\0\19DiagnosticHint\1\0\0\30DiagnosticVirtualTextHint\1\0\0\14rosewater\30DiagnosticVirtualTextInfo\1\0\0\30DiagnosticVirtualTextWarn\1\0\0\31DiagnosticVirtualTextError\1\0\0\17StorageClass\1\2\0\0\vitalic\1\0\0\bred\fTypedef\1\0\0\vyellow\tType\1\0\0\tblue\fKeyword\1\0\0\14IncSearch\1\0\0\vSearch\nstyle\1\2\0\0\tbold\tpink\1\0\0\rsurface1\17CursorLineNr\1\0\0\ngreen\16NormalFloat\1\0\0\abg\tbase\tnone\27transparent_background\afg\1\0\0\ttextÅ\15\1\0\a\0G\0U6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0026\3\b\0009\3\t\0039\3\n\3'\5\v\0B\3\2\2'\4\f\0&\3\4\3=\3\r\0025\3\15\0005\4\14\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\0035\4\21\0=\4\22\0035\4\23\0=\4\24\0035\4\25\0=\4\26\0035\4\27\0=\4\28\0035\4\29\0=\4\30\0034\4\0\0=\4\31\0034\4\0\0=\4 \0034\4\0\0=\4!\0034\4\0\0=\4\"\3=\3#\0025\3$\0005\4%\0005\5'\0005\6&\0=\6(\0055\6)\0=\6*\0055\6+\0=\6,\0055\6-\0=\6.\5=\5/\0045\0051\0005\0060\0=\6(\0055\0062\0=\6*\0055\0063\0=\6,\0055\0064\0=\6.\5=\0055\4=\0046\0035\0047\0=\0048\0035\0049\0=\4:\0035\4;\0=\4<\0035\4=\0=\4>\3=\3?\0025\3A\0005\4@\0=\4B\3=\3C\0025\3E\0003\4D\0=\4B\3=\3F\2B\0\2\1K\0\1\0\24highlight_overrides\1\0\0\0\20color_overrides\nmocha\1\0\0\1\0\25\rsurface0\f#302D41\bred\f#F28FAD\rsurface1\f#575268\tpink\f#F5C2E7\roverlay0\f#6E6C7E\nmauve\f#DDB6F2\rsurface2\f#6E6C7E\rflamingo\f#F2CDCD\roverlay1\f#988BA2\14rosewater\f#F5E0DC\roverlay2\f#C3BAC6\rsubtext0\f#A6ADC8\rsubtext1\f#BAC2DE\ttext\f#D9E0EE\rlavender\f#C9CBFF\tteal\f#B5E8E0\bsky\f#89DCEB\tblue\f#96CDFB\ngreen\f#ABE9B3\ncrust\f#161320\vyellow\f#FAE3B0\vmantle\f#1A1826\npeach\f#F8BD96\tbase\f#1E1E2E\vmaroon\f#E8A2AF\17integrations\fneotree\1\0\3\fenabled\1\14show_root\2\22transparent_panel\1\nnavic\1\0\1\fenabled\1\21indent_blankline\1\0\2\fenabled\2\26colored_indent_levels\1\bdap\1\0\2\fenabled\2\14enable_ui\2\15native_lsp\15underlines\1\2\0\0\14underline\1\2\0\0\14underline\1\2\0\0\14underline\1\0\0\1\2\0\0\14underline\17virtual_text\16information\1\2\0\0\vitalic\rwarnings\1\2\0\0\vitalic\nhints\1\2\0\0\vitalic\verrors\1\0\0\1\2\0\0\vitalic\1\0\1\fenabled\2\1\0&\15treesitter\2\14which_key\2\fvimwiki\1\14vim_sneak\1\15ts_rainbow\2\23treesitter_context\1\14telescope\2\15telekasten\1\20symbols_outline\1\20semantic_tokens\2\vpounce\1\roverseer\1\rnvimtree\2\nnoice\1\vnotify\2\fneotest\1\vneogit\1\tmini\1\nmason\2\rmarkdown\2\16lsp_trouble\2\rlsp_saga\2\15lightspeed\1\tleap\1\15illuminate\2\bhop\2\fharpoon\1\14gitgutter\1\vfidget\2\tfern\1\14dashboard\1\rcoc_nvim\1\bcmp\2\vbeacon\1\vbarbar\1\nalpha\1\vaerial\1\rgitsigns\2\vstyles\14variables\fstrings\ntypes\fnumbers\rbooleans\1\3\0\0\tbold\vitalic\nloops\1\2\0\0\tbold\17conditionals\1\2\0\0\tbold\14operators\1\2\0\0\tbold\rkeywords\1\2\0\0\vitalic\14functions\1\2\0\0\tbold\15properties\1\2\0\0\vitalic\rcomments\1\0\0\1\2\0\0\vitalic\17compile_path\16/catppuccin\ncache\fstdpath\afn\bvim\17dim_inactive\1\0\3\fenabled\1\15percentage\4≥ÊÃô\3≥Êå˛\3\nshade\tdark\15background\1\0\2\nlight\nlatte\tdark\nmocha\1\0\3\23show_end_of_buffer\1\16term_colors\2\fflavour\nmocha\nsetup\15catppuccin\frequire\0", "config", "catppuccin")
time([[Config for catppuccin]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
