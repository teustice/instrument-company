class InstrumentsController < ApplicationController
  def index
    @instruments = Instrument.all
  end

  def show
    @instrument = Instrument.find(params[:id])
  end

  def new
    @instrument = Instrument.new
  end

  def create
    @instrument = current_user.instruments.new(instrument_params)
    if @instrument.save
      flash[:notice] = "Instrument successfully added!"
      redirect_to  instruments_path
    else
      render :new
    end
  end

  def edit
    @instrument = Instrument.find(params[:id])
    render :edit
  end

  def update
    @instrument= Instrument.find(params[:id])
    if @instrument.update(instrument_params)
      redirect_to instruments_path
    else
      render :edit
    end
  end

  def destroy
    @instrument = Instrument.find(params[:id])
    flash[:alert] = "Instrument has been deleted"
    @instrument.destroy
    redirect_to instruments_path
  end

private
  def instrument_params
    params.require(:instrument).permit(:brand, :description, :image, :price)
  end
end
