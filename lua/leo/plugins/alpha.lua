local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
  return
end

local dashboard = require "alpha.themes.dashboard"
dashboard.section.header.val = {

[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣤⣤⣤⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣶⣿⣿⣿⣿⣿⣿⣿⣿⣦⡄⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣠⣤⣤⣤⣤⣄⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣴⡿⠟⠛⠋⠉⠉⢩⣍⠛⠛⠿⣷⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⠿⠋⠁⠀⠀⠀⠀⠀⠀⣿⣿⠀⣰⡄⠈⠻⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⡿⠟⠁⢀⣠⣤⣀⣀⣀⣴⣿⣿⣿⣿⣿⣿⣿⡆⠀⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⡿⠋⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠞⠛⠛⢿⣿⣶⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠻⠿⠿⠿⠿⠟⠋⠁⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⢀⣠⣾⠟⠋⠀⠀⠀⠀⠈⢿⣿⣿⠿⣿⠏⣸⡿⠁⣿⠟⠉⣿⣿⣠⣴⣤⣀⣀⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⢀⣀⣠⣤⣾⠿⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣤⡞⠀⡿⠁⣴⠃⣠⡾⢿⣿⣿⣿⣿⣿⡿⠋⣠⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠻⠛⠋⠉⠀⠀⣠⣤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣷⣴⣧⣼⡏⢰⡏⠀⣼⣿⠿⠿⢿⣿⣇⢰⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⢿⣿⡛⠻⣷⡄⠀⠀⣼⣿⡿⠃⣠⣿⣿⣿⣿⣷⣿⠀⣼⡟⠁⠀⠀⢀⠘⢿⣿⣿⣿⠿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡾]],
[[⠀⢀⣴⣶⣶⣦⣄⡀⣹⣿⣾⠟⠿⡆⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⠀⣿⡇⠀⠀⠀⢿⡿⢸⣿⣿⣥⣤⣼⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⠟⠁]],
[[⢠⣿⣿⣿⣿⣿⣿⣿⡿⢿⣿⣷⣶⣿⣦⣈⠙⣻⣿⣿⣿⣿⣿⣿⡀⢿⡆⣿⡇⠀⠀⠀⠀⠀⠘⠿⠿⠟⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⠟⠁⠀⠀]],
[[⠸⣿⣿⣿⣿⣿⣿⣿⣇⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡘⢿⣿⣿⡄⠀⠀⠀⢠⣴⣷⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⠟⠁⠀⠀⢠⡿]],
[[⠀⢿⣿⣿⡿⠻⣿⣿⣿⣿⣌⠻⣯⠻⣿⣿⣿⣿⡿⠟⠉⠀⠀⠀⠉⠻⣿⣿⣿⣿⣦⡀⠀⠘⢿⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣾⠟⠁⠀⠀⠀⣰⠿⣷]],
[[⠀⠈⠻⣿⣷⣤⣿⣿⣿⣿⣿⣷⣼⣿⣾⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣶⡿⠋⠀⠀⢀⣠⣴⣿⢿⣦⣤]],
[[⠀⠀⠀⠘⠻⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⢿⣿⣿⣶⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣴⣾⡿⠛⠁⠀⠀⢀⣴⣿⣿⣿⣿⣾⠟⠉]],
[[⠀⠀⠀⠀⠀⠀⠉⠛⠛⠛⠛⠋⠁⢀⡀⠀⠀⠀⠀⠀⢀⣤⣶⠀⠀⣀⣀⣀⡀⠀⠀⢠⡈⠛⠻⠿⣿⣿⣿⣿⣷⣶⣶⣾⣿⣿⡿⠿⠛⠋⠁⠀⣴⣶⡾⠟⠋⢁⣀⣽⣿⠟⣡⣶⣿]],
[[⠀⠀⠀⢠⣤⣄⠀⠀⢀⡀⠀⠀⠀⠸⣿⣧⠀⠰⠶⠿⠛⠋⠁⠀⣴⣿⣿⣿⣿⣷⣄⠘⢿⣄⢸⣿⣶⣬⣉⠉⠉⠉⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⢀⣤⣶⣾⣿⣿⡿⠛⢡⣾⡿⠟⢋]],
[[⠀⠀⠀⠀⠙⢿⣿⣿⢋⣡⣶⣦⡀⠀⠈⠿⠃⣀⠀⢠⣶⣤⣀⣰⣿⠀⢹⣟⠻⣿⣿⣷⣄⠉⢿⣿⠛⠿⣮⡻⢦⣄⣀⣀⣴⣶⣶⣶⣶⣦⣀⣿⣿⣯⣉⣉⠉⢀⣀⣀⣈⣉⣀⣠⣿]],
[[⠀⠀⢀⣤⣶⣿⣿⠟⢻⣿⠋⢈⣿⣶⣤⡶⠿⠛⢀⣾⣿⣿⣿⡿⣿⡄⠀⢻⡄⠈⠻⣿⣿⣿⣿⣿⣷⣤⣈⠛⠀⠙⠻⣿⣿⣧⣌⣿⣿⠿⣿⠟⠻⠿⠛⠋⠐⠿⠿⠿⠟⠛⢛⣉⣉]],
[[⠀⠀⣿⣿⣿⡿⠁⠀⢸⣿⣶⣾⣿⣿⣿⣿⣶⠾⠛⠋⠉⠛⢿⣷⣶⣿⣶⠀⠁⠲⣤⡈⠛⢿⣿⣿⣿⣿⣿⣿⣷⣶⣶⣿⣿⣿⣿⣿⣿⠿⠛⢀⣠⣤⣶⣶⡶⠶⠿⠿⠿⠿⠿⠿⢿]],
[[⠀⠀⣿⣿⡿⠁⠀⠀⠀⠙⣿⣿⣿⣿⣿⣿⣄⣠⣴⣿⣿⣿⣿⣿⣿⣿⡿⠀⣠⣤⣬⡙⠲⠤⢿⣿⣿⣿⣿⣿⠿⠿⠿⠟⠛⢛⣉⣁⠀⢀⣶⣿⣋⣉⣀⣀⣀⣀⣠⣤⣤⣤⣤⣤⣤]],
[[⠀⠀⠘⠛⠁⠀⠀⠀⠀⠀⠛⠛⠛⠛⠛⠛⠛⠛⠋⠉⠀⠀⠉⠛⠛⠘⠛⠚⠛⠛⠛⠛⠀⠀⠀⠀⠀⠀⠐⠚⠓⠚⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛]],
}
dashboard.section.buttons.val = {
 --  dashboard.button("f", " " .. " find file", ":telescope find_files <cr>"),
 --  -- dashboard.button("e", " " .. " new file", ":ene <bar> startinsert <cr>"),
 --  dashboard.button("p", " " .. " find project", ":lua require('telescope').extensions.projects.projects()<cr>"),
 --  dashboard.button("r", " " .. " recent files", ":telescope oldfiles <cr>"),
 -- -- dashboard.button("t", " " .. " find text", ":telescope live_grep <cr>"),
 --  dashboard.button("c", " " .. " config", ":e ~/.config/nvim/init.lua <cr>"),
 --  dashboard.button("q", " " .. " quit", ":qa<cr>"),

  dashboard.button("e", "  Explorer", ":NvimTreeToggle<CR>"),
  dashboard.button("f", "  Find File", ":Telescope find_files <CR>"),
  dashboard.button("r", "  Recent Files", ":Telescope oldfiles <CR>"),
  dashboard.button("t", "  TodoList", ":e ~/documents/todolist <CR>"),
  dashboard.button("c", "  Config", ":e ~/.config/nvim/init.lua <CR>"),
  dashboard.button("q", "  Quit", ":qa<CR>"),
}

dashboard.section.buttons.opts = {
  spacing = 0,
  position = "center"
}

local function footer()
  return "Leo Mooney"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
