class PinsController < ApplicationController
  before_action :set_pin, only: [:show, :edit, :update, :destroy]

  def index
    @pins = Pin.all
  end

  def show
  end

  def new
    @pin = Pin.new
  end

  def create
    @pin = Pin.new(pin_params)
    if @pin.save
      redirect_to @pin, notice: "Successfully created"
    else
      render :new
    end
  end


  def edit
  end

  def update
    @pin.title = params[:title]
    @pin.description = params[:description]
    @pin.save
    redirect_to pin_path(@pin.id)
  end

  def destroy
    @pin.destroy
    redirect_to root_path #pins_path
  end

  private

  def set_pin
    @pin = Pin.find(params[:id])
  end

  def pin_params
    params.require(:pin).permit(:title, :description)
  end
end
