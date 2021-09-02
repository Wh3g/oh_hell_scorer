class Scorecard
  def hand_score(bid, tricks)
    if bid == tricks
      calc_score_bid_made(tricks)
    elsif bid > tricks 
      calc_score_bid_not_made(bid - tricks)
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