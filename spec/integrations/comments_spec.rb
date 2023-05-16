require 'rails_helper'

RSpec.describe 'create Comment', type: :system do

	before do
		Project.create(name: 'Test Project', status: :active)	
	end

  scenario 'valid Body and Author' do
    visit projects_path
    
    click_link 'Show'
    click_link 'Add New Comment'
    fill_in 'Comment', with: 'Great Project'
    fill_in 'User name', with: 'Jim'
    click_button 'Create Comment'
    
    expect(page).to have_content("Comment was successfully created")
    expect(page).to have_content('Great Project')
  end
end
