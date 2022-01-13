# frozen_string_literal: true

def create_player(name)
  fill_in 'player_name', with: name
  click_button 'Add player'
end
