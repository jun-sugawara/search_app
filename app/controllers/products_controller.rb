class ProductsController < ApplicationController

  before_action :search_product, only: [:index, :search]

  def index
    @products = Product.all
    set_product_coloum
  end

  def search
    @reaults = @p.result.includes(:category)
  end

  private

  def search_product
    @p = Product.ransack(params[:q])
  end

  def set_product_coloum
    @product_name = Product.select("name").distinct
  end

end