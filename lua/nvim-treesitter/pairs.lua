local api = vim.api
local queries = require "nvim-treesitter.query"
local ts_utils = require "nvim-treesitter.ts_utils"
local configs = require "nvim-treesitter.configs"

local hl_namespace = api.nvim_create_namespace("nvim-treesitter-pairs")

local M = {
  highlight_events = {},
  highlight_self = true,
  goto_right_end = true
}

local VERY_NEGATIVE_NUMBER = -100000000

function M.get_partner(buf, pos)
  buf = buf or api.nvim_get_current_buf()
  local pos = pos or vim.api.nvim_win_get_cursor(0)
  pos[1] = pos[1] - 1

  local function filter_function()
    return true
  end
  local function scoring_function(pair)
    if ts_utils.is_in_node_range(pair.left.node, unpack(pos)) then
      return -ts_utils.node_length(pair.left.node)
    elseif ts_utils.is_in_node_range(pair.right.node, unpack(pos)) then
      return -ts_utils.node_length(pair.right.node)
    else
      return VERY_NEGATIVE_NUMBER
    end
  end

  local pair = queries.find_best_match(buf, "@", "pairs", filter_function, scoring_function)
  if pair and pair.left and pair.left.node and pair.right and pair.right.node then
    if ts_utils.is_in_node_range(pair.left.node, unpack(pos)) then
      return pair.right.node, pair.left.node, "right"
    elseif ts_utils.is_in_node_range(pair.right.node, unpack(pos)) then
      return pair.left.node, pair.right.node, "left"
    end
  end
end

function M.goto_partner(buf)
  buf = buf or api.nvim_get_current_buf()

  local partner, _, which_one = M.get_partner(buf)

  ts_utils.goto_node(partner, M.goto_right_end and which_one == "right")
end

function M.clear_highlights(buf)
  buf = buf or api.nvim_get_current_buf()
  api.nvim_buf_clear_namespace(buf, hl_namespace, 0, -1)
end

function M.highlight_partner(buf)
  buf = buf or api.nvim_get_current_buf()
  M.clear_highlights(buf)

  local partner, me = M.get_partner(buf)

  ts_utils.highlight_node(partner, buf, hl_namespace, "NvimTreesitterPairsPartner")
  if M.highlight_self then
    ts_utils.highlight_node(me, buf, hl_namespace, "NvimTreesitterPairsSelf")
  end
end

function M.attach(buf, _)
  local config = configs.get_module("pairs")
  M.highlight_pair_events = config.highlight_pair_events
  M.highlight_self = config.highlight_self
  M.goto_right_end = config.goto_right_end
  assert(config.highlight_pair_events)

  for funcname, mapping in pairs(config.keymaps) do
    api.nvim_buf_set_keymap(
      buf,
      "n",
      mapping,
      string.format(":lua require'nvim-treesitter.pairs'.%s()<CR>", funcname),
      {silent = true}
    )
  end

  vim.cmd(string.format("augroup NvimTreesitterPairsHighlight_%d", buf))
  vim.cmd "au!"
  for _, e in pairs(M.highlight_pair_events) do
    vim.cmd(
      string.format([[autocmd! %s <buffer=%d> lua require'nvim-treesitter.pairs'.highlight_partner(%d)]], e, buf, buf)
    )
  end
  vim.cmd "augroup END"
end

function M.detach(buf)
  M.clear_highlights(buf)
  for _, e in pairs(M.highlight_pair_events) do
    vim.cmd(string.format("autocmd! NvimTreesitterPairsHighlight_%d %s", buf, e))
  end
end

M.commands = {}

return M
