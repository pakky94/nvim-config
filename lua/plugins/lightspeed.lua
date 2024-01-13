return {
  'ggandor/lightspeed.nvim',
  dependencies = {
    'tpope/vim-repeat',
  },
  config = function ()
    vim.keymap.set('n', 's', '<Plug>Lightspeed_omni_s')
  end,
  opts = {
    ignore_case = true
  },
}
