require 'test_helper'

class ListProductsControllerTest < ActionController::TestCase
  setup do
    @list_product = list_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:list_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create list_product" do
    assert_difference('ListProduct.count') do
      post :create, list_product: { name: @list_product.name }
    end

    assert_redirected_to list_product_path(assigns(:list_product))
  end

  test "should show list_product" do
    get :show, id: @list_product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @list_product
    assert_response :success
  end

  test "should update list_product" do
    patch :update, id: @list_product, list_product: { name: @list_product.name }
    assert_redirected_to list_product_path(assigns(:list_product))
  end

  test "should destroy list_product" do
    assert_difference('ListProduct.count', -1) do
      delete :destroy, id: @list_product
    end

    assert_redirected_to list_products_path
  end
end
