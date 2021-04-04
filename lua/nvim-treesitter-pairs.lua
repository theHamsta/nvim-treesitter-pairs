local queries = require "nvim-treesitter.query"
local utils = require "nvim-treesitter.utils"

local M = {}

M.has_pairs = function(lang)
  return queries.has_query_files(lang, "pairs")
end

function M.init()
  require "nvim-treesitter".define_modules {
    pairs = {
      module_path = "nvim-treesitter.pairs",
      enable = false,
      disable = {},
      is_supported = M.has_pairs,
      highlight_pair_events = {"CursorMoved"},
      highlight_self = true,
      goto_right_end = false,
      keymaps = {
        goto_partner = "<leader>%"
      }
    }
  }
  utils.setup_commands("pairs", require("nvim-treesitter.pairs").commands)
end

return M
