return {
    {
      "jay-babu/project.nvim",
      main = "project_nvim",
      event = "VeryLazy",
      opts = { ignore_lsp = { "lua_ls" } },
      keys = {
        {
          "<leader>fp",
          function() require'telescope'.extensions.projects.projects{} end,
          desc = "Find projects",
        },
      },
    },
    {
      "nvim-telescope/telescope.nvim",
      optional = true,
      dependencies = { "jay-babu/project.nvim" },
      opts = function() require("telescope").load_extension "projects" end,
    },
  }
-- print(      vim.fn.stdpath)
-- return {
--   "coffebar/neovim-project",
--   opts = {
--     projects = { -- define project roots
--       "~/projects/*",
--       "~/.config/*",
--       "~/AppData/Local/nvim/lua/*",
--     },
--   },
--   init = function()
--     -- enable saving the state of plugins in the session
--     vim.opt.sessionoptions:append("globals") -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
--   end,
--   dependencies = {
--     { "nvim-lua/plenary.nvim" },
--     { "nvim-telescope/telescope.nvim", tag = "0.1.4" },
--     { "Shatur/neovim-session-manager" },
--   },
--   lazy = false,
--   priority = 100,
--   keys = {
--     {
--       "<leader>fp",
--       "<cmd>Telescope neovim-project discover<cr>",
--       desc = "Find projects",
--     },
--     },
-- }