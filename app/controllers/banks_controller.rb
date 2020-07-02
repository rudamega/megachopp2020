class BanksController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :new, :create, :show]

  def index
    @banks = Bank.all
  end

  def show
    @bank = Bank.find(params[:id])
    @extractos = Extracto.where(bank_id: params[:id])
  end

  def new
    @bank = Bank.new
  end

  def create
    @bank = Bank.new(banks_params)
    if @bank.save
      redirect_to root_path
    else
      render(new)
    end
  end

  private
  def banks_params
    params.require(:bank).permit(:name, :account_number, :saldo_inicial)
  end
end
