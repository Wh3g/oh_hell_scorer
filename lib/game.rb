require_relative 'scorecard'

class Game
  
  attr_reader :players
  
  def initialize
    @players = []
  end

  def add_player(name)
    @players << Player.new(name: name)
  end
end