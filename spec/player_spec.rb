require 'player'

describe Player do
  describe "#initialize" do
    it "saves a name" do
      player = Player.new(name: "John")
      expect(player.name).to eq "John"
    end
  end
end