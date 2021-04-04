lua << EOF
require "nvim-treesitter-pairs".init()
EOF

highlight default link NvimTreesitterPairsPartner MatchParen
highlight default link NvimTreesitterPairsSelf MatchParen
