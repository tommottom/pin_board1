class PinsController < ApplicationController
  def new
  end

  def create
    @pin = Pin.new
    @pin.title = params[:title]
    @pin.description = params[:description]
    @pin.save
    redirect_to pin_path(@pin.id)
  end

  def index
    @pins = Pin.all
  end

  def show
    @pin = Pin.find(params[:id])
  end

  def edit
    @pin = Pin.find(params[:id])
  end

  def update
    @pin = Pin.find(params[:id])
    @pin.title = params[:title]
    @pin.description = params[:description]
    @pin.save
    redirect_to pin_path(@pin.id)
  end

  def destroy
    @pin = Pin.find(params[:id])
    @pin.destroy
    redirect_to root_path #pins_path
  end
end
