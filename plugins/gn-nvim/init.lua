return {
  "kalcutter/vim-gn",
  event = "VeryLazy",
  dependencies = {
    "google/vim-maktaba",
    "google/vim-codefmt",
    "google/vim-glaive",
  },
  config = function()
    local group = vim.api.nvim_create_augroup('CodeFmt', { clear = true })
    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'gn',
      command = 'AutoFormatBuffer gn',
      group = group,
    })
  end,
}
