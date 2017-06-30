class ProductsController < ApplicationController
  before_action :find_product, only: [:show, :edit, :update, :destroy]


  def index
    @products = Product.all
  end

  def show
  end

  ## Add New Product
  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path, notice: "Product successfully added!"
    else
      render :new
    end
  end
  ## Edit Product

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to @product, notice: "#{@product.name}successfully added!"
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.reviews.each do |review|
      review.destroy
    end
    @product.destroy
    redirect_to products_path, notice: "Product successfully deleted!"
  end

  private
    def product_params
      params.require(:product).permit(:name, :cost, :country)
    end

    def find_product
      @product = Product.find(params[:id])
    end
end
