---@class CustomModule
local M = {}

---@return string
M.echo_python_version = function(params)
	local results = vim.fn.system("python" .. " " .. params)

	return results
end

return M
