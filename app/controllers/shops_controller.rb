class ShopsController < ApplicationController
  def index
    @shops = Shop.all
  end

  def show
  end

  def new
    @shop = Shop.new
  end

  def edit
  end
end
