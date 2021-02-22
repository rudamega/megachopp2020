class PagosController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "proveedor ILIKE :query"
      @pagos = Pago.where(sql_query, query: "%#{params[:query]}%")
    else
      @pagos = Pago.all.order(id: :desc).limit(100)
    end
  end

  def new
    @pago = Pago.new
  end

  def create
    @pago = Pago.new(pago_params)
    @pago.banco = Bank.find(pago_params[:banco]).name
    @pago.recibo = "No"
    if @pago.save
      mail = UserMailer.pagos(@pago)
      mail.deliver_later
    end
    redirect_to pagos_path
  end

  def edit
  end

  def update
  end

  private

  def pago_params
    params.require(:pago).permit(:proveedor, :op, :banco)
  end
end
