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

outputter.begin = function(results, suites)
	print("##teamcity[blockOpened name='LoveTest']")
end

outputter.done = function(results)
	print("##teamcity[blockClosed name='LoveTest']")
end

outputter.begin_suite = function(res, tests)
	print("##teamcity[testSuiteStarted name='" .. e(res.name) .. "']")
end

outputter.suite_load_error = function(name)
	print("##teamcity[buildProblem description='Suite " .. e(name) .. "failed to load.']")
end

outputter.end_suite = function(res)
	print("##teamcity[testSuiteFinished name='".. e(res.name) .. "']")
end

outputter.pre_test = function(name, suite)
	print("##teamcity[testStarted name='" .. e(suite.name) .. "." .. e(name) .. "' captureStandardOutput='true']")
end

outputter.test_error = function(name, suite, err)
	if err.reason ~= nil then
		print("##teamcity[testFailed name='" .. e(suite.name) .. "." .. e(name) .. "' message='" .. e(tostring(err.reason)) .. "']")
		return
	end
	r = debug.traceback(err)
	trace = string.sub(r, #tostring(err) + 2)
  	print("##teamcity[testFailed name='" .. e(suite.name) .. "." .. e(name) .. "' message='" .. e(tostring(err)) .. "' details='" .. e(trace) .. "']")
end

outputter.post_test = function(name, suite, result)
	print("##teamcity[testFinished name='" .. e(suite.name) .. "." .. e(name) .. "' duration='" .. e(tostring(result.elapsed)) .. "']")
end

return outputter