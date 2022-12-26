require_relative "./../class/map"
require_relative "./../class/cursor"

class Test
  
  def assert_Map
    map = Map.new(5,5,Cursor.new(3,3))
    raise "#{map.inspect}" unless map
  end

  def assert_Cursor
    cursor = Cursor.new(3,3)
    raise "#{cursor.inspect}" unless cursor
  end
  
  def assert_move_Map
    map = Map.new(5,5, Cursor.new(3,3))
    raise "#{map.inspect}" unless map.move('left').cursor.x == Map.new(5,5, Cursor.new(2,3)).cursor.x
  end
end

test = Test.new
test.assert_Map
test.assert_move_Map