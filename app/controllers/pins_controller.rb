class PinsController < ApplicationController
  before_action :set_pin, only: [:show, :edit, :update, :destroy]

  def index
    @pins = Pin.all.order("created_at DESC").page(params[:page]).per(5)
  end

  def show
  end

  def new
    @pin = Pin.new
  end

  def create
    @pin = Pin.new(pin_params)
    if @pin.save
      redirect_to @pin, notice: "Successfully created New Music!!"
    else
      render :new
    end
  end


  def edit
  end

  def update
    if @pin.update(pin_params)
      redirect_to @pin, notice: "Successfully recreated New Music!!"
    else
      render :edit
    end
  end

  def destroy
    @pin.destroy
    redirect_to pins_path
  end

  private

  def set_pin
    @pin = Pin.find(params[:id])
  end

  def pin_params
    params.require(:pin).permit(:title, :description, :image)
  end
end
