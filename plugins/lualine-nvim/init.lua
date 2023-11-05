local function shortened_path()
  local path = vim.fn.expand "%:p" -- 获取完整路径
  local sep = package.config:sub(1, 1) -- 根据操作系统确定路径分隔符
  local dirs = vim.split(path, sep) -- 分割路径
  for i = 1, #dirs - 1 do -- 保留文件名，缩写路径名
    local dir_name = dirs[i]
    if dir_name ~= "" then
      dirs[i] = dir_name:sub(1, 1) -- 保留每个目录的第一个字母
    end
  end
  return table.concat(dirs, sep) -- 重新拼接路径
end

return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { { "filename", path = 4, shorting_target = 40 } },
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
    },
  },
  {
    "rebelot/heirline.nvim",
    optional = true,
    opts = function(_, opts) opts.statusline = nil end,
  },
}
