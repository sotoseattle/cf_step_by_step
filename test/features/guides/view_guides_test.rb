require './test/test_helper'

feature 'View general list of guides' do
  scenario 'see all guides' do
    visit guides_path
    page.text.must_include 'Bishop'
    page.text.must_include '747'
  end
end
