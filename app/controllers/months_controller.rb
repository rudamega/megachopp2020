class MonthsController < ApplicationController

  def index
    @months = Month.all
  end

  def show
    @month = Month.find(params[:id])
  end

  def new
    @month = Month.new
  end

  def create
    @month = Month.new(mes_params)
    redirect_to months_path if @month.save
  end

  private

  def mes_params
    params.require(:month).permit(:name)
  end
end
