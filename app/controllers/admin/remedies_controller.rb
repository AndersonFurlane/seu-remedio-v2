class Admin::RemediesController < Admin::AdminController
  def autocomplete
    render json: Remedy.by_name(params[:term]).pluck(:name)
  end
end