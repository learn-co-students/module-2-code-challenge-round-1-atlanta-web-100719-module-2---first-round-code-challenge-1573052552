class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all

    def new
      @heroine = Heroine.new
    end

    def create
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
  end
end
