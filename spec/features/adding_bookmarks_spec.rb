# As a user,
# So that I can refer back to my favourite websites
# I'd like to add bookmarks to my bookmark manager.

feature 'add bookmarks to the bookmark manager' do
  scenario 'the user can add a bookmark to the database' do
    visit('/bookmarks/new')
    fill_in('url', with: 'www.bbc.co.uk')
    click_button 'Submit'
    save_and_open_page
    expect(page).to have_content 'www.bbc.co.uk'
  end
end
