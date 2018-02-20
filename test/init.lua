local RUNTEST = require "test.testrunner"


RUNTEST("hungover", "aaaawwwwwwwaaaawwwa")
assert(TESTSTATE.finished)

RUNTEST("disco", "wddswsddswswswswswswsddddadsadwwsaaaadadddsdadaaawadaddddadadsadaaaadwddsdawdaaaadadadadadadsadadadadadawdddsdawwdddddd")
assert(TESTSTATE.finished)

RUNTEST("disco", "s")
assert(TESTSTATE.death)
RUNTEST("disco", "d")
assert(TESTSTATE.death)
