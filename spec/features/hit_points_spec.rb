feature 'View hit points' do
  scenario 'see Player 2 hit points' do
    visit('/')
    fill_in :player_1_name, with: 'David'
    fill_in :player_2_name, with: 'Goliath'
    click_button 'Submit'
    expect(page).to have_content 'Goliath: 90HP'
  end
end