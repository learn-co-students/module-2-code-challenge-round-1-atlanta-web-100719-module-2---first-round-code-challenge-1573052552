class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def new
  end

  def create
  end

  def show
    @power = Power.all.find_by(id: params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
