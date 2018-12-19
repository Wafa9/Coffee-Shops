class PagesController < ApplicationController
  def home
    @shops = Shop.all
  end

  def search
    @term = params[:term]
    shops = Shop.all
    products = Product.all

    @shops_match = []
    @products_match = []

    shops.each do |shop|
      @shops_match.push(shop) if shop.name.downcase.include?(@term)
    end
    products.each do |product|
      @products_match.push(product) if product.name.downcase.include?(@term)
    end
  end
end
