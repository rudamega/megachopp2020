class ComprosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :new, :create, :show, :conciliado_compros]
  def index
    @compros = Compro.all.order(id: :desc).limit(25)
  end

  def new
    @compro = Compro.new
  end

  def create
    @compro = Compro.new(compros_params)
    @compro.nro = Compro.last.id + 1
    if @compro.save
      redirect_to root_path
    end
  end

  def edit
    @compro = Compro.find(params[:id])
  end

  def update

  end

  def conciliado_compros
    @compro = Compro.find(params[:id])
    @compro.status = "Conciliado"
    @compro.save
    redirect_to compros_path
  end

  private

  def compros_params
    params.require(:compro).permit(:name, :comment, :monto, :image)
  end

end
