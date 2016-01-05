class Result
  attr_accessor :brick, :filled, :vertical
  alias_method :filled?, :filled
  alias_method :vertical?, :vertical

  def initialize
    @filled = false
  end
end
