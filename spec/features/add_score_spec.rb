feature "can add score for each player" do
  scenario "can add a score and see it on the screen" do
    visit '/'
    create_player("john")
    fill_in "bid", with: "1"
    fill_in "tricks", with: "1"
    click_button "Submit"
    expect(page).to have_content "15"
  end
end