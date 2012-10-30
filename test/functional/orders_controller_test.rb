require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post :create, order: { additional_design: @order.additional_design, base_design: @order.base_design, binding: @order.binding, business: @order.business, coating: @order.coating, contact: @order.contact, cutting: @order.cutting, date: @order.date, date_promised: @order.date_promised, drilling: @order.drilling, employee: @order.employee, flat_size: @order.flat_size, folding: @order.folding, inkspec: @order.inkspec, item: @order.item, laminating: @order.laminating, location: @order.location, miscellaneous: @order.miscellaneous, numbering: @order.numbering, padding: @order.padding, paper_color: @order.paper_color, paper_weight: @order.paper_weight, phone: @order.phone, price: @order.price, quantity: @order.quantity, stapling: @order.stapling }
    end

    assert_redirected_to order_path(assigns(:order))
  end

  test "should show order" do
    get :show, id: @order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order
    assert_response :success
  end

  test "should update order" do
    put :update, id: @order, order: { additional_design: @order.additional_design, base_design: @order.base_design, binding: @order.binding, business: @order.business, coating: @order.coating, contact: @order.contact, cutting: @order.cutting, date: @order.date, date_promised: @order.date_promised, drilling: @order.drilling, employee: @order.employee, flat_size: @order.flat_size, folding: @order.folding, inkspec: @order.inkspec, item: @order.item, laminating: @order.laminating, location: @order.location, miscellaneous: @order.miscellaneous, numbering: @order.numbering, padding: @order.padding, paper_color: @order.paper_color, paper_weight: @order.paper_weight, phone: @order.phone, price: @order.price, quantity: @order.quantity, stapling: @order.stapling }
    assert_redirected_to order_path(assigns(:order))
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to orders_path
  end
end
