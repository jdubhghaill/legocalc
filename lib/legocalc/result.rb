class Result
  attr_accessor :brick, :filled, :vertical
  alias_method :filled?, :filled
  alias_method :vertical?, :vertical

  def initialize
    @filled = false
    @vertical = false
  end

  def draw(image, x, y)
    if !@brick.nil?
      @brick.draw(image, x, y, @vertical)
    end
  end
end
