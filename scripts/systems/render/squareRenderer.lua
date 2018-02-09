--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 09/02/2018
-- Time: 19:34
-- To change this template use File | Settings | File Templates.
--

return function(entity, args)
    love.graphics.rectangle( "fill", entity.position.x*SQUARESIZE, entity.position.y*SQUARESIZE, SQUARESIZE, SQUARESIZE )
    pprint(entity)
    print(entity.position.x*SQUARESIZE, entity.position.y*SQUARESIZE, SQUARESIZE, SQUARESIZE )
end