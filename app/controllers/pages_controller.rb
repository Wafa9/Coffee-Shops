class PagesController < ApplicationController
  def home
    @shops = Shop.all
  end

  def search
    shops = Shop.all
    products = Product.all
    @term = params[:term]
    @shops_match = []
    shops.each do |shop|
      @shops_match.push(shop) if shop.name.downcase.include?(@term.downcase)
    end
    @products_match = []
    products.each do |product|
      @products_match.push(product) if product.name.downcase.include?(@term.downcase)
    end
  end
end
