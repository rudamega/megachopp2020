class FacturaMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.factura_mailer.factura.subject
  #
  def factura(factura)
    @factura = factura
    mail to: "ruben@hotelmegal.com.py",
    cc: "mirian@hotelmegal.com.py",
      subject: " Favor aprobar compra de #{@factura.proveedor}- Monto: #{@factura.monto} - Tipo: #{@factura.tipo} "
  end
end
