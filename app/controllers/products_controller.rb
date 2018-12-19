class ProductsController < ApplicationController
  def index
  end

  def show
    @product = Product.find_by(id: params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    shop = Shop.find_by(id: params[:product][:shop_id])
    product = shop.products.create(product_params)
    redirect_to product.shop
  end

  def edit
    @product = Product.find_by(id: params[:id])
  end

  def update
    product = Product.find_by(id: params[:id])
    product.update(product_params)
    redirect_to product.shop
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    redirect_to product.shop
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :image)
  end
end
