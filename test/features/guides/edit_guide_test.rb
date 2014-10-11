require './test/test_helper'

feature 'Edit a guide' do
  scenario 'happy path' do
    visit edit_guide_path(guides(:guide_3))

    fill_in 'Name', with: 'guide to End Hunger in a Week'
    click_on 'Submit'

    page.text.must_include 'guide successfully updated'
    page.text.must_include 'guide to End Hunger in a Week'
  end

  scenario 'fail to submit form to update a new guide' do
    visit edit_guide_path(guides(:guide_3))

    fill_in 'Name', with: 'Q'
    click_on 'Submit'

    page.text.must_include 'error prohibited this guide from being saved'
    page.text.must_include 'Name is too short'
  end
end
