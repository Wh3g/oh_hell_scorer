# frozen_string_literal: true

feature 'can add score for each player' do
  scenario 'can add a score and see it on the screen' do
    visit '/'
    create_player('john')
    add_score('john')
    expect(page).to have_content '15'
  end

  scenario 'can add a score for multiple players' do
    visit '/'
    create_player('john')
    create_player('james')
    add_score('james')
    expect(page).to have_content '15'
  end
end
