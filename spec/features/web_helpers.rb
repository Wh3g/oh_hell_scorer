# frozen_string_literal: true

def create_player(name)
  fill_in 'player_name', with: name
  click_button 'Add player'
end

def add_score(name)
  fill_in "#{name}_bid", with: 1
  fill_in "#{name}_tricks", with: 1
  click_button "#{name}_submit"
end