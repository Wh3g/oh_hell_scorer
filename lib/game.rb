# frozen_string_literal: true

require_relative 'scorecard'

class Game
  attr_reader :players

  def initialize
    @players = []
  end

  def add_player(name)
    @players << Player.new(name: name)
  end

  def game_scores
    scores = []
    @players.each do | player |
      scores << player.print_scores
    end
    scores
  end

  def add_score(name, bid, tricks)
    player = @players.find { | player | player.name == name }
    player.add_score(bid, tricks)
  end
end
