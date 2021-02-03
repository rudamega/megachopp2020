class FacturaMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.factura_mailer.factura.subject
  #
  def factura(factura)
    @factura = factura
    if factura.tipo == "Ingreso"
      mail to: "rubenmegalsuites@gmail.com",
        # cc: "mirian@hotelmegal.com.py",
        subject: " Favor aprobar #{@factura.tipo} "
    elsif factura.tipo == "Egreso"
      mail to: "rubenmegalsuites@gmail.com",
        # cc: "mirian@hotelmegal.com.py",
        subject: " Favor aprobar #{@factura.tipo} "
    else
    mail to: "rubenmegalsuites@gmail.com",
      # cc: "mirian@hotelmegal.com.py",
      subject: " Favor aprobar compra de #{@factura.proveedor}- Monto: #{@factura.monto} - Tipo: #{@factura.tipo} "
    end
  end
end
