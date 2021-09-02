require 'scorecard'
describe Scorecard do
  describe "#initialize" do
    it "saves the scores" do
      subject.hand_score(0, 0)
      subject.hand_score(1, 1)
      subject.hand_score(1, 0)
      expect(subject.scores).to eq [10, 15, -5]
    end
  end

  describe "#hand_score" do
    it "returns 10 for bid 0 and tricks 0" do
      expect(subject.hand_score(0, 0)).to eq [10]
    end
    it "returns 15 for bid 1 tricks 1" do
      expect(subject.hand_score(1, 1)).to eq [15]
    end
    it "loses points when bid > tricks" do
      expect(subject.hand_score(1, 0)).to eq [-5]
    end
    it "lose points when tricks > bid" do
      expect(subject.hand_score(0, 1)).to eq [-5]
    end
  end
end