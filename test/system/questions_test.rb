require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit questions_url
  #
  #   assert_selector "h1", text: "Questions"
  # end
  test "visiting /ask renders the form" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask!"
    assert_text "I don't care, get dressed and go to work!"
    take_screenshot
  end
end
