return function(a)
    print("-------------------\n " .. tostring(a) .. "\n" .. (require 'lib.inspect'(a)) .. "\n-------------------")
end