class MenusController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @menus = Menu.all
    @entradas = Menu.all.where(tipo: "Entrada")
    @plato = Menu.all.where(tipo: "Plato Principal")
    @postre = Menu.all.where(tipo: "Postre")
    @conalcohol = Menu.all.where(tipo: "Bebida sin alcohol")
    @sinalcohol = Menu.all.where(tipo: "Bebida con alcohol")
  end

  def show
    @menu = Menu.find(params[:id])
  end

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menus_params)
    redirect_to menus_path if @menu.save
  end

  def edit
  end

  def update
  end

  def carta
    @menu = Menu.all
    @sugerencia = Menu.where(sugerencia: true)
  end

  def sugerencia
    sugerencia = Menu.find(params[:id])
    if sugerencia.sugerencia == true
      sugerencia.sugerencia = false
    else
      sugerencia.sugerencia = true
    end
      sugerencia.save
    redirect_to menus_path
  end

  private
  def menus_params
    params.require(:menu).permit(:name, :price, :description, :tipo, :photo)
  end
end
