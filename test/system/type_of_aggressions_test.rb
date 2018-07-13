require "application_system_test_case"

class TypeOfAggressionsTest < ApplicationSystemTestCase
  setup do
    @type_of_aggression = type_of_aggressions(:one)
  end

  test "visiting the index" do
    visit type_of_aggressions_url
    assert_selector "h1", text: "Type Of Aggressions"
  end

  test "creating a Type of aggression" do
    visit type_of_aggressions_url
    click_on "New Type Of Aggression"

    fill_in "Non Sexual Violence", with: @type_of_aggression.non_sexual_violence
    fill_in "Sexual Violence", with: @type_of_aggression.sexual_violence
    click_on "Create Type of aggression"

    assert_text "Type of aggression was successfully created"
    click_on "Back"
  end

  test "updating a Type of aggression" do
    visit type_of_aggressions_url
    click_on "Edit", match: :first

    fill_in "Non Sexual Violence", with: @type_of_aggression.non_sexual_violence
    fill_in "Sexual Violence", with: @type_of_aggression.sexual_violence
    click_on "Update Type of aggression"

    assert_text "Type of aggression was successfully updated"
    click_on "Back"
  end

  test "destroying a Type of aggression" do
    visit type_of_aggressions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Type of aggression was successfully destroyed"
  end
end
