require_relative "./../class/map"
require_relative "./../class/cursor"

class Test
  
  def assert_move_Map
    raise '' unless Map.new(5,5, Cursor.new(3,3))
  end
end

test = Test.new
test.assert_move_Map