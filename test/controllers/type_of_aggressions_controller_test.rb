require 'test_helper'

class TypeOfAggressionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_of_aggression = type_of_aggressions(:one)
  end

  test "should get index" do
    get type_of_aggressions_url
    assert_response :success
  end

  test "should get new" do
    get new_type_of_aggression_url
    assert_response :success
  end

  test "should create type_of_aggression" do
    assert_difference('TypeOfAggression.count') do
      post type_of_aggressions_url, params: { type_of_aggression: { non_sexual_violence: @type_of_aggression.non_sexual_violence, sexual_violence: @type_of_aggression.sexual_violence } }
    end

    assert_redirected_to type_of_aggression_url(TypeOfAggression.last)
  end

  test "should show type_of_aggression" do
    get type_of_aggression_url(@type_of_aggression)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_of_aggression_url(@type_of_aggression)
    assert_response :success
  end

  test "should update type_of_aggression" do
    patch type_of_aggression_url(@type_of_aggression), params: { type_of_aggression: { non_sexual_violence: @type_of_aggression.non_sexual_violence, sexual_violence: @type_of_aggression.sexual_violence } }
    assert_redirected_to type_of_aggression_url(@type_of_aggression)
  end

  test "should destroy type_of_aggression" do
    assert_difference('TypeOfAggression.count', -1) do
      delete type_of_aggression_url(@type_of_aggression)
    end

    assert_redirected_to type_of_aggressions_url
  end
end
