# frozen_string_literal: true

require_relative 'scorecard'
require_relative 'player'

class Game
  attr_reader :players

  def initialize
    @players = []
  end

  def add_player(name)
    unless player_select(name).nil?
      fail "Sorry, that name is already taken"
    end
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
    player = player_select(name)
    if player.nil?
      fail 'Sorry, that name is incorrect'
    end
    player.add_score(bid, tricks)
  end

  private
  def player_select(name)
    @players.find { | player | player.name == name }
  end
end
