require "test_helper"

class ProductclearsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @productclear = productclears(:one)
  end

  test "should get index" do
    get productclears_url
    assert_response :success
  end

  test "should get new" do
    get new_productclear_url
    assert_response :success
  end

  test "should create productclear" do
    assert_difference("Productclear.count") do
      post productclears_url, params: { productclear: {  } }
    end

    assert_redirected_to productclear_url(Productclear.last)
  end

  test "should show productclear" do
    get productclear_url(@productclear)
    assert_response :success
  end

  test "should get edit" do
    get edit_productclear_url(@productclear)
    assert_response :success
  end

  test "should update productclear" do
    patch productclear_url(@productclear), params: { productclear: {  } }
    assert_redirected_to productclear_url(@productclear)
  end

  test "should destroy productclear" do
    assert_difference("Productclear.count", -1) do
      delete productclear_url(@productclear)
    end

    assert_redirected_to productclears_url
  end
end
