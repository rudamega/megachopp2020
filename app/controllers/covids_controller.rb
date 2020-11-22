class CovidsController < ApplicationController
  def index
    @clientes = Covid.all
  end

  def show
    @cliente = Covid.find(params[:id])
  end

  def new
    @cliente = Covid.new
  end

  def create
    @cliente = Covid.new(covid_params)
    redirect_to covids_path if @cliente.save
  end

  def edit
    @cliente = Covid.find(params[:id])
  end

  def update
    @cliente = Covid.find(params[:id])
    @cliente.update(covid_params)
    redirect_to covids_path if @cliente.save
  end
   private
  def covid_params
    params.require(:covid).permit(:name, :cinumber, :tel, :email, :grados)
  end
end
