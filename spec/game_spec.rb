require 'game'

describe Game do
  describe '#add_player' do
    it "adds a player" do
      subject.add_player("john")
      expect(subject.players.last.name).to eq("john")
    end
  end
end