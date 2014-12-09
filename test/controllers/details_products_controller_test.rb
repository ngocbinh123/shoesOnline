require 'test_helper'

class DetailsProductsControllerTest < ActionController::TestCase
  setup do
    @details_product = details_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:details_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create details_product" do
    assert_difference('DetailsProduct.count') do
      post :create, details_product: { product_id: @details_product.product_id, type_product_id: @details_product.type_product_id }
    end

    assert_redirected_to details_product_path(assigns(:details_product))
  end

  test "should show details_product" do
    get :show, id: @details_product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @details_product
    assert_response :success
  end

  test "should update details_product" do
    patch :update, id: @details_product, details_product: { product_id: @details_product.product_id, type_product_id: @details_product.type_product_id }
    assert_redirected_to details_product_path(assigns(:details_product))
  end

  test "should destroy details_product" do
    assert_difference('DetailsProduct.count', -1) do
      delete :destroy, id: @details_product
    end

    assert_redirected_to details_products_path
  end
end
