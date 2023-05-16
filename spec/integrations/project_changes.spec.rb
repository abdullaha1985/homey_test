require 'rails_helper'

RSpec.describe 'create Comment', type: :system do

  let(:original_name) { 'Test Project' }

	before do
		Project.create(name: original_name, status: :active)	
	end

  scenario 'valid Body and Author' do
    visit projects_path
    
    click_link 'Edit'
    fill_in 'Name', with: 'Project updated!'
    select 'completed', from: 'Status'
    click_button 'Update Project'
    
    expect(page).to have_content("Name: Project updated!")
    expect(page).to have_content("State: completed")
    expect(page).to have_content("Previous name: #{original_name}")
    expect(page).to have_content("Changed to name: Project updated!")
  end
end
