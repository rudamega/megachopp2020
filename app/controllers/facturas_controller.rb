class FacturasController < ApplicationController
  def show
    @factura = Factura.find(params[:id])
  end

  def new
    @fecha = Fecha.find(params[:fecha_id])
    @factura = Factura.new
  end

  def create
    @factura = Factura.new(facturas_params)
    @factura.original_en = "Recepcion"
    @factura.fecha_id = params[:fecha_id]
    if @factura.tipo == "Contado"
      fecha = Fecha.find(params[:fecha_id])
      fecha.saldo_final = fecha.saldo_final - @factura.monto.to_i
      fecha.save
    end
    if current_user.name.nil?
      @factura.registrado_por = current_user.id
    else
      @factura.registrado_por = current_user.name
    end
    if @factura.save
      mail = FacturaMailer.factura(@factura)
      mail.deliver_later
      redirect_to fecha_path(params[:fecha_id])
    end
  end

  def aprobado
    @factura = Factura.find(params[:id])
    if current_user.name.nil?
      @factura.autorizado_por = current_user.id
    else
      @factura.autorizado_por = current_user.name
    end
    redirect_to fecha_path(@factura.fecha) if @factura.save
  end

  def cargado
    @factura = Factura.find(params[:id])
    if current_user.name.nil?
      @factura.cargado_por = current_user.id
    else
      @factura.cargado_por = current_user.name
    end
    redirect_to fecha_path(@factura.fecha) if @factura.save
  end

  def lugar
    @factura = Factura.find(params[:id])
    if current_user.rol.nil?
      @factura.original_en = "Administracion"
    else
      @factura.original_en = current_user.rol
    end
    redirect_to fecha_path(@factura.fecha) if @factura.save
  end

  private

  def facturas_params
    params.require(:factura).permit(:nro, :proveedor, :monto, :image, :tipo)
  end
end
