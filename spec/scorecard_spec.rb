require 'scorecard'
describe Scorecard do
  it "returns 10 for bid 0 and tricks 0" do
    expect(subject.hand_score(0,0)).to eq 10
  end
end