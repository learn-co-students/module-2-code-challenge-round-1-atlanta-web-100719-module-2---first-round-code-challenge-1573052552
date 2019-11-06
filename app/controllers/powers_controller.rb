class PowersController < ApplicationController
  before_action :find_power, only: [:show, :edit, :delete, :update]

  def index
    @powers = Power.all
  end

  def show
  end

  def new
    @power = Power.new
  end

  def create
    @power = Power.new(power_params)

    if @power.valid?
      @power.save
      redirect_to powers_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @power.update(power_params)
      redirect_to power_path(@power)
    else
      render :edit
    end
  end

  def destroy
    @power.destroy
  end

  def find_power
    @power = Power.find(params[:id])
  end

  def power_params
    params.require(:power).permit(:name, :description)
  end
end
