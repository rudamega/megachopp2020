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
    redirect_to habitacion_path(@habitacion) if @habitacion.save
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

  def porta_bidon
    @habitacion = Habitacion.find(params[:id])
    @habitacion.porta_bidon = "si"
    redirect_to habitacion_path(@habitacion) if @habitacion.save
  end

  def detergente
    @habitacion = Habitacion.find(params[:id])
    @habitacion.detergente = "si"
    redirect_to habitacion_path(@habitacion) if @habitacion.save
  end

  def esponja
    @habitacion = Habitacion.find(params[:id])
    @habitacion.esponja = "si"
    redirect_to habitacion_path(@habitacion) if @habitacion.save
  end

  def palo_de_piso
    @habitacion = Habitacion.find(params[:id])
    @habitacion.palo_de_piso = "si"
    redirect_to habitacion_path(@habitacion) if @habitacion.save
  end

  def tasa
    @habitacion = Habitacion.find(params[:id])
    @habitacion.tasa = "si"
    redirect_to habitacion_path(@habitacion) if @habitacion.save
  end

  def baso
    @habitacion = Habitacion.find(params[:id])
    @habitacion.baso = "si"
    redirect_to habitacion_path(@habitacion) if @habitacion.save
  end

  def azucar
    @habitacion = Habitacion.find(params[:id])
    @habitacion.azucar = "si"
    redirect_to habitacion_path(@habitacion) if @habitacion.save
  end

  def lavandina
    @habitacion = Habitacion.find(params[:id])
    @habitacion.lavandina = "si"
    redirect_to habitacion_path(@habitacion) if @habitacion.save
  end

  def liberar
    @habitacion = Habitacion.find(params[:id])
    @habitacion.bolsas = "no"
    @habitacion.jabon_en_polvo = "no"
    @habitacion.jabon_en_pan = "no"
    @habitacion.franela = "no"
    @habitacion.trapo = "no"
    @habitacion.latona = "no"
    @habitacion.escoba = "no"
    @habitacion.alcohol = "no"
    @habitacion.muda_sabana = "no"
    @habitacion.cama_matrimonial = "no"
    @habitacion.toalla_piso = "no"
    @habitacion.muda_toalla = "no"
    @habitacion.toalla_piso = "no"
    @habitacion.pasar_trapo_cabecera = "no"
    @habitacion.toallas_cuerpo = "no"
    @habitacion.toalla_rostro = "no"
    @habitacion.termo_transformador = "no"
    @habitacion.alzar_agua = "no"
    @habitacion.frazada = "no"
    @habitacion.porta_bidon = "no"
    @habitacion.detergente = "no"
    @habitacion.esponja = "no"
    @habitacion.palo_de_piso = "no"
    @habitacion.tasa = "no"
    @habitacion.baso = "no"
    @habitacion.azucar = "no"
    @habitacion.lavandina = "no"
    @habitacion.papel_extra = "no"
    @habitacion.frigobar_limpio = "no"
    @habitacion.pasar_trapo_ventana = "no"
    redirect_to habitacion_path(@habitacion) if @habitacion.save
  end


  private

  def habi_params
    params.require(:habitacion).permit(:name)
  end
end
