require "test_helper"

class LostItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lost_item = lost_items(:one)
  end

  test "should get index" do
    get lost_items_url
    assert_response :success
  end

  test "should get new" do
    get new_lost_item_url
    assert_response :success
  end

  test "should create lost_item" do
    assert_difference('LostItem.count') do
      post lost_items_url, params: { lost_item: { category: @lost_item.category, date_picked: @lost_item.date_picked, feature: @lost_item.feature, item_name: @lost_item.item_name, storage_period: @lost_item.storage_period, where_picked: @lost_item.where_picked } }
    end

    assert_redirected_to lost_item_url(LostItem.last)
  end

  test "should show lost_item" do
    get lost_item_url(@lost_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_lost_item_url(@lost_item)
    assert_response :success
  end

  test "should update lost_item" do
    patch lost_item_url(@lost_item), params: { lost_item: { category: @lost_item.category, date_picked: @lost_item.date_picked, feature: @lost_item.feature, item_name: @lost_item.item_name, storage_period: @lost_item.storage_period, where_picked: @lost_item.where_picked } }
    assert_redirected_to lost_item_url(@lost_item)
  end

  test "should destroy lost_item" do
    assert_difference('LostItem.count', -1) do
      delete lost_item_url(@lost_item)
    end

    assert_redirected_to lost_items_url
  end
end
