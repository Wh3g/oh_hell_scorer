def create_player(name)
  fill_in "player_name", with: name
  click_button "Submit"
end