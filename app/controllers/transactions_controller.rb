class TransactionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :new, :create, :show, :edit, :update, :conciliado]
  require 'roo'
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
    if params[:transaction][:file].nil?
      @transaction = Transaction.new(trans_params)
      @transaction.extracto_id = params[:extracto_id]
      if @transaction.save
        redirect_to extracto_path(params[:extracto_id])
      else
        redirect_to new_extracto_transaction_path(params[:extracto_id])
      end
    end
    extract_file(params[:transaction][:file], params[:extracto_id])
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
    params.require(:transaction).permit(:date, :comprobante, :importe_debito, :importe_credito, :comment, photos: [])
  end

  def extract_file(file, extra)
    xlsx = Roo::Excelx.new(file)
    x = xlsx.last_row
    array = (2..x).to_a
    array.each do |nro|
      transaction = Transaction.new(fecha: xlsx.row(nro)[0], movimiento: xlsx.row(nro)[1], comment: xlsx.row(nro)[2], importe_debito: xlsx.row(nro)[3].to_f, importe_credito: xlsx.row(nro)[4].to_f, extracto_id: params[:extracto_id])
        if transaction.save
        end
      end
        redirect_to extracto_path(extra)
        return
  end

end
