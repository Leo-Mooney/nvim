local status, winshift = pcall(require, "winshift")
if not status then
  return
end
winshift.setup()
