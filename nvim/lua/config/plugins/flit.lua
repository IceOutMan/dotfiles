-- 快速移动位置 重定义了 f F t T 这四个查找键
return {
  'ggandor/flit.nvim',
  dependencies = {
    'ggandor/leap.nvim',
    'tpope/vim-repeat',
  },
  config = function()
    require('flit').setup {
      keys = { f = 'f', F = 'F', t = 't', T = 'T' },
      -- A string like "nv", "nvo", "o", etc.
      -- 配置在不同模式下
      labeled_modes = "nv",
      multiline = true,
      -- Like `leap`s similar argument (call-specific overrides).
      -- E.g.: opts = { equivalence_classes = {} }
      opts = {}
    }
  end,
}