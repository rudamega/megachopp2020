class HabitacionsController < ApplicationController
  def index
    @habitaciones = Habitacion.all
  end

  def show
    @habitacion = Habitacion.find(params[:id])
  end

  def new
    @habitacion = Habitacion.new
  end

  def create
    @habitacion = Habitacion.new(habi_params)
    redirect_to root_path if @habitacion.save
  end

  def bolsas
    @habitacion = Habitacion.find(params[:id])
    @habitacion.bolsas = "si"
    redirect_to habitacion_path(habitacion) if @habitacion.save

  end

  def jabon_en_polvo
    @habitacion = Habitacion.find(params[:id])
    @habitacion.jabon_en_polvo = "si"
    redirect_to habitacion_path(@habitacion) if @habitacion.save
  end

  def jabon_en_pan
    @habitacion = Habitacion.find(params[:id])
    @habitacion.jabon_en_pan = "si"
    redirect_to habitacion_path(@habitacion) if @habitacion.save
  end

  def franela
    @habitacion = Habitacion.find(params[:id])
    @habitacion.franela = "si"
    redirect_to habitacion_path(@habitacion) if @habitacion.save
  end

  def trapos
    @habitacion = Habitacion.find(params[:id])
    @habitacion.trapo = "si"
    redirect_to habitacion_path(@habitacion) if @habitacion.save
  end

  def latona
    @habitacion = Habitacion.find(params[:id])
    @habitacion.latona = "si"
    redirect_to habitacion_path(@habitacion) if @habitacion.save
  end

  def escoba
    @habitacion = Habitacion.find(params[:id])
    @habitacion.escoba = "si"
    redirect_to habitacion_path(@habitacion) if @habitacion.save
  end

  def alcohol
    @habitacion = Habitacion.find(params[:id])
    @habitacion.alcohol = "si"
    redirect_to habitacion_path(@habitacion) if @habitacion.save
  end

  def muda_sabana
    @habitacion = Habitacion.find(params[:id])
    @habitacion.muda_sabana = "si"
    redirect_to habitacion_path(@habitacion) if @habitacion.save
  end

  def transformador
    @habitacion = Habitacion.find(params[:id])
    @habitacion.termo_transformador = "si"
    redirect_to habitacion_path(@habitacion) if @habitacion.save
  end

  def agua
    @habitacion = Habitacion.find(params[:id])
    @habitacion.alzar_agua = "si"
    redirect_to habitacion_path(@habitacion) if @habitacion.save
  end

  def frazada
    @habitacion = Habitacion.find(params[:id])
    @habitacion.frazada = "si"
    redirect_to habitacion_path(@habitacion) if @habitacion.save
  end

  def papel_extra
    @habitacion = Habitacion.find(params[:id])
    @habitacion.papel_extra = "si"
    redirect_to habitacion_path(@habitacion) if @habitacion.save
  end

  def frigabar
    @habitacion = Habitacion.find(params[:id])
    @habitacion.frigobar_limpio = "si"
    redirect_to habitacion_path(@habitacion) if @habitacion.save
  end

  def trapo_ventana
    @habitacion = Habitacion.find(params[:id])
    @habitacion.pasar_trapo_ventana = "si"
    redirect_to habitacion_path(@habitacion) if @habitacion.save
  end

  def trapo_cabezera
    @habitacion = Habitacion.find(params[:id])
    @habitacion.pasar_trapo_cabecera = "si"
    redirect_to habitacion_path(@habitacion) if @habitacion.save
  end

  def toalla_cuerpo
    @habitacion = Habitacion.find(params[:id])
    @habitacion.toallas_cuerpo = "si"
    redirect_to habitacion_path(@habitacion) if @habitacion.save
  end

  def toalla_rostro
    @habitacion = Habitacion.find(params[:id])
    @habitacion.toalla_rostro = "si"
    redirect_to habitacion_path(@habitacion) if @habitacion.save
  end

  def toalla_piso
    @habitacion = Habitacion.find(params[:id])
    @habitacion.toalla_piso = "si"
    redirect_to habitacion_path(@habitacion) if @habitacion.save
  end

  def muda_toalla
    @habitacion = Habitacion.find(params[:id])
    @habitacion.muda_toalla = "si"
    redirect_to habitacion_path(@habitacion) if @habitacion.save
  end

  def cama_matrimonial
    @habitacion = Habitacion.find(params[:id])
    @habitacion.cama_matrimonial = "si"
    redirect_to habitacion_path(@habitacion) if @habitacion.save
  end

  private

  def habi_params
    params.require(:habitacion).permit(:name)
  end
end
