require_relative "./cursor"

class Map
  attr_reader :height, :width, :cursor

  def initialize(height, width, cursor)
    @height = height
    @width = width
    @cursor = cursor
  end

  def move(direction)
    case direction
    when "left"
      return Map.new(5,5, Cursor.new(@cursor.x - 1, @cursor.y))
    when "right"
      return Map.new(5,5, Cursor.new(@cursor.x + 1, @cursor.y))
    when "down"
      return Map.new(5,5, Cursor.new(@cursor.x, @cursor.y - 1))
    when "up"
      return Map.new(5,5, Cursor.new(@cursor.x, @cursor.y + 1))
    end
  end

end
