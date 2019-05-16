feature 'Attack player 2' do
  scenario 'gets a confimation message' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content('David has struck Goliath')
  end
end

