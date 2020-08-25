class UserMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(user)
    @user = user
    mail to: user.email, subject: "Bienvenido"
  end

  def notify(user)
    @user = user
    mail to: "ruben@megachopp.com.py", subject: "Nuevo cliente"
  end

  def compro(compro)
    @compro = compro
    mail to: "administracion@hotelmegal.com.py", subject: "Favor conciliar - #{@compro.name} - Monto: #{compro.monto}"
  end

  def conciliado(compro)
    @compro = compro
    mail to: "recepcionmegal@gmail.com", subject: "DEPOSITO/TRANSFERENCIA CONFIRMADA - #{@compro.name} - Monto: #{compro.monto}"
  end

  def hoja(hoja, funcionario)
    @hoja = hoja
    @funcionario = funcionario.capitalize
    mail to: "ruben@hotelmegal.com.py", subject: "Solicitud de Aprobacion - #{@hoja.nro} - Monto: #{@hoja.monto}"
  end
end
