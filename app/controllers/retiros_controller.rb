class RetirosController < ApplicationController
  def index
    @retiros = Retiro.all.order(id: :desc).limit(25)
  end

  def new
    @retiro = Retiro.new
  end

  def create
    @retiro = Retiro.new(retiros_params)
    @retiro.save
  end

  private

  def retiros_params
    params.require(:retiro).permit(:monto, :status, :forma, :comprobante)
  end
end
