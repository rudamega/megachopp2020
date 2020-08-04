class FijosController < ApplicationController
  def new
    @fijo = Fijo.new
    @month = Month.find(params[:month_id])
  end

  def create
  end
end
