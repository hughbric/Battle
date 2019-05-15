feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'David'
    fill_in :player_2_name, with: 'Goliath'
    click_button 'Submit'
    expect(page).to have_content('David vs. Goliath')
  end
end