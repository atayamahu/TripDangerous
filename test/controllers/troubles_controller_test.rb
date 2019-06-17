require 'test_helper'

class TroublesControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get troubles_top_url
    assert_response :success
  end

  test "should get country" do
    get troubles_country_url
    assert_response :success
  end

  test "should get region" do
    get troubles_region_url
    assert_response :success
  end

  test "should get index" do
    get troubles_index_url
    assert_response :success
  end

  test "should get new" do
    get troubles_new_url
    assert_response :success
  end

  test "should get create" do
    get troubles_create_url
    assert_response :success
  end

end
