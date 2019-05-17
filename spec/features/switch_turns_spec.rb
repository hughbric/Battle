feature 'Switch turns' do
  scenario "checks first player's turn" do
    sign_in_and_play
    expect(page).to have_content("David's turn")
  end

  scenario 'after player 1 attacks' do
    sign_in_and_play
    click_button 'Attack'
    click_link 'Next Turn'
    expect(page).not_to have_content "David's turn"
    expect(page).to have_content "Goliath's turn"
  end
end
