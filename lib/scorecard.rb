class Scorecard
  def hand_score(bid, tricks)
    if bid == tricks
      10 + (bid * 5)
    elsif bid > tricks 
      (bid - tricks) * -5
    end
  end
end