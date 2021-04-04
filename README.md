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
    goto_right_end = false, -- whether to go to the end of the right partner or the beginning
    keymaps = {
      goto_partner = "<leader>%"
    }
  }
},
EOF
```

## Supported languages

<!--textobjectinfo-->
<table>
<tr>
<td>bash</td><td> </td> </tr>
<tr>
<td>beancount</td><td> </td> </tr>
<tr>
<td>bibtex</td><td> </td> </tr>
<tr>
<td>c</td><td> </td> </tr>
<tr>
<td>c_sharp</td><td> </td> </tr>
<tr>
<td>clojure</td><td> </td> </tr>
<tr>
<td>comment</td><td> </td> </tr>
<tr>
<td>cpp</td><td> </td> </tr>
<tr>
<td>css</td><td> </td> </tr>
<tr>
<td>dart</td><td> </td> </tr>
<tr>
<td>devicetree</td><td> </td> </tr>
<tr>
<td>elm</td><td> </td> </tr>
<tr>
<td>erlang</td><td> </td> </tr>
<tr>
<td>fennel</td><td> </td> </tr>
<tr>
<td>Godot (gdscript)</td><td> </td> </tr>
<tr>
<td>Glimmer and Ember</td><td> </td> </tr>
<tr>
<td>go</td><td> </td> </tr>
<tr>
<td>graphql</td><td> </td> </tr>
<tr>
<td>haskell</td><td> </td> </tr>
<tr>
<td>html</td><td> </td> </tr>
<tr>
<td>java</td><td> </td> </tr>
<tr>
<td>javascript</td><td> </td> </tr>
<tr>
<td>jsdoc</td><td> </td> </tr>
<tr>
<td>json</td><td> </td> </tr>
<tr>
<td>JSON with comments</td><td> </td> </tr>
<tr>
<td>julia</td><td> </td> </tr>
<tr>
<td>kotlin</td><td> </td> </tr>
<tr>
<td>latex</td><td>👍</td> </tr>
<tr>
<td>ledger</td><td> </td> </tr>
<tr>
<td>lua</td><td> </td> </tr>
<tr>
<td>nix</td><td> </td> </tr>
<tr>
<td>ocaml</td><td> </td> </tr>
<tr>
<td>ocaml_interface</td><td> </td> </tr>
<tr>
<td>ocamllex</td><td> </td> </tr>
<tr>
<td>php</td><td> </td> </tr>
<tr>
<td>python</td><td> </td> </tr>
<tr>
<td>ql</td><td> </td> </tr>
<tr>
<td>Tree-sitter query language</td><td> </td> </tr>
<tr>
<td>r</td><td> </td> </tr>
<tr>
<td>regex</td><td> </td> </tr>
<tr>
<td>rst</td><td> </td> </tr>
<tr>
<td>ruby</td><td> </td> </tr>
<tr>
<td>rust</td><td> </td> </tr>
<tr>
<td>scala</td><td> </td> </tr>
<tr>
<td>sparql</td><td> </td> </tr>
<tr>
<td>supercollider</td><td> </td> </tr>
<tr>
<td>svelte</td><td> </td> </tr>
<tr>
<td>swift</td><td> </td> </tr>
<tr>
<td>teal</td><td> </td> </tr>
<tr>
<td>toml</td><td> </td> </tr>
<tr>
<td>tsx</td><td> </td> </tr>
<tr>
<td>turtle</td><td> </td> </tr>
<tr>
<td>typescript</td><td> </td> </tr>
<tr>
<td>verilog</td><td> </td> </tr>
<tr>
<td>vue</td><td> </td> </tr>
<tr>
<td>yaml</td><td> </td> </tr>
<tr>
<td>zig</td><td> </td> </tr>
</table>
<!--textobjectinfo-->
