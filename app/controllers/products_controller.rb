class ProductsController < ApplicationController

  before_action :search_product, only: [:index, :search]

  def index
    @products = Product.all
  end

  def search
    @reaults = @p.result.includes(:category)
  end

  private

  def search_products
    @p = Product.ransack(params[:q])
  end

end