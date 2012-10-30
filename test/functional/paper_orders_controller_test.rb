require 'test_helper'

class PaperOrdersControllerTest < ActionController::TestCase
  setup do
    @paper_order = paper_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paper_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paper_order" do
    assert_difference('PaperOrder.count') do
      post :create, paper_order: { for_order: @paper_order.for_order, order: @paper_order.order }
    end

    assert_redirected_to paper_order_path(assigns(:paper_order))
  end

  test "should show paper_order" do
    get :show, id: @paper_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @paper_order
    assert_response :success
  end

  test "should update paper_order" do
    put :update, id: @paper_order, paper_order: { for_order: @paper_order.for_order, order: @paper_order.order }
    assert_redirected_to paper_order_path(assigns(:paper_order))
  end

  test "should destroy paper_order" do
    assert_difference('PaperOrder.count', -1) do
      delete :destroy, id: @paper_order
    end

    assert_redirected_to paper_orders_path
  end
end
