# frozen_string_literal: true

# Creates the player which saves the scorecard
class Player
  attr_reader :name

  def initialize(name:, scorecard: Scorecard.new)
    @name = name
    @scorecard = scorecard
  end

  def print_scores
    @scorecard.scores
  end

  def add_score(bid, tricks)
    @scorecard.hand_score(bid, tricks)
  end
end
