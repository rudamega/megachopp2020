class RetirosController < ApplicationController
  def index
    @retiros = Retiro.all.order(id: :desc).limit(25)
  end

  def new
    @retiro = Retiro.new
  end

  def create
    @retiro = Retiro.new(retiros_params)
    redirect_to retiros_path if @retiro.save
  end

  def edit
    @retiro = Retiro.find(params[:id])
  end

  def update
    @retiro = Retiro.find(params[:id])
    @retiro.comprobante = params[:retiro][:comprobante]
    if @retiro.save
      redirect_to retiros_path
    else
      render 'edit'
    end
  end

  def conciliado_retiro
    @retiro = Retiro.find(params[:id])
    @retiro.retirado_por = current_user.name
    redirect_to retiros_path if @retiro.save
  end

  def conciliado_banco
    @retiro = Retiro.find(params[:id])
    @retiro.status = "en banco"
    redirect_to retiros_path if @retiro.save
  end

  private

  def retiros_params
    params.require(:retiro).permit(:monto, :status, :forma, :comprobante, :enviado_a)
  end
end
