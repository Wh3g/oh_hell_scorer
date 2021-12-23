# frozen_string_literal: true

require 'player'

describe Player do
  subject { Player.new(name: 'John') }

  describe '#initialize' do
    it 'saves a name' do
      expect(subject.name).to eq 'John'
    end
  end

  describe '#print_scores' do
    it 'calls Scorecard.scores' do
      expect_any_instance_of(Scorecard).to receive(:scores)
      subject.print_scores
    end
  end

  describe '#add_score' do
    it 'calls Scorecard.hand_score' do
      expect_any_instance_of(Scorecard).to receive(:hand_score)
      subject.add_score(0, 0)
    end
  end
end
