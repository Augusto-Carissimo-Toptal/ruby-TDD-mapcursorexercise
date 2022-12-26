require_relative "./../class/map"
require_relative "./../class/cursor"

class Test
  
  def assert_Map(map)
    raise "#{map.inspect}" unless map
  end

  def assert_Cursor(cursor)
    raise "#{cursor.inspect}" unless cursor
  end
  
  def assert_move_Map(map, direction, new_map)
    if direction == 'left' && direction == 'right'
      raise "#{map.inspect}" unless map.move(direction).cursor.x == new_map.cursor.x
    elsif direction == 'down' && direction == 'up'
      raise "#{map.inspect}" unless map.move(direction).cursor.y == new_map.cursor.y
    end
  end
end

test = Test.new
test.assert_Map(Map.new(5,5,Cursor.new(3,3)))
test.assert_Cursor(Cursor.new(3,3))
test.assert_move_Map(Map.new(5,5, Cursor.new(3,3)), 'left', Map.new(5,5, Cursor.new(2,3)))
test.assert_move_Map(Map.new(5,5, Cursor.new(3,3)), 'right', Map.new(5,5, Cursor.new(4,3)))
test.assert_move_Map(Map.new(5,5, Cursor.new(3,3)), 'down', Map.new(5,5, Cursor.new(3,2)))
test.assert_move_Map(Map.new(5,5, Cursor.new(3,3)), 'up', Map.new(5,5, Cursor.new(3,4)))