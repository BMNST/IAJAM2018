local RUNTEST = require "test.testrunner"
local test = {}

function test.test_success()
    RUNTEST("stoppingLasers", "sssssassswwswssddaddddwwdddadadssaadadawwwwaawwwdddd")
    assert_true(TESTSTATE.finished)
end


return test
