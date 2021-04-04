-- Execute as `nvim --headless -c "luafile ./scripts/update-readme.lua"`
local parsers = require 'nvim-treesitter.parsers'.get_parser_configs()
local sorted_parsers = {}

for k, v in pairs(parsers) do
  table.insert(sorted_parsers, {name = k, parser = v})
end

local generated_text = ''
table.sort(sorted_parsers, function(a, b) return a.name < b.name end)

for _, v in ipairs(sorted_parsers) do
  local lang = (v.parser.readme_name or v.name)
  generated_text = generated_text..'<tr>\n'
  generated_text = generated_text..'<td>'..lang..'</td>'

  local is_supported = require'nvim-treesitter-pairs'.has_pairs(lang)
  generated_text = generated_text..'<td>'..(is_supported and '👍' or ' ')..'</td> '
  generated_text = generated_text..'</tr>\n'
end
generated_text = generated_text..'</table>\n'

print(generated_text)
print("\n")

local readme_text = table.concat(vim.fn.readfile('README.md'), '\n')

local new_readme_text = string.gsub(readme_text, "<!%-%-textobjectinfo%-%->.*<!%-%-textobjectinfo%-%->",
                                                 "<!--textobjectinfo-->\n"..generated_text.."<!--textobjectinfo-->")
vim.fn.writefile(vim.fn.split(new_readme_text, '\n'), "README.md")

if string.find(readme_text, generated_text, 1, 'plain') then
  print("README.md is up-to-date!")
  vim.cmd('q')
else
  print("New README.md was written. Please commit that change! Old text was: ")
  print(string.sub(readme_text, string.find(readme_text, "<!%-%-textobjectinfo%-%->.*<!%-%-textobjectinfo%-%->")))
  vim.cmd('cq')
end
