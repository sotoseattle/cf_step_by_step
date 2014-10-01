require './test/test_helper'

feature 'Edit a step' do
  scenario 'happy path' do
    visit edit_guide_step_path(guides(:guide_1), steps(:step_1))

    fill_in 'Name', with: 'ask flight attendant for more mini drinks'
    click_on 'Submit'

    page.text.must_include 'step successfully updated'
    page.text.must_include 'ask flight attendant for more '
  end

  scenario 'fail to submit form to update a new step' do
    visit edit_guide_step_path(guides(:guide_1), steps(:step_1))

    fill_in 'Name', with: ''
    click_on 'Submit'

    page.text.must_include 'error prohibited this step from being saved'
    page.text.must_include 'blank'
  end
end
