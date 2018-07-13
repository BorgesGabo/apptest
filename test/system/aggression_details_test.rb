require "application_system_test_case"

class AggressionDetailsTest < ApplicationSystemTestCase
  setup do
    @aggression_detail = aggression_details(:one)
  end

  test "visiting the index" do
    visit aggression_details_url
    assert_selector "h1", text: "Aggression Details"
  end

  test "creating a Aggression detail" do
    visit aggression_details_url
    click_on "New Aggression Detail"

    fill_in "Aggression Date", with: @aggression_detail.aggression_date
    fill_in "Aggression File", with: @aggression_detail.aggression_file
    fill_in "Aggression Mechanism", with: @aggression_detail.aggression_mechanism
    fill_in "Aggression Scene", with: @aggression_detail.aggression_scene
    fill_in "Aggression Time", with: @aggression_detail.aggression_time
    click_on "Create Aggression detail"

    assert_text "Aggression detail was successfully created"
    click_on "Back"
  end

  test "updating a Aggression detail" do
    visit aggression_details_url
    click_on "Edit", match: :first

    fill_in "Aggression Date", with: @aggression_detail.aggression_date
    fill_in "Aggression File", with: @aggression_detail.aggression_file
    fill_in "Aggression Mechanism", with: @aggression_detail.aggression_mechanism
    fill_in "Aggression Scene", with: @aggression_detail.aggression_scene
    fill_in "Aggression Time", with: @aggression_detail.aggression_time
    click_on "Update Aggression detail"

    assert_text "Aggression detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Aggression detail" do
    visit aggression_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Aggression detail was successfully destroyed"
  end
end
