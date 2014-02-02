class UserRemediesController < ApplicationController
  
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
    def user_remedies_params
      params.require(:user_remedies).permit(:all)
    end
end
