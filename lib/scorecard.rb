# frozen_string_literal: true

# Calculates and saves the scores for each player
class Scorecard
  attr_reader :scores

  def initialize
    @scores = []
  end

  def hand_score(bid, tricks)
    if bid == tricks
      @scores << calc_score_bid_made(tricks)
    elsif bid > tricks
      @scores << calc_score_bid_not_made(bid - tricks)
    elsif tricks > bid
      @scores << calc_score_bid_not_made(tricks - bid)
    end
  end

  private

  def calc_score_bid_made(tricks)
    10 + (tricks * 5)
  end

  def calc_score_bid_not_made(trick_diff)
    trick_diff * -5
  end
end
