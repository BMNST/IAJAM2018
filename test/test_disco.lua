local RUNTEST = require "test.testrunner"
local test = {}

function test.test_success()
    RUNTEST("disco", "wddswsddswswswswswswsddddadsadwwsaaaadadddsdadaaawadaddddadadsadaaaadwddsdawdaaaadadadadadadsadadadadadawdddsdawwddddd")
    assert_true(TESTSTATE.finished)
end


function test.test_too_short()
    RUNTEST("disco", "wddswsddswswswswswswsddddadsadwwsaaaadadddsdadaaawadaddddadadsadaaaadwddsdawdaaaadadadadadadsadadadadadawdddsdawwdddd")
    assert_false( TESTSTATE.finished)
end


function test.test_death()
    RUNTEST("disco", "s")
    assert_true(TESTSTATE.death)
end

return test
