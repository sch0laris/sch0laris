class TagsController < ApplicationController
  
  def index
    @tags = Tag.order(:description)
    respond_to do |format|
      format.html
      format.json { render json: @tags.tokens(params[:q]) }
    end
  end
  
end