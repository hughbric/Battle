class Player
  attr_reader :name
  DEFAULT_HIT_POINTS = 90

  def initialize(name)
    @name = name
    @hit_points = DEFAULT_HIT_POINTS
  end

  def hit_points
    @hit_points
  end

  def receive_damage
    @hit_points -= 10
  end
end
