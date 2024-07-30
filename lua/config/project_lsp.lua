local function load_local_config()
  local local_config = vim.fn.getcwd() .. '/.nvim/init.lua'
  if vim.fn.filereadable(local_config) == 1 then
    dofile(local_config)
  end
end

load_local_config()
