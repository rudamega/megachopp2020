class HojasController < ApplicationController
  def new
    @cheque = Cheque.find(params[:cheque_id])
    @hoja = Hoja.new
  end

  def create
    @hoja = Hoja.new(hojas_params)
    @hoja.cheque_id = params[:cheque_id]
    @cheque = Cheque.find(params[:cheque_id])
    redirect_to bank_path(@cheque.bank_id) if @hoja.save
  end

  def edit
    @hoja = Hoja.find(params[:id])
  end

  def update
    @hoja = Hoja.find(params[:id])
    @hoja.update(hojas_params)
    redirect_to cheque_path(@hoja.cheque_id) if @hoja.save
  end

  def aprobado
    @hoja = Hoja.find(params[:id])
    @hoja.aprobado = "si"
    @hoja.aprobado_por = current_user.name.capitalize
    redirect_to cheque_path(@hoja.cheque_id) if @hoja.save
  end

  def compensado
    @hoja = Hoja.find(params[:id])
    @hoja.compensado = "si"
    @hoja.compensado_por = current_user.name.capitalize
    redirect_to cheque_path(@hoja.cheque_id) if @hoja.save
  end

  private

  def hojas_params
    params.require(:hoja).permit(:nro, :monto, :description, :fecha_pago)
  end
end
