-- main module file
local python = require("moto.python")

---@class Config
---@field opt string Your config option
local config = {
	opt = "--version",
}

---@class Moto
local M = {}

---@type Config
M.config = config

---@param args Config?
-- you can define your setup function here. Usually configurations can be merged, accepting outside params and
-- you can also put some validation here for those.
M.setup = function(args)
	M.config = vim.tbl_deep_extend("force", M.config, args or {})
end

M.python = function()
	return python.echo_python_version(M.config.opt)
end

return M
