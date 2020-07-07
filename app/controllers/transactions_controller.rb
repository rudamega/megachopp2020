class TransactionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :new, :create, :show, :edit, :update, :conciliado]

  def index
    @transactions = Transaction.all
  end

  def show
    @transaction = Transaction.find(params[:id])
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

  def conciliado
    @transaction = Transaction.find(params[:id])
    @transaction.status = "conciliado"
    if @transaction.save
      redirect_to transaction_path(params[:id])
    else
      redirect_to transaction_path(params[:id])
    end
  end

  def edit
    @transaction = Transaction.find(params[:id])
  end

  def update
    @transaction = Transaction.find(params[:id])
    @transaction.update(trans_params)
    extra = @transaction.extracto_id
    redirect_to extracto_path(extra)
  end

  private
  def trans_params
    params.require(:transaction).permit(:date, :comprobante, :importe_debito, :importe_credito, :comment,  photos: [])
  end
end
