feature 'Add new song to artist', js: true do
  scenario 'add a new song to an artist' do
    # Point your browser towards the todo path
    visit artist_path(2)

    # Enter song information in the text field
    fill_in 'song_title', with: 'Yabadabadoo'
    fill_in 'song_release_date_1i', with: '2016'
    fill_in 'song_release_date_2i', with: '10'
    fill_in 'song_release_date_3i', with: '10'

    # Press enter (to submit the form)
    page.execute_script("$('form').submit()")

    # Expect the new task to be displayed in the list of tasks
    expect(page).to have_content('Yabadabadoo')
  end
end
