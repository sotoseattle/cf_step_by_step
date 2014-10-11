require './test/test_helper'

feature 'Create a new guide' do
  scenario 'happy path' do
    visit guides_path
    click_on 'Create New Guide'

    fill_in 'Name', with: 'How to Install a Toilet'
    click_on 'Submit'

    page.text.must_include 'Guide was successfully created'
    page.text.must_include 'How to Install a Toilet'
    page.status_code.must_equal 200
  end

  scenario 'fail to submit form to create a new guide' do
    visit guides_path
    click_on 'Create New Guide'

    initial_guides_count = Guide.count
    fill_in 'Name', with: 'Q'
    click_on 'Submit'

    Guide.count.must_equal initial_guides_count
    page.text.must_include 'prohibited this guide from being saved'
    page.text.must_include 'Name is too short'
  end
end
