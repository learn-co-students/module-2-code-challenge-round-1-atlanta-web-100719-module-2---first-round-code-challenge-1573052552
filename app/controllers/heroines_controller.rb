class HeroinesController < ApplicationController
  before_action :find_heroine, only: [:show, :edit, :delete, :update]

  def index
    @heroines = Heroine.all
  end

  def show
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(heroine_params)

    if @heroine.valid?
      @heroine.save
      redirect_to heroines_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @heroine.update(heroine_params)
      redirect_to heroine_path(@heroine)
    else
      render :edit
    end
  end

  def destroy
    @heroine.destroy
  end

  def find_heroine
    @heroine = Heroine.find(params[:id])
  end

  def heroine_params
    params.require(:heroine).permit(:super_name, :power_id)
  end
end
