class MenusController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @menus = Menu.all
    @tipo = Tipo.all
  end

  def show
    @menu = Menu.find(params[:id])
  end

  def new
    @menu = Menu.new
    @tipo = Tipo.all
  end

  def create
    @menu = Menu.new(menus_params)
    redirect_to menus_path if @menu.save
  end

  def edit
    @menu = Menu.find(params[:id])
    @tipo = Tipo.all
  end

  def update
    @menu = Menu.find(params[:id])
    @menu.update(menus_params)
    redirect_to menus_path if @menu.save
  end

  def carta
    @menu = Menu.all
    @sugerencia = Menu.where(sugerencia: true)
    @tipo = Tipo.all
  end

  def sugerencia
    sugerencia = Menu.find(params[:id])
    if sugerencia.sugerencia == true
      sugerencia.sugerencia = false
    else
      sugerencia.sugerencia = true
    end
      redirect_to menus_path if sugerencia.save
  end

  private
  def menus_params
    params.require(:menu).permit(:name, :price, :description, :tipo_id, :photo)
  end
end
