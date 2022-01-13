# frozen_string_literal: true

require_relative 'scorecard'
require_relative 'player'

# creates the game and adds players
class Game
  attr_reader :players

  def initialize
    @players = []
  end

  def add_player(name)
    raise 'Sorry, that name is already taken' unless player_select(name).nil?

    @players << Player.new(name: name)
  end

  def game_scores
    scores = []
    @players.each do |player|
      scores << player.print_scores
    end
    scores
  end

  def add_score(name, bid, tricks)
    player = player_select(name)
    raise 'Sorry, that name is incorrect' if player.nil?

    player.add_score(bid, tricks)
  end

  def game_length
    scores_lengths = []
    game_scores.each do |player_scores|
      scores_lengths << player_scores.length
    end
    scores_lengths.max
  end

  private

  def player_select(name)
    @players.find { |player| player.name == name }
  end
end
