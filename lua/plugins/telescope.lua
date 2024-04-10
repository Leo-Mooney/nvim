return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.6',
  dependencies = { 'nvim-lua/plenary.nvim', 'debugloop/telescope-undo.nvim'},
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    telescope.setup({
      defaults = {
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous,                       -- move to prev result
            ["<C-j>"] = actions.move_selection_next,                           -- move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- send selected to quickfixlist
            ["jk"] = actions.close,
          },
        },
      },
    })
    telescope.load_extension("undo")
  end
}
