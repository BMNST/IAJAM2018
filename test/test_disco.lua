local RUNTEST = require "test.testrunner"
local test = {}

function test.test_success()
    RUNTEST("disco", "wddswsddswswswswswswsddddadsadwwsaaaadadddsdadaaawadaddddadadsadaaaadwddsdawdaaaadadadadadadsadadadadadawdddsdawwddddd")
    assert(TESTSTATE.finished)
    print("SUCCESS")
end


function test.test_too_short()
    RUNTEST("disco", "wddswsddswswswswswswsddddadsadwwsaaaadadddsdadaaawadaddddadadsadaaaadwddsdawdaaaadadadadadadsadadadadadawdddsdawwdddd")
    assert(not TESTSTATE.finished)
    print("SUCCESS")
end


function test.test_death()
    RUNTEST("disco", "s")
    assert(TESTSTATE.death)
    print("SUCCESS")
end

return test
