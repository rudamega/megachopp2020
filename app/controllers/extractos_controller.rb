class ExtractosController < ApplicationController

  def index
    @extractos = Extracto.all
  end

  def new
    @bank = Bank.find(params[:bank_id])
    @extracto = Extracto.new
  end

  def show
    @extracto = Extracto.find(params[:id])
    @transactions = Transaction.where(extracto_id: params[:id]).order(created_at: :asc)
    @transaction = Transaction.new
  end

  def create
    @extracto = Extracto.new(trans_params)
    @extracto.bank_id = params[:bank_id]
    redirect_to bank_path(params[:bank_id]) if @extracto.save
  end

  private

  def trans_params
    params.require(:extracto).permit(:name)
  end
end
