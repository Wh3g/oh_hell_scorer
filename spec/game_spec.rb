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

      it 'has unique player names' do
        expect{ subject.add_player('john') }.to raise_error 'Sorry, that name is already taken'
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

      describe '#add_score' do
        it "adds a score for a player" do
          expect(subject.players[0]).to receive(:add_score)
          subject.add_score('john', 1, 1)
        end
      end
    end
  end
end
