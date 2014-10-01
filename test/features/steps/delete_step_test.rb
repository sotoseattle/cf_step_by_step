require './test/test_helper'

feature 'Delete a step' do
  scenario 'delete and destroy a step' do
    visit guide_step_path(guides(:guide_1), steps(:step_1))
    page.text.must_include 'open plane door in mid air'
    page.find(:link, text: 'Remove').click

    page.text.wont_include 'open plane door in mid air'
    Step.find_by(name: 'open plane door in mid air').must_be_nil
  end
end
