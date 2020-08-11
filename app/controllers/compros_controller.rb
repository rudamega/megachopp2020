class ComprosController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR nro ILIKE :query"
      @compros = Compro.where(sql_query, query: "%#{params[:query]}%")
    else
      @compros = Compro.all.order(id: :desc).limit(25)
    end
  end

  def new
    @compro = Compro.new
  end

  def create
    @compro = Compro.new(compros_params)
    @compro.creado_por = current_user.name
    if @compro.save
      mail = UserMailer.compro(@compro)
      mail.deliver_later
    end
      redirect_to root_path
  end

  def edit
    @compro = Compro.find(params[:id])
  end

  def update
    @compro = Compro.find(params[:id])
    @compro.nro = "#{@compro.id + 1} - #{params[:compro][:nro]}"
    if @compro.save
      redirect_to compros_path
    else
      render 'edit'
    end
  end

  def conciliado_compros
    @compro = Compro.find(params[:id])
    @compro.status = "Conciliado"
    @compro.conciliado_por = current_user.name
    if @compro.save
      mail = UserMailer.conciliado(@compro)
      mail.deliver_later
    end
    redirect_to compros_path
  end

  def cargado_compros
    @compro = Compro.find(params[:id])
    @compro.cargado_por = current_user.name
    @compro.save
    redirect_to compros_path
  end

  private

  def compros_params
    params.require(:compro).permit(:name, :comment, :monto, :image, :nro, :forma)
  end

end
