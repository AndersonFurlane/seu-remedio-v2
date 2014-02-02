class DependentsController < ApplicationController
  
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
    def dependents_params
      params.require(:dependents).permit(:all)
    end
end