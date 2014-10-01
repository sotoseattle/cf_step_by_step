require './test/test_helper'

feature 'Create a new step' do
  before(:each) do
    @initial_steps_count = Step.count
  end

  scenario 'happy path' do
    visit guide_path(guides(:guide_1))
    click_on 'Create New Step'

    fill_in 'Name', with: 'Scrub the toilet clean'
    click_on 'Submit'

    Step.count.must_equal @initial_steps_count + 1
    page.text.must_include 'Step created successfully'
    page.text.must_include 'Scrub the'
    page.status_code.must_equal 200
  end

  scenario 'fail to submit form to create a new guide' do
    visit guide_path(guides(:guide_1))
    click_on 'Create New Step'
    click_on 'Submit'

    Step.count.must_equal @initial_steps_count
    page.text.must_include 'prohibited this step from being saved'
    page.text.must_include 'Name can\'t be blank'
  end
end
