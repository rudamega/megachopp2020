class TiposController < ApplicationController
  def index
  end

  def new
    @tipo = Tipo.new
  end

  def create
    @tipo = Tipo.new
    if tipos_params[:activado] == "Activado"
      @tipo.activado = true
    else
      @tipo.activado = false
    end
    @tipo.name = tipos_params[:name]
    redirect_to tipos_path if @tipo.save
  end

  private

  def tipos_params
    params.require(:tipo).permit(:name, :activado)
  end
end
