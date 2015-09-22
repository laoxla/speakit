require "test_helper"

class CanAccessHomeTest < Capybara::Rails::TestCase
  test "sanity" do

    visit root_path


    click_link "New post"

    fill_in 'Title', with: 'come here'
    fill_in 'Body', with: 'this is just a test'

    click_button "Create Post"

    assert_content page, "come here"

  end
end
