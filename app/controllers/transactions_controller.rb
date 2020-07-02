class TransactionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :new, :create, :show]

  def index
    @transactions = Transaction.all
  end

  def new
    @extracto = Extracto.find(params[:extracto_id])
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new(trans_params)
    @transaction.extracto_id = params[:extracto_id]
    if @transaction.save
      redirect_to extracto_path(params[:extracto_id])
    else
      redirect_to new_extracto_transaction_path(params[:extracto_id])
    end
  end

  private
  def trans_params
    params.require(:transaction).permit(:date, :comprobante, :importe_debito, :importe_credito)
  end
end
