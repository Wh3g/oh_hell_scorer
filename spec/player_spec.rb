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
end
