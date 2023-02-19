require "test_helper"

class WatchBoxesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @watch_box = watch_boxes(:one)
  end

  test "should get index" do
    get watch_boxes_url
    assert_response :success
  end

  test "should get new" do
    get new_watch_box_url
    assert_response :success
  end

  test "should create watch_box" do
    assert_difference("WatchBox.count") do
      post watch_boxes_url, params: { watch_box: { avata: @watch_box.avata, branch: @watch_box.branch, description: @watch_box.description, model: @watch_box.model, price: @watch_box.price, title: @watch_box.title } }
    end

    assert_redirected_to watch_box_url(WatchBox.last)
  end

  test "should show watch_box" do
    get watch_box_url(@watch_box)
    assert_response :success
  end

  test "should get edit" do
    get edit_watch_box_url(@watch_box)
    assert_response :success
  end

  test "should update watch_box" do
    patch watch_box_url(@watch_box), params: { watch_box: { avata: @watch_box.avata, branch: @watch_box.branch, description: @watch_box.description, model: @watch_box.model, price: @watch_box.price, title: @watch_box.title } }
    assert_redirected_to watch_box_url(@watch_box)
  end

  test "should destroy watch_box" do
    assert_difference("WatchBox.count", -1) do
      delete watch_box_url(@watch_box)
    end

    assert_redirected_to watch_boxes_url
  end
end
