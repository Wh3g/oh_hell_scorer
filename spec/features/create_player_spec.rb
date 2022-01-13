# frozen_string_literal: true

feature 'create player' do
  context 'with 1 player' do
    before do
      visit('/')
      create_player('John')
    end

    scenario 'create a new player in the game' do
      expect(page).to have_content 'John'
    end
    context 'with 2 players' do
      before do
        create_player('James')
        page
      end
      scenario 'can create multiple players' do
        expect(page).to have_content 'James'
      end
    end
  end
end
