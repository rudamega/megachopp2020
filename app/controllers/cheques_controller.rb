class ChequesController < ApplicationController
  def show
    @cheque = Cheque.find(params[:id])
    @hojas = Hoja.where(cheque_id: params[:id]).order(created_at: :asc)
    @hoja = Hoja.new
  end

  def new
    @bank = Bank.find(params[:bank_id])
    @cheque = Cheque.new
  end

  def create
    @cheque = Cheque.new(trans_params)
    @cheque.bank_id = params[:bank_id]
    x = trans_params[:nro_inicial].to_i
    y = trans_params[:nro_final].to_i
    array = (x..y)
    array.each do |nro|
      hojas = Hoja.new(nro: nro, cheque: @cheque)
        if hojas.save
        end
    end
    redirect_to bank_path(params[:bank_id]) if @cheque.save
  end

  private

  def trans_params
    params.require(:cheque).permit(:name, :nro_inicial, :nro_final)
  end
end
