require 'test_helper'

class LisrProductsControllerTest < ActionController::TestCase
  setup do
    @lisr_product = lisr_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lisr_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lisr_product" do
    assert_difference('LisrProduct.count') do
      post :create, lisr_product: { name: @lisr_product.name }
    end

    assert_redirected_to lisr_product_path(assigns(:lisr_product))
  end

  test "should show lisr_product" do
    get :show, id: @lisr_product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lisr_product
    assert_response :success
  end

  test "should update lisr_product" do
    patch :update, id: @lisr_product, lisr_product: { name: @lisr_product.name }
    assert_redirected_to lisr_product_path(assigns(:lisr_product))
  end

  test "should destroy lisr_product" do
    assert_difference('LisrProduct.count', -1) do
      delete :destroy, id: @lisr_product
    end

    assert_redirected_to lisr_products_path
  end
end
