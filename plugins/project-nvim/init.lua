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