class FechasController < ApplicationController
  def show
    # @cheque = Cheque.find(params[:id])
    @fecha = Fecha.find(params[:id])
    @factura = Factura.where(fecha_id: params[:id]).order(created_at: :desc)
  end

  def new
    @pdc = Pdc.find(params[:pdc_id])
    @fecha = Fecha.new
  end

  def create
    @fecha = Fecha.new(fecha_params)
    @fecha.saldo_final = @fecha.saldo_inicial
    @fecha.pdc_id = params[:pdc_id]
    redirect_to pdc_path(params[:pdc_id]) if @fecha.save
  end

  private

  def fecha_params
    params.require(:fecha).permit(:date, :saldo_inicial)
  end
end
