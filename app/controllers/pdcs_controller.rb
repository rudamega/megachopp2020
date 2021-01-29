class PdcsController < ApplicationController
  def index
    @pdcs = Pdc.all
  end

  def show
    @pdc = Pdc.find(params[:id])
    @fechas = Fecha.where(pdc_id: params[:id])
  end

  def new
    @pdc = Pdc.new
  end

  def productos

  end

  def create
    @pdc = Pdc.new(pdc_params)
    if @pdc.save
      redirect_to root_path
    else
      render(new)
    end
  end

  private
  def pdc_params
    params.require(:pdc).permit(:name)
  end
end
