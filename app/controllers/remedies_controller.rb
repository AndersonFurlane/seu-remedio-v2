class RemediesController < ApplicationController
  
  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  private
    def remedy_params
      params.require(:remedies).permit(:all)
    end
end
