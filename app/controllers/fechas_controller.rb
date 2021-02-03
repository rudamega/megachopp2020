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
    if @fecha.saldo_inicial == 0
      flash[:alert] = "Ingresa un monto inicial para crear"
      redirect_to pdc_path(params[:pdc_id])
    else
      @fecha.save
      flash[:notice] = "Se ha creado una fecha"
      redirect_to pdc_path(params[:pdc_id])
      return
    end
  end

  private

  def fecha_params
    params.require(:fecha).permit(:date, :saldo_inicial)
  end
end
