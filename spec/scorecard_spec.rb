require 'scorecard'
describe Scorecard do
  it "returns 10 for bid 0 and tricks 0" do
    expect(subject.hand_score(0,0)).to eq 10
  end
  it "returns 15 for bid 1 tricks 1" do
    expect(subject.hand_score(1,1)).to eq 15
  end
  it "loses points when bid not made" do
    expect(subject.hand_score(1,0)).to eq -5
  end
end