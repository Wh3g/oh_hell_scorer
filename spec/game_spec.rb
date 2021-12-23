# frozen_string_literal: true

require 'game'

describe Game do
  context 'with 1 player' do
    
    before do
      @player_1 = subject.add_player('john')
    end

    describe '#add_player' do
      it 'adds a player' do
        expect(subject.players).to eq(@player_1)
      end
    end

    context 'with 2 players' do
      before do
        @player_2 = subject.add_player('james')
      end
      describe '#game_scores' do
        it "prints the players\'s scores" do
          expect(subject.players[0]).to receive(:print_scores)
          expect(subject.players[1]).to receive(:print_scores)
          subject.game_scores
        end
      end
    end
  end
end
