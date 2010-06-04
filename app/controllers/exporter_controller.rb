class ExporterController < Spree::BaseController
  helper ProductsHelper

  def pricelist
    @products = Product.active
    respond_to do |format|
      format.csv {
        render :csv => @products
      }
      format.html {
        render :layout => false
      }
    end
  end

end
