class DetailsProductsController < ApplicationController
  before_action :set_details_product, only: [:show, :edit, :update, :destroy]

  # GET /details_products
  # GET /details_products.json
  def index
    @details_products = DetailsProduct.all
  end

  # GET /details_products/1
  # GET /details_products/1.json
  def show
  end

  # GET /details_products/new
  def new
    @details_product = DetailsProduct.new
  end

  # GET /details_products/1/edit
  def edit
  end

  # POST /details_products
  # POST /details_products.json
  def create
    @details_product = DetailsProduct.new(details_product_params)

    respond_to do |format|
      if @details_product.save
        format.html { redirect_to @details_product, notice: 'Details product was successfully created.' }
        format.json { render :show, status: :created, location: @details_product }
      else
        format.html { render :new }
        format.json { render json: @details_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /details_products/1
  # PATCH/PUT /details_products/1.json
  def update
    respond_to do |format|
      if @details_product.update(details_product_params)
        format.html { redirect_to @details_product, notice: 'Details product was successfully updated.' }
        format.json { render :show, status: :ok, location: @details_product }
      else
        format.html { render :edit }
        format.json { render json: @details_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /details_products/1
  # DELETE /details_products/1.json
  def destroy
    @details_product.destroy
    respond_to do |format|
      format.html { redirect_to details_products_url, notice: 'Details product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_details_product
      @details_product = DetailsProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def details_product_params
      params.require(:details_product).permit(:product_id, :type_product_id)
    end
end
