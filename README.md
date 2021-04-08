# nvim-treesitter-pairs

Create your own pair objects using tree-sitter queries!

## Installation

You can install nvim-treesitter-pairs with your favorite package manager, or using the default pack feature of Neovim!

### Using a package manager

If you are using vim-plug, put this in your init.vim file:

```vim
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'theHamsta/nvim-treesitter-pairs'
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
    fallback_cmd_normal = "call matchit#Match_wrapper('',1,'n')", -- What command to issue when we can't find a pair (e.g. "normal! %")
    keymaps = {
      goto_partner = "<leader>%"
    }
  }
},
EOF
```

## Known Limitations

We hope we can fix them soon!

- Can only cycle through 2-element pairs
- Only works in normal mode
- Queries are not complete at the moment
- Does not support counts
- Support all things that matchit does
- Is tree-sitter really needed or should we just use mature vim plugins that use regexes?

Alternatives: https://github.com/andymass/vim-matchup added tree-sitter support for some languages. Thy can be configured via `matchu.scm`.

## Supported languages
