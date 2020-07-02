class ExtractosController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :new, :create, :show]

  def index
    @extractos = Extracto.all
  end

  def new
    @bank = Bank.find(params[:bank_id])
    @extracto = Extracto.new
  end

  def show
    @extracto = Extracto.find(params[:id])
    @transactions = Transaction.where(extracto_id: params[:id])
  end

  def create
    @extracto = Extracto.new(trans_params)
    @extracto.bank_id = params[:bank_id]
    if @extracto.save
      redirect_to bank_path(params[:bank_id])
    end
  end

  private
  def trans_params
    params.require(:extracto).permit(:name)
  end
end
