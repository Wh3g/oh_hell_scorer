# frozen_string_literal: true

feature 'can add score for each player' do
  before do
    visit '/'
    create_player('john')
  end
  
  scenario 'can add a score and see it on the screen' do
    add_score('john')
    expect(page).to have_content '15'
  end

  scenario 'can add a score for multiple players' do
    create_player('james')
    add_score('james')
    expect(page).to have_content '15'
  end

  scenario 'the scores adds up cumalitively' do
    add_score('john')
    add_score('john')
    expect(page).to have_content '30'
  end
end
