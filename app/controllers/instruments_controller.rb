class InstrumentsController < ApplicationController
  def index
    @instruments = Instrument.paginate(:page => params[:page], :per_page => 8)
  end

  def show
    @instrument = Instrument.find(params[:id])
  end
end
