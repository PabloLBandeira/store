class ProductMailer < ApplicationMailer
  def in_stock
  @product = params[:product]
  @subscriber = params[:subscriber]
  @unsubscribe_url = unsubscribe_url(token: @subscriber.unsubscribe_token)
  mail to: @subscriber.email, subject: "In stock"
  end
end
