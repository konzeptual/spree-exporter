class ExporterController < Spree::BaseController
  helper ProductsHelper

  def pricelist
    @products = Product.all
    render :csv => @products
  end

end
