local RUNTEST = require "test.testrunner"
local test = {}

function test.test_success()
    RUNTEST("painkillers", "awwwwwddwddwwwwwwddwwssaassssssddddddddddsssss")
    assert_true(TESTSTATE.finished)
end


return test
