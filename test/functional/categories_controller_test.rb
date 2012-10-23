require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  test "should get action" do
    get :action
    assert_response :success
  end

  test "should get adventure" do
    get :adventure
    assert_response :success
  end

  test "should get misc" do
    get :misc
    assert_response :success
  end

  test "should get music" do
    get :music
    assert_response :success
  end

  test "should get puzzle" do
    get :puzzle
    assert_response :success
  end

  test "should get shooting" do
    get :shooting
    assert_response :success
  end

  test "should get sports" do
    get :sports
    assert_response :success
  end

  test "should get strategy" do
    get :strategy
    assert_response :success
  end

end
