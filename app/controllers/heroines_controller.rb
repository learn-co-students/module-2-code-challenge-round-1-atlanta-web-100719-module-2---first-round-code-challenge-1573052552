class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def new
    @heroine = Heroine.new
  end

  def create
    filtered_params = params.require(:heroine).permit(:name, :super_name, :power_id)
    @heroine = Heroine.create(filtered_params)
    redirect_to heroines_path(@heroine)
  end

  def show
    @heroine = Heroine.find_by(id: params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  # def good_params
  #   filtered_params = params.require(:heroine).permit(:name, :super_name)
  # end
end
