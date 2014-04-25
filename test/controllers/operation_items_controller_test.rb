require 'test_helper'

class OperationItemsControllerTest < ActionController::TestCase
  setup do
    @operation_item = operation_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:operation_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create operation_item" do
    assert_difference('OperationItem.count') do
      post :create, operation_item: { amount: @operation_item.amount, article_id: @operation_item.article_id, budget_category_id: @operation_item.budget_category_id, operation_id: @operation_item.operation_id }
    end

    assert_redirected_to operation_item_path(assigns(:operation_item))
  end

  test "should show operation_item" do
    get :show, id: @operation_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @operation_item
    assert_response :success
  end

  test "should update operation_item" do
    patch :update, id: @operation_item, operation_item: { amount: @operation_item.amount, article_id: @operation_item.article_id, budget_category_id: @operation_item.budget_category_id, operation_id: @operation_item.operation_id }
    assert_redirected_to operation_item_path(assigns(:operation_item))
  end

  test "should destroy operation_item" do
    assert_difference('OperationItem.count', -1) do
      delete :destroy, id: @operation_item
    end

    assert_redirected_to operation_items_path
  end
end
