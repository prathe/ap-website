class CollectionsController < ApplicationController
  def index
  end
  
  def show
    @collection = params[:name]
    @title = t("collections.index.#{params[:name]}")
  end
end
