class ExporterController < Spree::BaseController
  helper ProductsHelper

  def pricelist
    @products = Product.active
    render :csv => @products
  end

end
