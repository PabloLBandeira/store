class SubscribersController < ApplicationController
  allow_unauthenticated_access
  before_action :set_product

  def create
    @product.subscribers.where(subscriber_params).first_or_create
    redirect_to @product, notice: "Você agora está inscrito(a)."
  end

  private

  def set_product
    @product = Product.find(params[:product_id])
  end

  def subscriber_params
    params.expect(subscriber: [ :email ])
  end
end
