require 'player'

describe Player do
  describe "#initialize" do
    it "saves a name" do
      player = Player.new(name: "John")
      expect(player.name).to eq "John"
    end

    # it "saves a score" do
    #   expect(subject.scores).to eq []
    # end
  end

end