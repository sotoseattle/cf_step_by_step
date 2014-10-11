require './test/test_helper'

feature 'Delete a guide' do
  scenario 'delete and destroy a guide' do
    visit guide_path(guides(:guide_2))
    total_guides = Guide.count

    page.find(:link, text: 'Remove').click

    page.text.wont_include 'Bishop'
    Guide.count.must_equal total_guides - 1
  end
end
