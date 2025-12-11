return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.6',
  dependencies = { 'nvim-lua/plenary.nvim', 'debugloop/telescope-undo.nvim'},
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        vimgrep_arguments = {
          'rg',
          '--color=never',
          '--no-heading',
          '--with-filename',
          '--line-number',
          '--column',
          '--smart-case',
          '--max-filesize', '1M',
          '--glob', '!*.csv',
          '--glob', '!*.json',
          '--glob', '!*.jsonl',
          '--glob', '!*.ipynb',
        },

        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
            ["jk"] = actions.close,
          },
        },
      },
    })

    telescope.load_extension("undo")
  end
}
