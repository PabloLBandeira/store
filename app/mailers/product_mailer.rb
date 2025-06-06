class ProductMailer < ApplicationMailer
  # O assunto pode ser definido no seu arquivo I18n em config/locales/en.yml
  # com a seguinte chave de busca:
  #
  #   en.product_mailer.in_stock.subject
  #
  def in_stock
    @product = params[:product]
    mail to: params[:subscriber].email
  end
end
