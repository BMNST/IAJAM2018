local outputter = {}

local e = function(str)
	str = str:gsub("|", "||")
	str = str:gsub("'", "|'")
	str = str:gsub("\n", "|n")
	str = str:gsub("\r", "|r")
	str = str:gsub("%[", "|[")
	str = str:gsub("]", "|]")
	return str
end

local function countTable(tabl)
	local count = 0
	for _, _ in pairs(tabl) do
		count = count + 1
	end
	return count
end
outputter.begin = function(results, suites)
end

outputter.done = function(results)
	print("Passed: " .. countTable(results.pass) .. " of " .. countTable(results.pass) + countTable(results.fail))
end

outputter.begin_suite = function(res, tests)
end

outputter.suite_load_error = function(name)
end

outputter.end_suite = function(res)
end

outputter.pre_test = function(name, suite)
end

outputter.test_error = function(name, suite, err)
	if err.reason ~= nil then
		print(">>> Error in test ['" .. e(suite.name) .. "." .. e(name) .. "' message='" .. e(tostring(err.reason)) .. "']")
		return
	end
	r = debug.traceback(err)
	trace = string.sub(r, #tostring(err) + 2)
  	print(">>> Error in test ['" .. e(suite.name) .. "." .. e(name) .. "' message='" .. e(tostring(err)) .. "' details='" .. e(trace) .. "']")
end

outputter.post_test = function(name, suite, result)
end

return outputter