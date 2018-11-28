require 'test_helper'

class FavouritesControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get favourites_controller_index_url
    assert_response :success
  end

  test "should get create" do
    get favourites_controller_create_url
    assert_response :success
  end

end
