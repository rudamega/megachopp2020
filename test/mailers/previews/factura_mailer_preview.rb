# Preview all emails at http://localhost:3000/rails/mailers/factura_mailer
class FacturaMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/factura_mailer/factura
  def factura
    FacturaMailer.factura
  end

end
