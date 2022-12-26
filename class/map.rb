class Map
  attr_reader :height, :width, :cursor

  def initialize(height, width, cursor)
    @height = height
    @width = width
  end

  def move(direction)
    case direction
    when "left"
      return Map.new(5,5, Cursor.new(x-1,y))
    when "right"
      return Map.new(5,5, Cursor.new(x+1,y))
    when "up"
      return Map.new(5,5, Cursor.new(x,y+1))
    when "down"
      return Map.new(5,5, Cursor.new(x,y-1))
    end
  end

end