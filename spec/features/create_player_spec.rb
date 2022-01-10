feature "create player" do
  scenario "create a new player in the game" do
    visit('/')
    fill_in "player_name", with: "John"
    click_button "Submit"
    expect(page).to have_content "John"
  end
end