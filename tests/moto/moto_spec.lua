local plugin = require("moto")

-- simple util
local function version_extract(version)
	local v = tonumber(string.match(version, "%d+%.%d+"))
	return v
end

describe("setup", function()
	it("works with default", function()
		local result = version_extract(plugin.python())
		assert(result >= 3.10, "check version param = --version")
	end)

	it("works with custom params", function()
		plugin.setup({ opt = "--version" })
		local result = version_extract(plugin.python())
		assert(result >= 3.10, "pass params with param = --version")
	end)
end)
