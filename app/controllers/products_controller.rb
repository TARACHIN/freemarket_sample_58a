class ProductsController < ApplicationController
  def index
    @product = Product.find(params[:id])
  end

  def set_product
    @product = Product.find(params[:id])
  end

  private
  def product_params
    params.require(:product).permit(:name, :size, :status, :shipping_fee, :shipping_method, :shipping_from, :shipping_date, :price, :brand, :purchase_status, images: [])
    # params.require(:product).permit(:name, :size, :status, :shipping_fee, :shipping_method, :shipping_from, :shipping_date, :price, :brand, :purchase_status, images: []).merge(user_id: current_user.id, purchase_status:1)
  end
end
