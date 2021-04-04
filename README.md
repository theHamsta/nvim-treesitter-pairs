# nvim-treesitter-pairs

Create your own textobjects using tree-sitter queries!

## Installation

You can install nvim-treesitter-textobjects with your favorite package manager, or using the default pack feature of Neovim!

### Using a package manager

If you are using vim-plug, put this in your init.vim file:

```vim
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-pairs'
```

## Configuration

Pairs are configured via `queries/<language>/pairs.scm` query files.

```lua
lua <<EOF
require'nvim-treesitter.configs'.setup {
  pairs = {
    enable = true,
    disable = {},
    highlight_pair_events = {"CursorMoved"}, -- when to highlight the pairs, use {} to deactivate highlighting
    highlight_self = true,
    goto_right_end = true, -- whether to go to the end of the right partner or the beginning
    keymaps = {
      goto_partner = "<leader>%"
    }
  }
},
EOF
```

## Supported languages

<!--textobjectinfo-->
1. @left
2. @right
<table>
<th>
<td>1</td> <td>2</td> <td>3</td> <td>4</td> <td>5</td> <td>6</td> <td>7</td> <td>8</td> <td>9</td> <td>10</td> <td>11</td> <td>12</td> <td>13</td> <td>14</td> <td>15</td> <td>16</td> </th>
<tr>
<td>bash</td><td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>beancount</td><td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>bibtex</td><td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>c</td><td> </td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td> </td> <td>👍</td> </tr>
<tr>
<td>c_sharp</td><td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td>👍</td> <td>👍</td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>clojure</td><td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>comment</td><td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>cpp</td><td> </td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td> </td> <td>👍</td> </tr>
<tr>
<td>css</td><td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>dart</td><td> </td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td> </td> <td>👍</td> </tr>
<tr>
<td>devicetree</td><td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>elm</td><td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>erlang</td><td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>fennel</td><td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>Godot (gdscript)</td><td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>Glimmer and Ember</td><td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>go</td><td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td> </td> <td>👍</td> </tr>
<tr>
<td>graphql</td><td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>haskell</td><td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>html</td><td> </td> <td> </td> <td> </td> <td> </td> <td>👍</td> <td>👍</td> <td> </td> <td> </td> <td> </td> <td>👍</td> <td>👍</td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>java</td><td> </td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td> </td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td> </td> <td> </td> </tr>
<tr>
<td>javascript</td><td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td> </td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td> </td> <td> </td> </tr>
<tr>
<td>jsdoc</td><td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>json</td><td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>JSON with comments</td><td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>julia</td><td> </td> <td>👍</td> <td> </td> <td>👍</td> <td> </td> <td> </td> <td>👍</td> <td> </td> <td>👍</td> <td> </td> <td>👍</td> <td> </td> <td>👍</td> <td> </td> <td>👍</td> <td> </td> </tr>
<tr>
<td>kotlin</td><td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>latex</td><td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>ledger</td><td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>lua</td><td> </td> <td> </td> <td>👍</td> <td>👍</td> <td> </td> <td> </td> <td>👍</td> <td> </td> <td>👍</td> <td> </td> <td>👍</td> <td> </td> <td>👍</td> <td>👍</td> <td> </td> <td> </td> </tr>
<tr>
<td>nix</td><td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>ocaml</td><td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>ocaml_interface</td><td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>ocamllex</td><td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>php</td><td>👍</td> <td>👍</td> <td> </td> <td> </td> <td>👍</td> <td>👍</td> <td> </td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td> </td> <td> </td> </tr>
<tr>
<td>python</td><td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td> </td> <td>👍</td> </tr>
<tr>
<td>ql</td><td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td>👍</td> <td> </td> <td> </td> <td> </td> <td>👍</td> <td>👍</td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>Tree-sitter query language</td><td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>r</td><td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>regex</td><td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>rst</td><td>👍</td> <td>👍</td> <td> </td> <td> </td> <td>👍</td> <td>👍</td> <td>👍</td> <td> </td> <td> </td> <td>👍</td> <td>👍</td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>ruby</td><td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>rust</td><td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td> </td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td> </td> <td>👍</td> </tr>
<tr>
<td>scala</td><td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>sparql</td><td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>supercollider</td><td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>svelte</td><td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>swift</td><td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>teal</td><td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>toml</td><td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>tsx</td><td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td> </td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td> </td> <td> </td> </tr>
<tr>
<td>turtle</td><td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>typescript</td><td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td> </td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td>👍</td> <td> </td> <td> </td> </tr>
<tr>
<td>verilog</td><td> </td> <td>👍</td> <td> </td> <td> </td> <td> </td> <td>👍</td> <td>👍</td> <td> </td> <td>👍</td> <td> </td> <td>👍</td> <td> </td> <td>👍</td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>vue</td><td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>yaml</td><td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> </tr>
<tr>
<td>zig</td><td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> <td> </td> </tr>
</table>
<!--textobjectinfo-->
