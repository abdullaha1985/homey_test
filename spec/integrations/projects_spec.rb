require 'rails_helper'

RSpec.describe 'create Project', type: :system do
  scenario 'valid name and state' do
    visit new_project_path
    
    fill_in 'Name', with: 'Project 1'
    select 'active', from: 'Status'
    click_button 'Create Project'
    
    expect(page).to have_content("Project was successfully created")
    expect(page).to have_content("Project 1")
  end
end