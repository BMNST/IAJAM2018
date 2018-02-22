local RUNTEST = require "test.testrunner"
local test = {}

function test.test_death()
    RUNTEST("rainbowCookie", "sssdsssswwsasssdsddddddadadaddaaddwwwadadadadwsadwwwwadawsaaaass")
    assert_true(TESTSTATE.death)
end

function test.test_success()
    RUNTEST("rainbowCookie", "sssdssswsasssdsddddddadadaddaaddwwwadadadadwsadwwwwadawsaaaass")
    assert_true(TESTSTATE.finished)
end
return test
