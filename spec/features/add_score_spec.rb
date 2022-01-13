# frozen_string_literal: true

feature 'can add score for each player' do
  scenario 'can add a score and see it on the screen' do
    visit '/'
    create_player('john')
    fill_in 'bid', with: 1
    fill_in 'tricks', with: 1
    click_button 'Submit'
    expect(page).to have_content '15'
  end

  scenario 'can add a score for multiple players' do
    visit '/'
    create_player('john')
    create_player('james')
    fill_in 'james_bid', with: 1
    fill_in 'james_tricks', with: 1
    click_button 'james_submit'
    expect(page).to have_content '15'
  end
end
