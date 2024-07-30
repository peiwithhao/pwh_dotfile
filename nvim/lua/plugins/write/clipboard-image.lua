return {
  {
    'dfendr/clipboard-image.nvim',
    opts = { -- Default configuration for all filetype
      default = {
        img_dir = { '%:p:h', '~/Pictures/screen_print' },
        affix = '%s', -- Multi lines affix
      },
      -- You can create configuration for ceartain filetype by creating another field (markdown, in this case)
      -- If you're uncertain what to name your field to, you can run `lua print(vim.bo.filetype)`
      -- Missing options from `markdown` field will be replaced by options from `default` field
      markdown = {
        img_dir = { '~/Pictures/screen_print' }, -- Use table for nested dir (New feature form PR #20)
        img_dir_txt = '~/Pictures/screen_print',
        img_handler = function(img) -- New feature from PR #22
          local script = string.format('./image_compressor.sh "%s"', img.path)
          os.execute(script)
        end,
        affix = '![](%s)',
      },
      tex = {
        -- affix = "image:%s",
        affix = '\\begin{figure}[htbp]\n\\centering\n\\includegraphics[width=0.5\\textwidth]{%s}\n\\caption{}\n\\label{fig:}\n\\end{figure}',
      },
    },
    ft = { 'tex', 'markdown' },
    keys = {
      { '<leader>i', '<cmd>PasteImg<cr>', desc = 'Paste image' },
    },
  },
}
